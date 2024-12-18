<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Konten_model extends CI_Model {
	public function simpan($namafoto){
        $data = array(
            'judul' =>  $this->input->post('judul'),
            'id_kategori' =>  $this->input->post('id_kategori'),
            'keterangan' =>  $this->input->post('keterangan'),
            'alamat' =>  $this->input->post('alamat'),
            'tanggal' =>  date('Y-m-d'),
            'foto' => $namafoto,
            'username' =>  $this->session->userdata('username'),
            'slug' => str_replace(' ','-',$this->input->post('judul')),
            'fasilitas' => $this->input->post('fasilitas'),
            'kontak' => $this->input->post('kontak')
            
        );
        $this->db->insert('konten',$data);
    }
    public function update(){
        $data = array(
            'judul'         =>  $this->input->post('judul'),
            'id_kategori'   =>  $this->input->post('id_kategori'),
            'keterangan'    =>  $this->input->post('keterangan'),
            'alamat'    =>  $this->input->post('alamat'),
            'slug'          => str_replace(' ','-',$this->input->post('judul')),
            'fasilitas' => $this->input->post('fasilitas'),
            'kontak' => $this->input->post('kontak')
            
        );
        $where = array(
            'foto' => $this->input->post('nama_foto'),
            'id_konten' => $this->input->post('id_konten')
        );
        $this->db->update('konten',$data,$where);
    }
    public function delete_data($id){
        $where = array(
            'foto' => $id
        );
        $this->db->delete('konten',$where);
    }
}
