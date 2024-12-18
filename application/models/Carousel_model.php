<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Carousel_model extends CI_Model {
	public function simpan($namafoto) {
        $data = array(
            'judul' =>  $this->input->post('judul'),
            'foto' => $namafoto,
        );
        $this->db->insert('carousel',$data);
    }
    public function delete_data($id){
        $filename=FCPATH.'./assets/upload/carousel/'.$id;
        if (file_exists($filename)){
            unlink("./assets/upload/carousel/".$id);
        }
        $where = array(
            'foto' => $id
        );
        $this->db->delete('carousel',$where);
    }
}
