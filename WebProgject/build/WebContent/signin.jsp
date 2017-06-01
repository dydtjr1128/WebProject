<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/signinCSS.css?ver=2">
<script>
document.onload = function(){
	var password = document.getElementById("user_pw");
	password.addEventListenr("keyup",myFuntion);
	
}
	function myFunction() {
		var password = document.getElementById("user_pw");
		var progress = document.getElementById("pwprogress");

		switch (password.value.length) {
		case 0:
		case 1:
		case 2:
		case 3:
			progress.value = "30";
			progress.backgroundColor = "red";
			break;
		case 4:
		case 5:
		case 6:
			progress.value = "60";
			progress.backgroundColor = "blue";
			break;
		case 7:
		case 8:
		case 9:
			progress.value = "90";
			progress.backgroundColor = "green";
			break;
		}
	}
</script>
</head>
<body>
	<div id="header">
		<%@ include file="header.jsp"%>
	</div>
	<div id="loginHeader">
		<div>
			<form id="loginform">
				<table>
					<tbody>
						<tr>
							<td colspan="2"><label for="user_id">ID</label></td>
						</tr>
						<tr>
							<td><input type="text" id="user_id" name="input_id"
								placeholder="ID"></td>
							<td><input type="button" id="singIn" value="중복 확인"></td>
						</tr>
						<tr>
							<td colspan="2"><label for="user_pw">PW</label></td>
						</tr>
						<tr>
							<td><input type="text" id="user_pw" name="input_pw"
								placeholder="Input Your PW..." onkeydown="myFunction()"></td>
							<td><progress min="0" max="100" value="30" id="pwprogress"></td>

						</tr>
						<tr>
							<td colspan="2"><label for="user_pw">E-mail</label></td>
						</tr>
						<tr>
							<td colspan="2"><input type="email" id="user_email"
								name="input_email" placeholder="Input Your E-Mail..."></td>
						</tr>
						<tr>
							<td colspan="2"><label for="user_login">Login</label></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" id="user_pw"
								name="input_pw" value="Login"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>

</body>
</html>