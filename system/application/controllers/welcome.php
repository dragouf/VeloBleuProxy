<?php

class Welcome extends Controller {

	function Welcome()
	{
		parent::Controller();	
	}
	
	function index()
	{
		$this->load->view('welcome_message');
	}
	
	function loadData()
	{
		
		$this->output->enable_profiler(true); 
		
		$this->load->model('Velobleumodel');
		
		$response = array(
							array(
									//'stations'  => array($this->VeloBleuModel->stationsModelToArray(), 'array'),
									'lastSync' => array($this->Velobleumodel->lastSyncModelToArray(), 'struct')
							),	
							'struct');
		
		print_r($response);

		echo "mis à jour";
	}
}

/* End of file welcome.php */
/* Location: ./system/application/controllers/welcome.php */