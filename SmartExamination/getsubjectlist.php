<?php


$Subject=array();

$conn=mysqli_connect("localhost","root","","smartexamination") or die('error while connecting...');	

$q1=mysqli_query($conn,"SELECT  DISTINCT Subject FROM `questions_criteria`");
while($row=mysqli_fetch_array($q1,MYSQLI_BOTH)){;
	array_push($Subject,$row['Subject']);
	
}

echo json_encode($response = array('Subject' => $Subject));

?>


