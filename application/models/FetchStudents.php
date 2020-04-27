
<?php


class FetchStudents extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function fetchStudents()
    {
        $query = $this->db->query('SELECT * from studentrecord');
        return $query->result_array();
        

    }

 
}




?>