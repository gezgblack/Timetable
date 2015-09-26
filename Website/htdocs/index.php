<?php include ('php/timetable.php');

?>
<html>
	<head>
		<Title>Home</title>
		<link rel="stylesheet" type="text/css" href="assets/css/index.css">
		<script type="text/javascript" src="assets/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="assets/js/jquery.leanModal.min.js"></script>
	</head>

	<body>
		<?php include 'navigation.php';?>
		
		<div style="clear: both;"></div>
		
		<div id="day">
				
		</div>
		<div id="loginmodal" style="display:none;">
		<form id="loginform" name="loginform" method="post" action="login.php">
			<input type="text" name="username" id="username" class="txtfield" value="Username" onclick="this.value='';">
			<input type="password" name="password" id="password" class="txtfield" value="Password" onclick="this.value='';">
			<div class="center"><input type="submit" name="loginbtn" id="loginbtn" class="hidemodal" value="Log In"></div>
		</form>
		</div>
		
		<script type="text/javascript">
		$(function(){
		  $('#loginform').submit(function(e){
			return false;
		  });
		  
		  $('#modaltrigger').leanModal({ top: 110, overlay: 0.45, closeButton: ".hidemodal" });
		});
		</script>
			
		<div id="timetable">
			<?php
				
				echo date("D")."<br />";
			
				connect();
				timetable(date("D"),'3');
				
			
			?>
			
		</div>
		


	</body>


</html>


<!--
SELECT class_time.start_time, class_time.end_time FROM class_time INNER JOIN class ON class_time.class_ID=class.class_ID INNER JOIN student_class ON class.class_ID=student_class.class_ID WHERE student_ID='X12345'




-->
