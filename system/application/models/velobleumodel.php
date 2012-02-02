<?php
class velobleumodel extends Model 
{
	public $Stations;
	public $lastSync;
	
	private $CI;
	
	private $timeToRefresh = 120; // minutes
	
    function velobleumodel()
    {
        parent::Model();
		
		$this->CI =& get_instance();
		$this->CI->load->model('synchronisation','',true);
		$this->CI->load->model('station','',true);
		$this->CI->load->library('velobleudatasync');
		
		$SynchronisationReussie = false;
		
		// Recupere la date de dernière synchronisation
		//$this->load->model('Synchronisation');
		$lastSync = $this->CI->synchronisation->getLast();

		// Verifie l'ancienneté des données et les met à jour si necessaire (superieur à 5 min)
		if($lastSync === false || $this->getMinutesBetweenTimestampAndNow($lastSync->Date) > $this->timeToRefresh)
		{
			
			$dataArray = $this->CI->velobleudatasync->loadJsonDataFromWebsite();
			if($dataArray !== false)
			{
				//$this->load->model('Station');
				$this->Stations = $this->CI->station->loadStationsFromJsonArray($dataArray);
				
				$SynchronisationReussie = true;
				$this->saveStations();
			}
		}
		
		// Charge toutes les stations de la base de données
		$this->Stations = $this->CI->station->getAll();
		
		$this->CI->synchronisation->setSynchronisation($SynchronisationReussie, $this->CI->velobleudatasync->jsonDataLength);
		$this->CI->synchronisation->save();
		$this->lastSync = $this->CI->synchronisation->getLast();
    }

	function saveStations()
	{
		if(count($this->Stations) > 0)
		{
			foreach($this->Stations as $station)
			{
				$station->save();
			}
		}
	}
	
	function stationsModelToArray()
	{
		$listeStation = array();

		if(count($this->Stations) > 0)
		{
			foreach($this->Stations as $station)
			{	
				$listeStation[] = array(array(
					'IdStation' => array($station->IdStation, 'int'),
					'Communication' => array($station->Communication, 'string'),
					'EmplacamentTotal' => array($station->EmplacamentTotal, 'int'),
					'EmplacementLibre' => array($station->EmplacementLibre, 'int'),
					'VelosDisponibles' => array($station->VelosDisponibles, 'int'),
					'Latitude' => array($station->Latitude, 'double'),
					'Longitude' => array($station->Longitude, 'double'),
					'Nom' => array($station->Nom, 'string'),
					'EstAfficher' => array($station->EstAfficher, 'boolean'),
					'PhotoStation' => array(base64_encode($station->PhotoStation), 'base64')
				), 'struct');
			}
		}
		
		return $listeStation;
	}
	
	function lastSyncModelToArray()
	{
		$lastSync = array(
				'IdSynchronisation' => array($this->lastSync->IdSynchronisation, 'int'),
				'Date' => array(/*date('Ymd\TH:i:s',*/ $this->lastSync->Date/*)*/, 'int'/*'dateTime.iso8601'*/),
				'TailleDonnees' => array($this->lastSync->TailleDonnees, 'double'),
				'Etat' => array($this->lastSync->Etat, 'boolean')
				);
				
		return $lastSync;
	}
	
	private function getMinutesBetweenTimestampAndNow($timestamp)
	{
		$time = time() - $timestamp;
		$minutes = floor($time / 60);

		return $minutes;
	}
}