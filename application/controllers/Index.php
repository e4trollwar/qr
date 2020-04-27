<?php

class Index extends CI_Controller
{

public function __construct() 
	{		
		parent::__construct();
		$this->load->database();
		$this->load->helper('url');
	    

	}
	public function index()
	{
		$this->load->view('include/header');
		$this->load->view('index');
		$this->load->view('include/footer');
	}
	public function manageusers()
	{
		$this->load->view('include/header');
		$this->load->view('include/navbar');
		$this->load->view('manageusers');
		$this->load->view('include/footer');
	}
	public function addusers()
	{
		$this->load->view('include/header');
		$this->load->view('include/navbar');
		$this->load->view('addusers');
		$this->load->view('include/footer');
	}

	public function managestudents()
	{
		$this->load->view('include/header');
		$this->load->view('include/navbar');
		$this->load->view('managestudents');
		$this->load->view('include/footer');
	}
	public function addstudents()
	{
		$this->load->view('include/header');
		$this->load->view('include/navbar');
		$this->load->view('addstudents');
		$this->load->view('include/footer');
	}

	public function attendanceReports()
	{
		$this->load->view('include/header');
		$this->load->view('include/navbar');
		$this->load->view('attendanceReports');
		$this->load->view('include/footer');
	}
	public function addsubjects()
	{
		$this->load->view('include/header');
		$this->load->view('include/navbar');
		$this->load->view('addsubjects');
		$this->load->view('include/footer');
	}
	public function managesubjects()
	{
		$this->load->view('include/header');
		$this->load->view('include/navbar');
		$this->load->view('managesubjects');
		$this->load->view('include/footer');
	}
	public function classes()
	{
		$this->load->view('include/header');
		$this->load->view('include/navbar');
		$this->load->view('classes');
		$this->load->view('include/footer');
	}



	
	
	public function fetchStudents()
	{
		
		$this->load->model('FetchStudents');
		$data=$this->FetchStudents->fetchStudents();
		echo json_encode($data);
	}
	public function fetchUsers()
	{
		
		$this->load->model('FetchUsers');
		$data=$this->FetchUsers->fetchUsers();
		echo json_encode($data);
	}



}

?>