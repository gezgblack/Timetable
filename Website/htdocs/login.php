<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" media="all" href="assets/css/login.css">
	<script type="text/javascript" src="assets/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="assets/js/jquery.leanModal.min.js"></script>
	<!-- This is the JQuary plugin leanModal -->
</head>

<body>
	<div id="w">
		<div id="content">
			<center><a href="#loginmodal" class="flatbtn" id="modaltrigger">Login Button</a></center>
		</div>
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
	
</body>
</html>