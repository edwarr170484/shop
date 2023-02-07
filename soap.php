<?php
ini_set('soap.wsdl_cache_enabled', 0 );
ini_set('soap.wsdl_cache_ttl', 0); 
 
$rp_soap_endpoint = "http://93.84.103.182:8080/WebTest/ws/ExchangeWithSite?wsdl";
 
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

var_dump($client->__getFunctions());
var_dump($client->__getTypes()); 
var_dump($client->GetProduct([])); 