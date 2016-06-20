<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inicio extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->load->database('mais');
        $this->twig->add_function('base_url');
    }

	public function index()
	{
        $data['title'] = "";
        $this->twig->display('inicio/inicio.twig', $data);
	}

    public function acessonegado()
	{
        $data['event'] = "erro";
        $this->twig->display('inicio/inicio.twig', $data);
	}
}

/* End of file inicio.php */
/* Location: ./application/controllers/inicio.php */