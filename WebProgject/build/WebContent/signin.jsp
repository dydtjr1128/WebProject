<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<include file="QueryHeader.jsp">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/signinCSS.css?ver=2">
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<%@ include file="check.jsp" %>
<script>

$(function(){
	
	var out;
	$("#signIn").click(function(){
		
		var data_param ="input_id="+$("#user_id").val();		
		$.ajax({
			type : "post",
			url : "signinCheckDB.jsp",			
			data : data_param,
			success : function(result){				
					alert(result.trim());
			}
		});
	});
});
$(function(){
	
	var out;
	$("#user_submit").click(function(){
		
		var data_param ="input_id="+$("#user_id").val() + "&" + "input_pw="+$("#user_pw").val() + "&" + "input_email="+$("#user_email").val();		
		$.ajax({
			type : "post",
			url : "signinDB.jsp",			
			data : data_param,
			success : function(result){		
					var p = result.trim();
					if(p == 1)
						alert("중복확인 하세요!!");
					else if(p == 2)
						alert("비밀번호가 짧습니다.");
					else if(p == 3){
						alert("회원가입 성공!");
						location.href="login.jsp";
					}					
			}
		});
	});
});
</script>
<script>
	document.onload = function() {
		var password = document.getElementById("user_pw");
		password.addEventListenr("keyup", myFuntion);

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
	function myAlert(userinput) {

	}
</script>
</head>
<body>
<div id="con"></div>

	<div id="header">
		<%@ include file="header.jsp"%>
	</div>
	<div id="loginHeader">
		<div>
			<form id="loginform" action="signinDB.jsp" method="post">
				<table>
					<tbody>
						<tr>
							<td colspan="2"><label for="user_id">ID</label></td>
						</tr>
						<tr>
							
							<td><input type="text" id="user_id" name="input_id"
								placeholder="ID"></td><!-- ID넣는곳  -->
							<td><input type="button" id="signIn" value="중복 확인"></td>
							
							
						</tr>
						<tr>
							<td colspan="2"><label for="user_pw">PW</label></td>
						</tr>
						<tr>
							<td><input type="password" id="user_pw" name="input_pw"
								placeholder="Input Your PW..." onkeydown="myFunction()"></td><!-- PW넣는곳  -->
							<td><progress min="0" max="100" value="30" id="pwprogress"></td>

						</tr>
						<tr>
							<td colspan="2"><label for="user_pw">E-mail</label></td>
						</tr>
						<tr>
							<td colspan="2"><input type="email" id="user_email"
								name="input_email" placeholder="Input Your E-Mail..."></td><!-- email넣는곳  -->
						</tr>
						<tr>
							<td colspan="2"><label for="user_login">SignIn</label></td>
						</tr>
						<tr>
							<td><input type="button" id="user_submit"
								name="input_submit" value="Sign In"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	
<%-- 	<script>
		document.findViewById("user_id").value =
	<%=request.getParameter("input_id")%>
		;
		document.findViewById("user_pw").value =
	<%=request.getParameter("input_pw")%>
		;
		document.findViewById("user_email").value =
	<%=request.getParameter("input_email")%>
		;
	</script> --%>
</body>
</html>