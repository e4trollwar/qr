<?php

include "db.php";

if(isset($_POST['option'])){
	if($_POST['option'] != ''){
		$update = "UPDATE tbl_user SET notif_status = 1 WHERE notif_status = 0";
		mysqli_query($db, $update);
	}
$query = "SELECT * FROM tbl_user ORDER BY id DESC LIMIT 3";
$result = mysqli_query($db, $query);
$output = '';

if(mysqli_num_rows($result) > 0){
	while ($row = mysqli_fetch_array($result)) {
		$output .="
		<li>
		<a href='#'>
		<strong>" . $row['notif_title'] . "</strong><br>
		<small><em>" . $row['notif_desc'] . "</em></small>
		</a>
		";
	}
}
else{
		$output ="<li><a href='#' class=''>0 notif</a></li>";

	}

	$status_query = "SELECT * FROM tbl_user WHERE notif_status=0";
	$result_query = mysqli_query($db, $status_query);
	$count = mysqli_num_rows($result_query);
	$data = array(
		'notification' => $output,
		'unreadNotification' => $count 
	);

	echo json_encode($data);
}