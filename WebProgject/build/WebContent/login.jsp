<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/loginCSS.css?ver=1">
</head>
<body>
	<div id="header">
		<%@ include file="header.jsp"%>
	</div>
	<div id="loginHeader">
		<div>
			<form id="loginform">
				<label for="user_id">ID</label> 
				<input type="text" id="user_id"	name="input_id" placeholder="ID"> 
				<label for="user_pw">PW</label>
				<input type="password" id="user_pw" name="input_pw" placeholder="Input Your PW...">				 
				<label for="user_login">Login</label><a href="signin.jsp" id="signIn">Sign in</a>
				<input type="submit" id="user_pw" name="input_pw" value="Login">
			</form>
		</div>
	</div>

</body>
</html>