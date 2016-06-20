<?php
/**
 * Created by JetBrains PhpStorm.
 * User: marcos
 * Date: 11/13/12
 * Time: 1:43 PM
 * To change this template use File | Settings | File Templates.
 */
class Account_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    function checkLogin($useremail, $password)
    {
        $sql = "SELECT * FROM usuarios where email=".$this->db->escape($useremail)." and senha = md5(".$this->db->escape($password).") and ativo = 1";

        if($query = $this->db->query($sql))
            return $query;

        return false;
    }

    function getUsers()
    {
        $sql = "SELECT * FROM autores order by id_autor desc";

        if($query = $this->db->query($sql))
            return $query;

        return false;
    }

    function loadByID($id)
    {
        $sql = "SELECT * FROM autores WHERE id_autor = ".$this->db->escape($id);

        if($query = $this->db->query($sql))
            return $query;

        return false;
    }

    function update($id)
    {
        if($this->input->post('senha') != '')
        {
            $senha = md5($this->input->post('senha'));
            $data = array(
                'nome' => $this->input->post('nome'),
                'nomeusuario' => $this->input->post('nomeusuario'),
                'papel' => $this->input->post('papel'),
                'email' => $this->input->post('email'),
                'senha' => $senha,
            );
        }
        else
        {
            $data = array(
                'nome' => $this->input->post('nome'),
                'nomeusuario' => $this->input->post('nomeusuario'),
                'papel' => $this->input->post('papel'),
                'email' => $this->input->post('email')
            );
        }

        $this->db->where('id_autor', $id);
        if($this->db->update('autores', $data))
            return true;
    }

    function salvar()
    {
        $senha = md5($this->input->post('senha'));
        $data = array(
            'nome' => $this->input->post('nome'),
            'nomeusuario' => $this->input->post('nomeusuario'),
            'papel' => $this->input->post('papel'),
            'email' => $this->input->post('email'),
            'senha' => $senha,
        );

        if($this->db->insert('autores', $data))
            return true;

        return false;
    }


}