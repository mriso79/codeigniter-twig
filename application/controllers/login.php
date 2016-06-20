<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends MY_Controller {

	public function process()
	{
        $this->load->database('mais');

        $useremail = $this->input->post('email');
        $senha = $this->input->post('senha');

        $this->load->model('account_model');
        $query = $this->account_model->checkLogin($useremail, $senha);

        $num_rows = $this->db->affected_rows($query);

        if($num_rows > 0){

            $row = $query->row();

            $newdata = array(
                'id_usuario' => $row->id_usuario,
                'nomeusuario' => $row->nomeusuario,
                'email' => $row->email,
                'logged_in' => 'yes'
            );

            $this->session->set_userdata($newdata);

        }else{
                $this->session->sess_destroy();
        }

        if($this->session->userdata('logged_in') == 'yes'){
            redirect(base_url().'admin/', 'location'); # index.php/login/
        }else{
            redirect(base_url().'acessonegado/', 'refresh'); #index.php/welcome/
        };

        return false;


	}
}
