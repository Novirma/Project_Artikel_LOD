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

    public function deleteArtikel($id)
    {
        $this->db->delete('db_artikel', ['id' => $id]);
        return $this->db->affected_rows();
    }

    public function createArtikel($data)
    {
        $this->db->insert('db_artikel', $data);
        return $this->db->affected_rows();
    }

    public function updateArtikel($data, $id)
    {
        $this->db->update('db_artikel', $data, ['id' => $id]);
        return $this->db->affected_rows();
    }

}

?>
