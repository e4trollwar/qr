
<?php


class FetchUsers extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function fetchUsers()
    {
        $query = $this->db->query('SELECT * from user');
        return $query->result_array();
        

    }

 
}




?>