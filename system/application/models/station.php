<?php
class station extends Model 
{
	public $IdStation;
	public $Communication;
	public $EmplacamentTotal;
	public $EmplacementLibre;
	public $VelosDisponibles;
	public $Latitude;
	public $Longitude;
	public $Nom;
	public $EstAfficher;
	public $PhotoStation;
	
	public $Commentaires = array();
	
    function station()
    {
        parent::Model();
    }
	
	function loadStationsFromJsonArray($jsonArray)
	{
		$listStation = array();

		foreach($jsonArray->site->stands as $stationArray)
		{
			$station = new station();
			
			$station->IdStation = $stationArray->id;
			$station->Communication = $stationArray->wcom;
			$station->EmplacamentTotal = $stationArray->ac;
			$station->EmplacementLibre = $stationArray->ap;
			$station->VelosDisponibles = $stationArray->ab;
			$station->Latitude = $stationArray->lat;
			$station->Longitude = $stationArray->lng;
			$station->Nom = $stationArray->name;
			$station->EstAfficher = $stationArray->disp;
			
			$listStation[] = $station;
		}
		
		return $listStation;
	}
	
	function getAll()
	{
		$listStation = array();
		
		$query = $this->db->get('Stations');
		
		if ($query->num_rows() > 0)
		{
			foreach ($query->result() as $row)
			{
				$station = new station();

				$station->IdStation = $row->IdStation;
				$station->Communication = $row->Communication;
				$station->EmplacamentTotal = $row->EmplacamentTotal;
				$station->EmplacementLibre = $row->EmplacementLibre;
				$station->VelosDisponibles = $row->VelosDisponibles;
				$station->Latitude = $row->Latitude;
				$station->Longitude = $row->Longitude;
				$station->Nom = $row->Nom;
				$station->EstAfficher = $row->EstAfficher;
				$station->PhotoStation = $row->PhotoStation;
				
				$listStation[] = $station;
			}
		}
		
		return $listStation;
	}
	
	function save()
	{
		$data = array(
			'IdStation' => $this->IdStation,
			'Communication' => $this->Communication,
			'EmplacamentTotal' => $this->EmplacamentTotal,
			'EmplacementLibre' => $this->EmplacementLibre,
			'VelosDisponibles' => $this->VelosDisponibles,
			'Latitude' => $this->Latitude,
			'Longitude' => $this->Longitude,
			'Nom' => $this->Nom,
			'EstAfficher' => $this->EstAfficher,
			'PhotoStation' => $this->PhotoStation
		);
		
		//$this->db->delete('Stations', array('IdStation' => $this->IdStation));
		$this->db->on_duplicate('Stations', $data);
	}
}