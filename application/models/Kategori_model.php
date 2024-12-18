<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_model extends CI_Model {
	public function simpan(){
        $data = array(
            'nama_kategori' =>  $this->input->post('nama_kategori')
        );
        $this->db->insert('kategori',$data);
    }
    public function delete_data($id){
        $where = array(
            'id_kategori' => $id
        );
        $this->db->delete('kategori',$where);
    }
    public function update(){
        $where = array(
            'id_kategori' => $this->input->post('id_kategori')
        );
        $data = array(
            'nama_kategori' => $this->input->post('nama_kategori')
        );
        $this->db->update('kategori',$data, $where);
    }
}
