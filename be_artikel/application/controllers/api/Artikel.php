<?php
defined('BASEPATH') OR exit('No direct script access allowed');


// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';

class Artikel extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
        header('Access-Control-Allow-Origin: *'); // Change * to your allowed origin if needed and Method Allow FE to Get This API
        header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
        header('Access-Control-Allow-Headers: Origin, Accept, Content-Type, Authorization, Access-Control-Allow-Origin');
        $this->load->model('Artikel_model', 'artikel');
    }

    public function index_get()
    {
        
        $id = $this->get('id');
        if ($id === null) {
            $artikel = $this->artikel->getArtikel();
        } else {
            $artikel = $this->artikel->getArtikel($id);
        }

        if ($artikel) {
            $this->response([
                'status' => TRUE,
                'data' => $artikel
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'id not found'
            ], REST_Controller::HTTP_NOT_FOUND);
        }
    }

    public function index_delete()
    {
        $id = $this->delete('id');

        if ($id === null) {
            $this->response([
                'status' => FALSE,
                'message' => 'provide an id!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        } else {
            if ($this->artikel->deleteArtikel($id) > 0) {
                $this->response([
                    'status' => true,
                    'id' => $id,
                    'message' => 'deleted.'
                ], REST_Controller::HTTP_OK);
            } else {
                $this->response([
                    'status' => FALSE,
                    'message' => 'id not found'
                ], REST_Controller::HTTP_BAD_REQUEST);
            }
        }
    }

    public function index_post()
    {
        $data = [
            'judul' => $this->post('judul'),
            'penulis' => $this->post('penulis'),
            'konten' => $this->post('konten'),
            'tanggal_publikasi' => $this->post('tanggal_publikasi'),
            'kategori' => $this->post('kategori')
        ];

        if( $this->artikel->createArtikel($data) > 0) {
            $this->response([
                'status' => true,
                'message' => 'Artikel baru telah ditambahkan'
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'failed to create new data!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }

    }

    public function index_options()
{
    $this->response(null, REST_Controller::HTTP_OK);
}

    public function index_put()
    {
        $id = $this->put('id');
        $data = [
            'judul' => $this->put('judul'),
            'penulis' => $this->put('penulis'),
            'konten' => $this->put('konten'),
            'tanggal_publikasi' => $this->put('tanggal_publikasi'),
            'kategori' => $this->put('kategori')
        ];

        if( $this->artikel->updateArtikel($data, $id) > 0) {
            $this->response([
                'status' => true,
                'message' => 'Data Artikel telah diupdated'
            ], REST_Controller::HTTP_OK);
        } else {
            $this->response([
                'status' => FALSE,
                'message' => 'failed to UPDATED new data!'
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }

}



?>