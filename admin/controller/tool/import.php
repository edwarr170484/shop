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
        
        $rp_soap_endpoint = $this->config->get('config_endpoint');
        
        $client_params = [
                'login' => "Administrator", 
                'password' => "",
                'soap_version' => SOAP_1_2,
                'compression' => SOAP_COMPRESSION_ACCEPT | SOAP_COMPRESSION_GZIP,
                'encoding' => 'UTF-8',
                'trace' => 1,
                'exceptions' => true,
                'cache_wsdl' => WSDL_CACHE_NONE,
                'features' => SOAP_SINGLE_ELEMENT_ARRAYS
        ];
        
        $client = new SoapClient($rp_soap_endpoint, $client_params);

        $result = $client->GetProduct([]);

        $products = json_decode($result->return);

        /*$this->load->model('catalog/product');
        $this->model_catalog_product->addProduct($this->request->post);*/

        $result = '';

        if(count($products) > 0){
            foreach($products as $product){
                $result .= '<b>Code: </b><?php echo $product->code;?><br/>
                        <b>Name: </b><?php echo $product->name;?><br/>
                        <b>FullName: </b><?php echo $product->fullName;?><br/>
                        <b></b>';
            }
        }

        $this->response->setOutput($result);
    }
}