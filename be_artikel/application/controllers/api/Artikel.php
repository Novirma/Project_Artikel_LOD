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

}



?>