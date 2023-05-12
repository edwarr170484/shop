<?php
class ControllerCheckoutSuccess extends Controller {
	public function index() {
		$this->load->language('checkout/success');

		if (isset($this->session->data['order_id'])) {
			//sending new order data to 1C database
			$this->sendOrder($this->session->data['order_id']);

			$this->cart->clear();

			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
			unset($this->session->data['payment_method']);
			unset($this->session->data['payment_methods']);
			unset($this->session->data['guest']);
			unset($this->session->data['comment']);
			unset($this->session->data['order_id']);
			unset($this->session->data['coupon']);
			unset($this->session->data['reward']);
			unset($this->session->data['voucher']);
			unset($this->session->data['vouchers']);
			unset($this->session->data['totals']);
		}

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_basket'),
			'href' => $this->url->link('checkout/cart')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_checkout'),
			'href' => $this->url->link('checkout/checkout', '', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_success'),
			'href' => $this->url->link('checkout/success')
		);

		if ($this->customer->isLogged()) {
			$data['text_message'] = sprintf($this->language->get('text_customer'), $this->url->link('account/account', '', true), $this->url->link('account/order', '', true), $this->url->link('account/download', '', true), $this->url->link('information/contact'));
		} else {
			$data['text_message'] = sprintf($this->language->get('text_guest'), $this->url->link('information/contact'));
		}

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/success', $data));
	}

	protected function sendOrder($orderId)
	{
		ini_set('soap.wsdl_cache_enabled', 0 );
        ini_set('soap.wsdl_cache_ttl', 0); 

		$this->load->model('checkout/order');
		$this->load->model('catalog/product');

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

		$order_info = $this->model_checkout_order->getOrder($orderId);
		$orderProducts = $this->model_checkout_order->getOrderProducts($orderId);

		$lastname = explode(",", $order_info['lastname']);
		$unpParts = explode(":", $lastname[count($lastname) - 1]);

		$unp = trim($unpParts[count($unpParts) - 1]);
        
		$order = [
			"order_info" => [
				"order_id" => $order_info['order_id'],
				"invoice_no" => $order_info['invoice_no'],
				"invoice_prefix"=> $order_info['invoice_prefix'],
				"store_id" => $order_info['store_id'],
				"store_name"=> $order_info['store_name'],
				"store_url" => $order_info['store_url'],
				"customer_id" => $order_info['customer_id'],
				"customer" => "",
				"customer_group_id" => "",
				"firstname" => $order_info['firstname'],
				"lastname" => $order_info['lastname'],
				"email" => $order_info['email'],
				"telephone"=> $order_info['telephone'],
				"custom_field" => ['custom_field'],
				"payment_firstname" => $order_info['payment_firstname'],
				"payment_lastname"=> $order_info['payment_lastname'],
				"payment_company" => $order_info['payment_company'],
				"payment_address_1" => $order_info['payment_address_1'],
				"payment_address_2" => $order_info['payment_address_2'],
				"payment_postcode" => $order_info['payment_postcode'],
				"payment_city" => $order_info['payment_city'],
				"payment_zone_id" => $order_info['payment_zone_id'],
				"payment_zone" => $order_info['payment_zone'],
				"payment_zone_code" => $order_info['payment_zone_code'],
				"payment_country_id" => $order_info['payment_country_id'],
				"payment_country" => $order_info['payment_country'],
				"payment_iso_code_2" => $order_info['payment_iso_code_2'],
				"payment_iso_code_3" => $order_info['payment_iso_code_3'],
				"payment_address_format" => $order_info['payment_address_format'],
				"payment_custom_field" => $order_info['payment_custom_field'],
				"payment_method" => $order_info['payment_method'],
				"payment_code" => $order_info['payment_code'],
				"shipping_firstname" => $order_info['shipping_firstname'],
				"shipping_lastname" => $order_info['shipping_lastname'],
				"shipping_company" => $order_info['shipping_company'],
				"shipping_address_1" => $order_info['shipping_address_1'],
				"shipping_address_2" => $order_info['shipping_address_2'],
				"shipping_postcode" => $order_info['shipping_postcode'],
				"shipping_city" => $order_info['shipping_city'],
				"shipping_zone_id" => $order_info['shipping_zone_id'],
				"shipping_zone" => $order_info['shipping_zone'],
				"shipping_zone_code" => $order_info['shipping_zone_code'],
				"shipping_country_id" => $order_info['shipping_country_id'],
				"shipping_country" => $order_info['shipping_country'],
				"shipping_iso_code_2" => $order_info['shipping_iso_code_2'],
				"shipping_iso_code_3" => $order_info['shipping_iso_code_3'],
				"shipping_address_format" => $order_info['shipping_address_format'],
				"shipping_custom_field" => $order_info['shipping_custom_field'],
				"shipping_method" => $order_info['shipping_method'],
				"shipping_code" => $order_info['shipping_code'],
				"comment" => $order_info['comment'],
				"total" => $order_info['total'],
				"reward" => 0,
				"order_status_id" => $order_info['order_status_id'],
				"order_status" => $order_info['order_status'],
				"affiliate_id" => $order_info['affiliate_id'],
				"affiliate_firstname" => "",
				"affiliate_lastname" => "",
				"commission" => $order_info['commission'],
				"language_id" => $order_info['language_id'],
				"language_code" => $order_info['language_code'],
				"currency_id" => $order_info['currency_id'],
				"currency_code" => $order_info['currency_code' ],
				"currency_value" => $order_info['currency_value'],
				"ip" => $order_info['ip'],
				"forwarded_ip" => $order_info['forwarded_ip'],
				"user_agent" => $order_info['user_agent'],
				"accept_language" => $order_info['accept_language'],
				"date_added" => $order_info['date_added'],
				"date_modified" => $order_info['date_modified'],
				"unp_id" => $unp
			],
			"products" => []
		];

		$reward = 0;

		foreach ($orderProducts as $product) {
			$productInfo = $this->model_catalog_product->getProduct($product['product_id']);

			$order['products'][] = [
				"order_product_id" => $product['order_product_id'],
				"order_id" => $product['order_id'],
				"product_id" => $productInfo['import_id'],
				"name" => $product['name'],
				"model" => $productInfo['sku'],
				"quantity" => $product['quantity'],
				"price" => $product['price'],
				"total" => $product['total'],
				"tax" => $product['tax'],
				"reward" => $product['reward']
			];

			$order["order_info"]["reward"] += $product['reward'];
		}

        $client = new SoapClient($rp_soap_endpoint, $client_params);

		try{
			$order["InputString"] = json_encode($order, JSON_UNESCAPED_UNICODE);
			$result = $client->SetBuyerOrder($order);
		}
		catch(\Throwable $e)
		{
			var_dump($e);
		}
	}
}