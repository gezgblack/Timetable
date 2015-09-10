<?php include ('php/timetable.php');

?>
<html>
	<head>
		<Title>Home</title>
		<link rel="stylesheet" type="text/css" href="assets/css/index.css">
	</head>

	<body>
		<?php include 'navigation.php';?>
		
		<div style="clear: both;"></div>
		
		<div id="day">
				
		</div>
			
		<div id="timetable">
			<?php
				
				echo date("D")."<br />";
			
				connect();
				timetable(date("D"),'2');
				
			
			?>
			
		</div>
		


	</body>


</html>


<!--
SELECT class_time.start_time, class_time.end_time FROM class_time INNER JOIN class ON class_time.class_ID=class.class_ID INNER JOIN student_class ON class.class_ID=student_class.class_ID WHERE student_ID='X12345'




-->
