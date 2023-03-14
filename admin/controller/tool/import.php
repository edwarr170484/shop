<?php
class ControllerToolImport extends Controller {
	public function index() {
        $this->load->language('tool/import');

        $this->document->setTitle($this->language->get('heading_title'));

        $data['heading_title'] = $this->language->get('heading_title');

        $data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('tool/import', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['user_token'] = $this->session->data['user_token'];

		$data['import'] = $this->url->link('tool/import/import', 'user_token=' . $this->session->data['user_token'], true);
        $data['button_import'] = $this->language->get('button_import');
        $data['title_result'] = $this->language->get('title_result');

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('tool/import', $data));
    }

    public function import(){
        ini_set('soap.wsdl_cache_enabled', 0 );
        ini_set('soap.wsdl_cache_ttl', 0); 

        $this->load->model('tool/import');
        
        $rp_soap_endpoint = $this->config->get('config_endpoint');
        
        $client_params = [
                'login' => $this->config->get('config_1clogin'), 
                'password' => $this->config->get('config_1cpassword'),
                'soap_version' => SOAP_1_2,
                'compression' => SOAP_COMPRESSION_ACCEPT | SOAP_COMPRESSION_GZIP,
                'encoding' => 'UTF-8',
                'trace' => 1,
                'exceptions' => true,
                'cache_wsdl' => WSDL_CACHE_NONE,
                'features' => SOAP_SINGLE_ELEMENT_ARRAYS,
                "stream_context"         => stream_context_create(
                    [
                        'ssl' => [
                            'verify_peer'      => false,
                            'verify_peer_name' => false,
                        ]
                    ]
                )
        ];
        
        $client = new SoapClient($rp_soap_endpoint, $client_params);
        
        $this->load->model('localisation/language');
		$data['language'] = $this->model_localisation_language->getLanguageByCode($this->config->get('config_language'));

        $statistics = [
            'newCategories' => 0,
            'updatedCategories' => 0,
            'defaultLanguage' => $data['language']
        ];

        /* Categories Import Start */
        $result = $client->GetProductGroup();
        $incomingCategories = json_decode($result->return, true);

        if(count($incomingCategories) > 0){
            $existingCategories = $this->model_tool_import->getCategories();

            $rootCategories = array_filter($incomingCategories, function($category){
                return $category['idParent'] === '';
            });

            $childCategories = array_filter($incomingCategories, function($category){
                return $category['idParent'] !== '';
            });

            if(count($rootCategories) > 0){
                foreach($rootCategories as $category){
                    $category['idParent'] = 0;
                    $this->processCategory($existingCategories, $category, $statistics);
                }
            }

            if(count($childCategories) > 0){
                while(1){
                    $delayCategories = [];

                    foreach($childCategories as $category){
                        $parentCategory = $this->model_tool_import->getCategoryByImportId($category['idParent']);
                        if($parentCategory){
                            $category['idParent'] = $parentCategory['category_id'];
                            $this->processCategory($existingCategories, $category, $statistics);
                        }else{
                            array_push($delayCategories, $category);
                        }
                    }

                    if(count($delayCategories) > 0){
                        $childCategories = $delayCategories;
                    }else{
                        break;
                    }
                }
                
            }
        }

        /* Categories Import End */

        /* Products Import Start */
        $result = $client->GetProduct();
        $incomingProducts = json_decode($result->return, true);

        if(count($incomingProducts) > 0){

        }

        /* Products Import End */

        $this->response->setOutput("Добавлено категорий: {$statistics['newCategories']}.\r\nОбновлено категорий: {$statistics['updatedCategories']}.\r\n");
    }

    private function processCategory($categories, $category, &$statistics){
        $data = [
            'category_description' => [
                $statistics['defaultLanguage']['language_id'] => [
                    'name' => $category['name'],
                    'description' => $category['name'],
                    'meta_title' => $category['name'],
                    'meta_description' => $category['name'],
                    'meta_keyword' => ''
                ]
            ],
            'path' => '',
            'parent_id' => $category['idParent'],
            'top' => 0,
            'column' => 1,
            'sort_order' => 1,
            'status' => 1,
            'import_id' => $category['id'],
            'category_store' => [
                0
            ]
        ];

        $existingCategory = $this->inArray($categories, $category);

        if($existingCategory)
        {
            $this->model_tool_import->editCategory($existingCategory['category_id'], $data);
            $statistics['updatedCategories']++;
        }
        else
        {   
            $this->model_tool_import->addCategory($data);
            $statistics['newCategories']++;
        }
    }

    private function inArray($array, $item){
        if(count($array) > 0){
            foreach($array as $value){
                if($value['import_id'] == $item['id']){
                    return $value;
                }
            }
        }

        return null;
    }
}