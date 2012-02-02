<?php

class IphoneXmlRpc extends Controller {

	function iphoneXmlRpc()
	{
		parent::Controller();	
	}
	
	function index()
	{
		$this->load->library('xmlrpc');
		$this->load->library('xmlrpcs');
		
		$config['functions']['get.stations'] = array('function' => 'iphoneXmlRpc.getStations');
		$config['functions']['get.comments'] = array('function' => 'iphoneXmlRpc.getComments');
		
		$this->xmlrpcs->initialize($config);
		$this->xmlrpcs->serve();
	}
	
	
	function getStations($request)
	{
		$parameters = $request->output_parameters();
		
		$this->load->model('velobleumodel');
		
		$response = array(
							array(
									'stations'  => array($this->velobleumodel->stationsModelToArray(), 'struct'),
									'lastSync' => array($this->velobleumodel->lastSyncModelToArray(), 'struct')
							),	
							'struct');
						
		return $this->xmlrpc->send_response($response);
	}
	
	function getComments($request)
	{
		$parameters = $request->output_parameters();
		
		$response = array(
							array(
									'you_said'  => $parameters['0'],
									'i_respond' => 'Not bad at all.'),
									
							'struct');
						
		return $this->xmlrpc->send_response($response);
	}
}
?>