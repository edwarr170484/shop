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
            'uploadedImages' => 0,
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

        /* Options import start */
        if(count($incomingProducts) > 0)
        {
            $existingOptions = $this->model_tool_import->getOptionValues(14);
            $sortorder = count($existingOptions) + 1;

            foreach($incomingProducts as $product)
            {
                $exists = false;

                if($product["options"])
                {
                    foreach($product["options"] as $option)
                    {
                        $tmp = [
                            "option_value_id" => "",
                            "name" => trim($option["colorNameForSite"]),
                            "image" => "",
                            "sort_order" => $sortorder
                        ];

                        if($tmp["name"] && !$this->inOptionsArray($existingOptions, $tmp))
                        {
                            array_push($existingOptions, $tmp);
                            $sortorder++;
                        }
                    }
                }
            }

            $optionValues = [];

            if($existingOptions)
            {
                foreach($existingOptions as $option)
                {
                    $optionValues[] = [
                        "option_value_id" => $option["option_value_id"],
                        "option_value_description" => [
                            $statistics['defaultLanguage']['language_id'] => [
                                "name" => $option["name"]
                            ]
                        ],
                        "image" => $option["image"],
                        "sort_order" => $option["sort_order"] 
                    ];
                }
            }

            $optionData = [
                "option_description" => [
                    $statistics['defaultLanguage']['language_id'] => [
                        "name" => "Цвет"
                    ]
                ],
                "type" => "radio",
                "sort_order" => 2,
                "option_value" => $optionValues
            ];

            $this->model_tool_import->editOption(14, $optionData);
        }
        /* Options import end */

        $result = $client->GetAmountProduct();
        $incomingAmounts = json_decode($result->return, true);
        $options = $this->model_tool_import->getOptionValues(14);

        //$this->response->setOutput(var_dump($incomingProducts));

        if(count($incomingProducts) > 0)
        {
            $existingCategories = $this->model_tool_import->getCategories();
            $existingProducts = $this->model_tool_import->getProducts();
            $processedProducts = [];

            if($existingProducts)
            {
                foreach ($existingProducts as $existingProduct) {
                    $this->model_tool_import->deleteProduct($existingProduct["product_id"]);
                }
            }

            $existingProducts = [];
            
            foreach($incomingProducts as $product)
            {
                $product["id"] = $product["code"];

                $amount = array_filter($incomingAmounts, function($amount) use ($product){
                    return ($amount["code"] == $product["code"]);
                });

                $product["quantity"] = (float)array_reduce($amount, function($count, $item){
                    $num = preg_replace('/[^0-9\,]/', '', $item["amount"]);
                    $num = preg_replace('/,/', '.', $num);
                    
                    return $count += (float)$num;
                }, 0);

                $sameProducts = array_filter($incomingProducts, function($item) use ($product)
                {
                    return $item["vendorCode"] == $product["vendorCode"];
                });

                $props = [];
                $opts = [];

                if($sameProducts)
                {
                    foreach($sameProducts as $same)
                    {
                        
                        if($same["properties"])
                        {
                            foreach($same["properties"] as $property)
                            {
                                array_push($props, $property);
                            }
                        }

                        if($same["options"])
                        {
                            foreach($same["options"] as $option)
                            {
                                array_push($opts, $option);
                            }
                        }
                    }

                    $product["properties"] = $props;
                    $product["options"] = $opts;
                }

                /*if(count($product["options"]) > 0)
                {
                    $i = 0;

                    foreach($product["options"] as $productOption)
                    {
                        $amount = array_filter($incomingAmounts, function($amount) use ($productOption, $product){
                            return ($amount["code"] == $product["code"]) && (trim(strtolower($amount["сharacteristics"])) == trim(strtolower($productOption["colorNameForSite"])));
                        });

                        $optionValue = array_filter($options, function($option) use ($productOption){
                           return trim(strtolower($option["name"])) == trim(strtolower($productOption["colorNameForSite"]));
                        });

                        if($amount)
                        {
                            [$code, $name, $сharacteristics, $quantity] = $amount;

                            $num = preg_replace('/\s/', '', $quantity);
                            $num = preg_replace('/\,/', '.', $num);

                            $product["options"][$i]["quantity"] = (float)$num;
                        }

                        if($optionValue)
                        {
                            [$id, $name, $image, $sort] = $optionValue;

                            $product["options"][$i]["option_value_id"] = $id;
                        }

                        $i++;
                    }
                }*/

                $existingCategory = $this->inArray($existingCategories, ["id" => $product["id_Parent"]]);
                $product["id_Parent"] = $existingCategory ? $existingCategory["category_id"] : 0;

                if(!in_array($product["code"], $processedProducts))
                {
                    $this->processProduct($existingProducts, $product, $statistics);
                    array_push($processedProducts, $product["code"]);
                }
            }
        }
        /* Products Import End */

        $this->response->setOutput("Добавлено категорий: {$statistics['newCategories']}.<br/>
                                    Обновлено категорий: {$statistics['updatedCategories']}.<br/>
                                    Обновлено товаров: {$statistics['newProducts']}.<br/>
                                    Перемещено изображений: {$statistics['uploadedImages']}.<br/>
                                    Добавлено характеристик: {$statistics['newAttributes']}<br/>
                                    Обновлено характеристик: {$statistics['updatedAttributes']}");
    }

    private function processCategory($categories, $category, &$statistics){
        $data = [
            'category_description' => [
                $statistics['defaultLanguage']['language_id'] => [
                    'name' => $category['name'],
                    'description' => '',
                    'meta_title' => $category['name'],
                    'meta_description' => $category['name'],
                    'meta_keyword' => ''
                ]
            ],
            'path' => '',
            'parent_id' => $category['idParent'],
            'top' => 0,
            'column' => 1,
            'sort_order' => $category["sorting"],
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

                /* save image to catalog/products */
                try
                {
                    $imageContent = file_get_contents($this->config->get('config_1cimages') . $image);

                    if($imageContent !== false)
                    {
                        $images[] = [
                            'image' => 'catalog/products/' . $image,
                            'sort_order' => $i
                        ];

                        $i++;
                        
                        file_put_contents(DIR_IMAGE . 'catalog/products/' . $image, $imageContent);
                        $statistics['uploadedImages']++;
                    }
                }
                catch(\Throwable $e)
                {
                    continue;
                }
            }
        }

        $attributes = $this->model_tool_import->getAttributes();
        $options = $this->model_tool_import->getOptionValues(14);

        $productAttributes = [];
        $productOptions = [];
        
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

        /*if($product["options"])
        {
            foreach($product["options"] as $option)
            {
                $productOptions[] = [
                        'option_value_id' => $option["option_value_id"],
                        'product_option_value_id' => '',
                        'quantity' => $option["quantity"],
                        'subtract' => 1,
                        'price_prefix' => '',
                        'price' => '',
                        'points_prefix' => '',
                        'points' => 0,
                        'weight_prefix' => '',
                        'weight' => 0
                    ];
            }
        }*/
        
        $price = preg_replace('/[^0-9\,]/', '', $product['priceWithVAT']);
        $price = preg_replace('/,/', '.', $price);

        $data = [
            'product_description' => [
                $statistics['defaultLanguage']['language_id'] => [
                    'name' => $product['nameForSite'],
                    'description' => $product['description'],
                    'meta_title' => $product['nameForSite'],
                    'meta_description' => '',
                    'meta_keyword' => '',
                    'tag' => ''
                ],
            ],
            'model' => $product["vendorCode"],
            'sku' => '',
            'upc' => '',
            'ean' => '',
            'jan' => $product["ColorMap"],
            'isbn' => $product["measureUnitProduct"],
            'mpn' => $product["forOrderOnly"],
            'location' => '',
            'price' => (float)$price,
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
            'product_option' => $productOptions ? [
                0 => [
                    'name' => 'Цвет',
                    'option_id' => 14,
                    'type' => 'radio',
                    'required' => 1,
                    'product_option_value' => $productOptions
                ]
            ] : 0,*/
            'image' => $product['addressImages'] ? 'catalog/products/' . $product['addressImages'][0] : '',
            'product_image' => $images,
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
                if($value['import_id'] == $item['id'] && $value['model'] == $item['vendorCode'])
                {
                    return $value;
                }
            }
        }

        return null;
    }

    private function inOptionsArray($array, $item)
    {
        if(count($array) > 0)
        {
            foreach($array as $value)
            {

                if($item["name"] && stristr(strtolower($value["name"]), strtolower($item["name"])))
                {
                    return true;
                }
            }
        }

        return null;
    }
}