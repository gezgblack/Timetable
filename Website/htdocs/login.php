<html>
<head>
	<title> Login </title>
	<link rel="stylesheet" type="text/css" href="assets/css/index.css">
	<link rel="stylesheet" type="text/css" href="assets/css/login.css">
	
</head>

<body>
	<?php include 'navigation.php';?>
	
	<div class="login-form">
	
	
		<form>
	
			<li>
			<input type="text" value="Username" onfocus="this.value ='';">
			</li>
			
			<li>
			<input type="password" value="Password" onfocus="this.value ='';">
			</li>
			
			<div class ="login-options">
				<input type="submit" value = "Log In">
				<input type="submit" value = "Register">
			</div>
		
			
			<div class ="forgot">
				<h2><a href="#"> Forgot Password ? </a><h2>
			</div>
			
		</form>
	</div>

</body>
</html>