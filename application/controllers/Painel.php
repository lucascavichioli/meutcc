<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Painel extends CI_Controller {

	public function index()
	{
		if(!empty($this->session->userdata('usuario'))){
			redirect(base_url() . "painel/dashboard");
		}else{
			$this->load->view('login');
		}
	}

	public function login(){
		if($_SERVER['REQUEST_METHOD'] !== 'POST'){
			$this->load->view('login');
		}else{
			$data['alert'] = "alert-validate";
			$data['mensagem'] = "Usuário ou senha incorretos";

			$this->load->library("form_validation");
			$this->form_validation->set_rules('usuario', 'Usuário', 'required');
			$this->form_validation->set_rules('pass', 'Senha', 'required');

			if($this->form_validation->run()){
			
				$usuario = $this->input->post("usuario", true);
				$senha = $this->input->post("pass", true);

				$this->load->model("usuarios");
				$getUser = $this->usuarios->getUser($usuario);
				if(!empty($getUser)){
					foreach ($getUser as $campo)
					{
						$email = $campo->cont_email;
						$hash = $campo->cont_senha;
					}
					if(password_verify($senha, $hash)){
						$session_data = array(
							'usuario' => $usuario,
							'logado' => true
						);
	
						$this->session->set_userdata($session_data);
						redirect(base_url() . "painel/dashboard");
					}else{
						$this->load->view('login', $data);
					}
				}else{
					$this->load->view('login', $data);
				}
			}else{
				$this->load->view('login', $data);
			}
		}
		
	}

	public function dashboard(){
		if($this->session->userdata('usuario') != '' && $this->session->userdata('logado') === true){
			$this->load->view('painel-de-controle');
		}else{
			redirect(base_url() . "painel");
		}
		
	}

	public function sair(){
		$this->session->unset_userdata('usuario');
		$this->session->unset_userdata('logado');
		$this->session->sess_destroy();
		$this->load->view('sair');
	}
}