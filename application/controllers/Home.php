<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller{
    public function __construct(){
        parent::__construct();
    }
    public function index(){
        // Query data lainnya
        $this->db->from('konfigurasi');
        $konfig = $this->db->get()->row();

        $this->db->from('carousel');
        $carousel = $this->db->get()->result_array();

        $this->db->from('kategori');
        $kategori = $this->db->get()->result_array();

        // Query untuk mengambil seluruh konten tanpa pagination
        $this->db->from('konten a');
        $this->db->join('kategori b', 'a.id_kategori = b.id_kategori', 'left');
        $this->db->join('user c', 'a.username = c.username', 'left');
        $this->db->order_by('id_konten', 'DESC');
        $konten = $this->db->get()->result_array(); // Ambil seluruh data konten tanpa limit
        // Siapkan data untuk ditampilkan di view
        $data = array(
            'judul' => "Beranda | desi",
            'konten' => $konten,
            'kategori' => $kategori,
            'konfig' => $konfig,
            'carousel' => $carousel,
        );
        // Memuat view
        $this->load->view('beranda', $data);
    }

    public function kategori($id){
        $this->db->from('konfigurasi');
        $konfig = $this->db->get()->row();
        $this->db->from('kategori');
        $kategori = $this->db->get()->result_array();
        $this->db->from('konten a');
        $this->db->join('kategori b', 'a.id_kategori=b.id_kategori', 'left');
        $this->db->join('user c', 'a.username=c.username', 'left');
        $this->db->where('a.id_kategori', $id);
        $konten = $this->db->get()->result_array();
        $this->db->from('kategori');
        $this->db->where('id_kategori', $id);
        $kategori_data = $this->db->get()->row();
        if (!$kategori_data) {
            redirect('home/kategori');
        }
        $nama_kategori = $kategori_data->nama_kategori;
        $data = array(
            'judul' => $nama_kategori . "| desi",
            'nama_kategori' => $nama_kategori,
            'konten' => $konten,
            'kategori' => $kategori,
            'konfig' => $konfig
        );
        $this->load->view('kategori', $data);
    }

    public function artikel($id){
        $this->db->from('konfigurasi');
        $konfig = $this->db->get()->row();

        $this->db->from('kategori');
        $kategori = $this->db->get()->result_array();

        $this->db->from('konten a');
        $this->db->join('kategori b', 'a.id_kategori=b.id_kategori', 'left');
        $this->db->join('user c', 'a.username=c.username', 'left');
        $this->db->where('slug', $id);
        $konten = $this->db->get()->row();
        $data = array(
            'judul' => $konten->judul . "| Desi",
            'konfig' => $konfig,
            'kategori' => $kategori,
            'konten' => $konten
        );
        $this->load->view('detail', $data);
    }
}