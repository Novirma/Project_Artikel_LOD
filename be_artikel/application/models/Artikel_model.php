<?php

class Artikel_model extends CI_Model
{
    public function getArtikel($id = null)
    {
        if( $id === null ) {
            return $this->db->get('db_artikel')->result_array();
        } else {
            return $this->db->get_where('db_artikel',['id' => $id])->result_array();
        }
    }
}

?>
