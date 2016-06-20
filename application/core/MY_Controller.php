<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: mriso
 * Date: 11/4/13
 * Time: 3:46 PM
 */

class MY_Controller extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database('mais');
        $session = $this->session->all_userdata();
    }

    public function log($descricao)
    {
        $this->load->database('mais');

        $data = array(
            'descricao' => $descricao,
            'usuario' => $this->session->userdata('id_usuario'),
            'data' => date("Y-m-d H:i:s")
        );

        $this->db->insert('logs', $data);
    }

    protected function no_cache()
    {
        header('Cache-Control: no-store, no-cache, must-revalidate');
        header('Cache-Control: post-check=0, pre-check=0',false);
        header('Pragma: no-cache');
    }

}