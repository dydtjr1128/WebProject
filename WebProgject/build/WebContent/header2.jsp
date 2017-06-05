<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CKY Cinema에 오신것을 환영합니다.</title>
<link rel="shortcut icon" href="images/pabicon.ico" type="image/x-icon" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="CSS/headerCSS.css?ver2">
</head>
<body>
	<div id="import_header">
		<div class="container-fluid" style="background: white;">
			<div class="navbar-header" style="height: 80px;">
				<a class="navbar-brand" href="index.jsp" style="font-size: 30px;">CKY Cinema</a>
			</div>
			<ul class="nav navbar-nav" id="myul">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">영화 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">예매</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a href="#">이벤트 & 컬쳐</a></li>
			</ul>
			<%
				String user_ID = (String) session.getAttribute("loginID");
				if (user_ID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
			<%
				}
			%>
		</div>
		<div style="display:block;text-align:center;">
		<img src="images/logo.png">
		</div>
	</div>
</body>
</html>