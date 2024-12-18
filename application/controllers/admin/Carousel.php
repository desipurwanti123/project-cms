<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Carousel extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->model('Carousel_model');
        if($this->session->userdata('level')==NULL){
            redirect('auth');
        }
    }
	public function index(){
        $this->db->from('carousel');
        $carousel = $this->db->get()->result_array();
		$data = array(
			'judul_halaman' => 'Halaman Carousel',
            'carousel'      => $carousel
		);
		$this->template->load('template_admin','admin/carousel_index',$data);
	}
    public function simpan(){
        $namafoto = date('YmdHis').'.jpg';
        $config['upload_path']          = 'assets/upload/carousel/';
        $config['max_size']             = 1024 * 1024; //3 * 1024 * 1024; //3Mb; 0=unlimited
        $config['file_name']            = $namafoto;
        $config['allowed_types']        = '*';
        $this->load->library('upload', $config);
        if($_FILES['foto']['size'] >= 1024 * 1024){
            $this->session->set_flashdata('alert', '
                <div class="alert alert-danger alert-dismissible" role="alert">
                Ukuran foto terlalu besar, upload ulang foto dengan ukuran yang kurang dari 500 KB.
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                    ');
            redirect('admin/carousel');  
        }  elseif( ! $this->upload->do_upload('foto')){
            $error = array('error' => $this->upload->display_errors());
        }else{
            $data = array('upload_data' => $this->upload->data());
        }
        $this->Carousel_model->simpan($namafoto);
        $this->session->set_flashdata('alert','
            <div class="alert alert-dark alert-dismissible mb-0" role="alert">
                Berhasil menambahkan carousel.
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        ');
        redirect('admin/carousel');
    }
    public function delete_data($id){
        $this->Carousel_model->delete_data($id);
        $this->session->set_flashdata('alert','
            <div class="alert alert-dark alert-dismissible mb-0" role="alert">
                Berhasil menghapus carousel
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        ');
        redirect('admin/carousel');
    }
}
