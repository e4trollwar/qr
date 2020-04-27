<?php 
 if(isset($_POST['title'])){
 	include "db.php";

 	$title = mysqli_real_escape_string($db, $_POST['title']);
 	$message = mysqli_real_escape_string($db, $_POST['message']);
 	$query = "INSERT INTO tbl_user(notif_title, notif_desc) VALUES('$title', '$message')";


 	$result = mysqli_query($db, $query);

 	if(!$result) {
 		die("This went bad".mysqli_error($db));
 	}
 }