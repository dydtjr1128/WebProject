<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CKY Cinema에 오신것을 환영합니다.</title>
<link rel="shortcut icon" href="images/pabicon.ico" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="CSS/headerCSS.css?ver2">
</head>
<body>
	<div id="import_header">
		<div id="imgDiv">
			<a href="index.jsp" id="logo"><img src="images/logo.png"></a>
		</div>
		<div>
			<%
				String user_ID = (String) session.getAttribute("loginID");
				if (user_ID == null) {
			%>
			<ul class="first">
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="signin.jsp">회원가입</a></li>
				<li><a href="login.jsp">고객센터</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="first" style="width: 450px; left: 800px;">
				<li><%=user_ID%>님 환영합니다.</li>
				<li><a href="login.jsp">마이페이지</a></li>
				<li><a href="logout.jsp">로그아웃</a></li>
				<li><a href="login.jsp">고객센터</a></li>
			</ul>
			<%
				}
			%>
			<ul class="menuList">
				<li><a href=login.jsp>영화</a></li>
				<li><a href="login.jsp">예매</a></li>
				<li><a href="login.jsp">극장</a></li>
				<li><a href="login.jsp">이벤트&컬쳐</a></li>
			</ul>
		</div>
		<hr>
		<hr>
	</div>
</body>
</html>