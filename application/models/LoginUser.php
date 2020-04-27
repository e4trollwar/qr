
<?php


class LoginUser extends CI_Model
{
    public function __construct()
    {
        $this->load->database();
    }

    public function user()
    {
        $query = $this->db->query('SELECT * from studentrecord');
        return $query->result_array();
        

    }

 
}




?>