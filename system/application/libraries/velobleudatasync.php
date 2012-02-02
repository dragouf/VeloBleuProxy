<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class velobleudataSync 
{
	private $CI;
	
	private $mapDb;
	private $networks;
	private $mapDbKey;
	private $jsonUrl;
	
	private $veloBleuDbData;
	public $jsonDataLength;

    function velobleudataSync()
    {   
		$this->CI =& get_instance();
		$this->CI->config->load('velobleuconf');
		$this->CI->load->helper('http');
    }

    function findKeyAndUriFromVeloWebsite()
    {
		// Charge le contenu de la page velo bleu
		$urlBase = $this->CI->config->item('UrlBase', 'velobleuconf');
		$urlCarte = $this->CI->config->item('UrlCarteVeloBleu', 'velobleuconf');
		
        $pageHTML = @file_get_contents($urlBase . $urlCarte);
		
		if(isset($http_response_header) && isValidHttpRequest($pageHTML, $http_response_header))
		{
			// Trouve la variable mapdb et prend ce qui est contenu entre quotes pour connaitre son contenu
			$posMapDb = strpos($pageHTML, 'var mapdb');
			$posQote1MapDb = strpos($pageHTML, "'", $posMapDb) + 1;
			$posQote2MapDb = strpos($pageHTML, "'", $posQote1MapDb);
			$varMapDb = substr($pageHTML, $posQote1MapDb, $posQote2MapDb - $posQote1MapDb);
			log_message('debug', 'found mapdb : ' . $varMapDb);
			$this->mapDb = $varMapDb;

			// Idem pour var networks
			$posNetworks = strpos($pageHTML, 'var networks');
			$posQote1Networks = strpos($pageHTML, '"', $posNetworks) + 1;
			$posQote2Networks = strpos($pageHTML, '"', $posQote1Networks);
			$varNetworks = strtolower(substr($pageHTML, $posQote1Networks, $posQote2Networks - $posQote1Networks));
			log_message('debug', 'found networks : ' . $varNetworks);
			$this->networks = $varNetworks;

			// Idem pour  var mapdbkey
			$posMapdDbKey = strpos($pageHTML, 'var mapdbkey');
			$posQote1MapDbKey = strpos($pageHTML, "'", $posMapdDbKey) + 1;
			$posQote2MapDbKey = strpos($pageHTML, "'", $posQote1MapDbKey);
			$varMapDbKey = substr($pageHTML, $posQote1MapDbKey, $posQote2MapDbKey - $posQote1MapDbKey);
			log_message('debug', 'found mapdbkey : ' . $varMapDbKey);
			$this->mapDbKey = $varMapDbKey;

			$this->jsonUrl = $this->getJsonUrl();
			log_message('debug', 'found jsonUrl : ' . $this->jsonUrl);
		}
		else
		{
			$httpError = "Aucune information";
			if(isset($http_response_header))
				$httpError = getHttpError($http_response_header);
				
			log_message('error', 'Chargement des données contenant la clé impossible : ' . $httpError);
		}

    }

	function getJsonUrl()
	{
		// exemple : 'http://www.velobleu.org/oybike/stands.nsf/getSite?openagent&site=nice&format=json&key=D659E7E9D3BB9010307D6835FD4CE8B8'
		$urlBase = $this->CI->config->item('UrlBase', 'velobleuconf');
		$url = $urlBase . $this->mapDb . '/getSite?openagent&site=' . $this->networks . '&format=json&key=' . $this->mapDbKey;
		
		return $url;
	}

	function loadJsonDataFromWebsite()
    {
		$this->veloBleuDbData = false;
	
		$this->findKeyAndUriFromVeloWebsite();
		$jsonText = @file_get_contents($this->jsonUrl);

		if(isset($http_response_header) && isValidHttpRequest($jsonText, $http_response_header))
		{
			log_message('debug', 'received jsonText...');
			$this->veloBleuDbData = json_decode($jsonText);
			$this->jsonDataLength = strlen($jsonText);
		}
		else
		{
			$httpError = "Aucune information";
			if(isset($http_response_header))
				$httpError = getHttpError($http_response_header);
				
			log_message('error', 'Chargement des données json impossible : ' . $httpError);
		}
		
		return $this->veloBleuDbData;
	}
}

?>