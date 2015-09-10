<?php

function connect(){
	$servername = "localhost";
	$username = "root";
	$password = "123qwe";

	// Create connection
	global $conn;
	$conn = new mysqli($servername, $username, $password, 'testdb');

	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	} 
	
}

function timetable($day,$stuID){
	$sql = "SELECT class_time.start_time, class_time.end_time, class.class_name FROM class_time INNER JOIN class ON class_time.class_ID=class.class_ID INNER JOIN student_class ON class.class_ID=student_class.class_ID WHERE student_ID='".$stuID."' AND day='".$day."' ORDER BY class_time.start_time";
	global $conn;
	$result = $conn->query($sql);

	if($result->num_rows > 0){
		while($row =$result->fetch_assoc()){
			echo $row["start_time"]."&nbsp;Start&nbsp;".$row["class_name"]."<br />".$row["end_time"]."&nbsp;End&nbsp;".$row["class_name"]."<br /><br />";
		}
	}else{
		echo "0 results";
	}
}

?>