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
            'newProducts' => 0,
            'updatedProducts' => 0,
            'newAttributes' => 0,
            'updatedAttributes' => 0,
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

        /* Attributes Import Start */
        $result = $client->GetProperties();
        $incomingAttributes = json_decode($result->return, true);

        if(count($incomingAttributes) > 0)
        {
            $existingAttributes = $this->model_tool_import->getAttributes();

            foreach($incomingAttributes as $attribute)
            {
                $this->processAttribute($existingAttributes, $attribute, $statistics);
            }
        }
        /* Attributes Import End */

        /* Products Import Start */
        $result = $client->GetProduct();
        $incomingProducts = json_decode($result->return, true);

        $result = $client->GetAmountProduct();
        $incomingAmounts = json_decode($result->return, true);

        if(count($incomingProducts) > 0)
        {
            $existingProducts = $this->model_tool_import->getProducts();
            $existingCategories = $this->model_tool_import->getCategories();

            foreach($incomingProducts as $product)
            {
                $product["id"] = $product["code"];

                $amount = array_filter($incomingAmounts, function($amount) use ($product){
                    return ($amount["code"] == $product["code"]) && ($amount["сharacteristics"] == $product["nameCharacteristic"]);
                });

                $product["quantity"] = array_reduce($amount, function($count, $item){return $count += $item["amount"];}, 0);

                $existingCategory = $this->inArray($existingCategories, ["id" => $product["id_Parent"]]);
                $product["id_Parent"] = $existingCategory ? $existingCategory["category_id"] : 0;

                $this->processProduct($existingProducts, $product, $statistics);
            }
        }
        /* Products Import End */

        $this->response->setOutput("Добавлено категорий: {$statistics['newCategories']}.<br/>
                                    Обновлено категорий: {$statistics['updatedCategories']}.<br/>
                                    Добавлено товаров: {$statistics['newProducts']}.<br/>
                                    Обновлено товаров: {$statistics['updatedProducts']}.<br/>
                                    Добавлено характеристик: {$statistics['newAttributes']}<br/>
                                    Обновлено характеристик: {$statistics['updatedAttributes']}");
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

    private function processAttribute($attributes, $attribute, &$statistics)
    {
        $data = [
            'attribute_description' => [
                $statistics['defaultLanguage']['language_id'] => [
                    'name' => $attribute['name']
                ]
            ],
            'attribute_group_id' => '7',
            'sort_order' => 1,
            'import_id' => $attribute['id']
        ];

        $existingAttribute = $this->inArray($attributes, $attribute);

        if($existingAttribute)
        {
            $this->model_tool_import->editAttribute($existingAttribute['attribute_id'], $data);
            $statistics['updatedAttributes']++;
        }
        else
        {   
            $this->model_tool_import->addAttribute($data);
            $statistics['newAttributes']++;
        }
    }

    private function processProduct($products, $product, &$statistics)
    {
        $today = new \DateTime("now");
        $images = [];

        if($product['addressImages'])
        {
            $i = 1;
            foreach($product['addressImages'] as $image){
                $images[] = [
                    'image' => $image,
                    'sort_order' => $i
                ];

                $i++;
            }
        }

        $attributes = $this->model_tool_import->getAttributes();
        $productAttributes = [];
        
        if($product["properties"])
        {
            foreach($product["properties"] as $attribute)
            {
                $existingAttribute = $this->inArray($attributes, ["id" => $attribute["idProperties"]]);
                
                if($existingAttribute)
                {
                    $productAttributes[] = [
                        'name' => $attribute["nameProperties"],
                        'attribute_id' => $existingAttribute["attribute_id"],
                        'product_attribute_description' => [
                            $statistics['defaultLanguage']['language_id'] => [
                                'text' => "{$attribute["value"]} {$attribute["measure"]}" 
                            ]
                        ]
                    ];
                }
            }
        }

        $data = [
            'product_description' => [
                $statistics['defaultLanguage']['language_id'] => [
                    'name' => $product['name'],
                    'description' => $product['nameFull'],
                    'meta_title' => $product['name'],
                    'meta_description' => '',
                    'meta_keyword' => '',
                    'tag' => ''
                ],
            ],
            'model' => $product["vendorCode"],
            'sku' => '',
            'upc' => '',
            'ean' => '',
            'jan' => '',
            'isbn' => '',
            'mpn' => '',
            'location' => '',
            'price' => (float)preg_replace('/\,/', '.', $product['priceWithVAT']),
            'tax_class_id' => 9,
            'quantity' => $product["quantity"],
            'minimum' => 1,
            'subtract' => 1,
            'stock_status_id' => 5,
            'shipping' => 1,
            'date_available' => $today->format("Y-m-d"),
            'length' => 0,
            'width' =>  0,
            'height' => 0,
            'length_class_id' => 1,
            'weight' => 0,
            'weight_class_id' => 1,
            'status' => 1,
            'sort_order' => 0,
            'manufacturer' => '',
            'manufacturer_id' => 0,
            'category' => $product["name_Parent"], 
            'product_category' => [
                $product["id_Parent"]
            ], 
            'product_store' => [
                0
            ],
            'product_attribute' => $productAttributes,
            /*'option' => '',
            'product_option' => [
                0 => [
                    'product_option_id' => 217,
                    'name' => 'Select',
                    'option_id' => 5,
                    'type' => 'select',
                    'required' => 1,
                    'product_option_value' => [
                        0 => [
                            'option_value_id' => 39,
                            'product_option_value_id' => 4,
                            'quantity' => 90,
                            'subtract' => 1,
                            'price_prefix' => '',
                            'price' => '',
                            'points_prefix' => '',
                            'points' => 0,
                            'weight_prefix' => '',
                            'weight' => 0
                        ]
                    ]
                ]
            ],*/
            /*'image' => $product['addressImages'] ? $product['addressImages'][0] : '',
            'product_image' => $images,*/
            'points' => 0,
            'import_id' => $product["code"] 
        ];

        $existingProduct = $this->inProductArray($products, $product);

        if($existingProduct)
        {
            $this->model_tool_import->editProduct($existingProduct['product_id'], $data);
            $statistics['updatedProducts']++;
        }
        else
        {   
            $this->model_tool_import->addProduct($data);
            $statistics['newProducts']++;
        }
    }

    private function inArray($array, $item)
    {
        if(count($array) > 0)
        {
            foreach($array as $value)
            {
                if($value['import_id'] == $item['id'])
                {
                    return $value;
                }
            }
        }

        return null;
    }

    private function inProductArray($array, $item)
    {
        if(count($array) > 0)
        {
            foreach($array as $value)
            {
                if($value['import_id'] == $item['id'] && $value['model'] == $item['nameCharacteristic'])
                {
                    return $value;
                }
            }
        }

        return null;
    }
}