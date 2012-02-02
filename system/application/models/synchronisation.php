<?php
class synchronisation extends Model 
{
	public $IdSynchronisation;
	public $Date;
	public $TailleDonnees;
	public $Etat;
	
    function synchronisation()
    {
        parent::Model();
    }

	public function getLast()
	{
		$this->db->select_max('Date');
		$this->db->from('Synchronisations');
		
		$this->db->where('TailleDonnees !=', "0");

		// Render the subquery to a string
		$subQuery = $this->db->_compile_select();
		// Reset active record
		$this->db->_reset_select();
		
		$this->db->select('IdSynchronisation')->where("Date = ($subQuery)");
		$query = $this->db->get('Synchronisations');
		
		if ($query->num_rows() > 0)
		{
			$row = $query->row();
			
			$this->db->select('IdSynchronisation, UNIX_TIMESTAMP(Date) as Date, TailleDonnees, Etat', false)->where('IdSynchronisation', $row->IdSynchronisation);
			$query = $this->db->get('Synchronisations');
			
			if ($query->num_rows() > 0)
			{
				foreach ($query->result() as $row)
				{
					$this->IdSynchronisation = $row->IdSynchronisation;
					$this->Date = $row->Date;
					$this->TailleDonnees = $row->TailleDonnees;
					$this->Etat = $row->Etat;
					
					return $this;
				}
			}
		}
		
		return false;
	}
	
	static function getAll()
	{
		$listSynchronisation = array();
		
		$this->db->select('*')->where('IdSynchronisation', $row->IdSynchronisation);
		$query = $this->db->get('Synchronisations');
		
		if ($query->num_rows() > 0)
		{
			foreach ($query->result() as $row)
			{
				$sync = new synchronisation();
				
				$sync->IdSynchronisation = $row->IdSynchronisation;
				$sync->Date = $row->Date;
				$sync->TailleDonnees = $row->TailleDonnees;
				$sync->Etat = $row->Etat;
				
				$listSynchronisation[] = $sync;
			}
		}
		
		return $listSynchronisation;
	}
	
	function setSynchronisation($etat, $tailleDonnees)
	{
		$this->Etat = $etat;
		$this->TailleDonnees = $tailleDonnees;
		//$this->Date = time();
	}
	
	function save()
	{
		$data = array(
		               'Etat' => $this->Etat,
		               'TailleDonnees' => $this->TailleDonnees,
		            );
		$this->db->insert('Synchronisations', $data);
	}
}