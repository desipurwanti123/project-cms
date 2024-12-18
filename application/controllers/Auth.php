<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
    public function __construct(){
        parent::__construct();
    }
	public function index(){
		$this->load->view('login');
	}
    public function register(){
		$this->load->view('registrasi');
	}
    public function registrasi(){
        $username = $this->input->post('username');
        $password = md5($this->input->post('password')); 
        $nama = $this->input->post('nama');
        $data = array(
            'username' => $username,
            'password' => $password,
            'level' => 'kontributor', 
            'nama' =>  $nama
        );
        if ($this->db->insert('user', $data)) {
            $this->session->set_flashdata('alert', '
            <div class="alert alert-success alert-dismissible mb-0" role="alert">
                Registrasi berhasil! Silakan login.
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            ');
            redirect('auth');
        } else {
            $this->session->set_flashdata('alert', '
            <div class="alert alert-danger alert-dismissible mb-0" role="alert">
                Registrasi gagal! Silakan coba lagi.
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            ');
            redirect('auth/register');
        }
    }
    public function login(){
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        $this->db->from('user');
        $this->db->where('username',$username);
        $cek = $this->db->get()->row();
        if($cek==NULL){
            $this->session->set_flashdata('alert','
            <div class="alert alert-dark alert-dismissible mb-0" role="alert">
                Username tidak ada
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            ');
            redirect('auth');
        } else if($password==$cek->password){
            $data = array(
                'id_user' => $cek->id_user,
                'nama' => $cek->nama,
                'username' => $cek->username,
                'level' => $cek->level,
            );
            $this->session->set_userdata($data);
            redirect('admin/home');
        } else {
            $this->session->set_flashdata('alert','
            <div class="alert alert-dark alert-dismissible mb-0" role="alert">
                Password salah
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            ');
            redirect('auth');
        }
    }
    public function logout(){
        $this->session->sess_destroy();
        redirect('home');
    }
}
