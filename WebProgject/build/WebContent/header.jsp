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
<link rel="stylesheet" type="text/css" href="CSS/headerCSS.css?ver1">
</head>
<body>
	<div id="import_header">
		<div class="container-fluid" style="background: white;">
			<div class="navbar-header" style="height: 80px; padding-top: 5px;">
				<a class="navbar-brand" href="index.jsp"
					style="font-size: 30px; padding-top: 0px;"><img
					src="images/logo2.png" width="250px;"></a>
			</div>
			<ul class="nav navbar-nav" id="myul">
				<li class="active"><a href="#">영화</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">예매 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a data-toggle="modal" data-target="#myModal">예매</a> <!-- <a href="#">예매</a> --></li>
					</ul></li>
				<li><a href="#">이벤트 & 컬쳐</a></li>
				<li><a href="#">맴버쉽</a></li>
			</ul>
			<%
				String user_ID = (String) session.getAttribute("loginID");
				if (user_ID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="login.jsp"><span
						class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
				<li><a href="signin.jsp"><span
						class="glyphicon glyphicon-user"></span> 회원가입</a></li>
				<li><a href="board.jsp"><span
						class="glyphicon glyphicon-wrench"></span> 고객지원</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li id="welcome_user"><%=user_ID%>님 환영합니다.</li>
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						마이 페이지</a></li>
				<li><a href="logout.jsp"><span
						class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
				<li><a href="board.jsp"><span
						class="glyphicon glyphicon-wrench"></span> 고객지원</a></li>
			</ul>
			<%
				}
			%>
		</div>


		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog" style="width:500px;">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">영화 정보</h4>
					</div>
					<div class="modal-body">
						<table>
							<tr>
								<td><label for="sel1">상영관</label></td>
								<td><label for="sel2">상영 영화</label></td>
							</tr>
							<tr>
								<td><select class="form-control" id="sel1">
										<option>중계</option>
										<option>하계</option>
										<option>노원</option>
										<option>건대입구</option>
								</select></td>
								<td><select class="form-control" id="sel2">
										<option>원더우먼</option>
										<option>캐리비안의 해적: 죽은 자는 말이 없다</option>
										<option>미이라</option>
										<option>대립군</option>
										<option>겟아웃</option>
								</select></td>
							</tr>
							</table>
					</div>					
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						<button type="button" class="btn btn-primary">이동</button>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>