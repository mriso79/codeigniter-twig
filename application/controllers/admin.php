<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->no_cache();

        if(($this->session->userdata('logged_in') != 'yes'))
        {
            $this->session->sess_destroy();
            redirect(base_url().'acessonegado/', 'refresh');
        }

        $this->load->database('mais');
        $this->twig->add_function('base_url');
    }

	public function index()
	{
        $data['title'] = "";
        $this->twig->display('admin/principal.twig', $data);
	}
}

/* End of file inicio.php */
/* Location: ./application/controllers/inicio.php */