<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class NovaConta extends CI_Controller {

	public function index()
	{
		$this->load->view('nova-conta');
	}

	public function contabilidade(){
		if(strcmp($_SERVER['REQUEST_METHOD'], 'POST') !== 0){
			$this->load->view('cadastro-contabilidade');
		}else{
			print "deu";
		}
	}

	public function contador(){
		$this->load->view('cadastro-contador');
	}
}
