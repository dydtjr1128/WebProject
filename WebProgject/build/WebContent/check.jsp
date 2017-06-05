<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/headerCSS.css?ver=2">
<title>Insert title here</title>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		if(id.equals("") || title.equals("") || content.equals(""))
		{			
			%>
			<script>
				alert("다시입력해주세요!");
				history.back();
			</script>
			<%
		}
		else
		{ 
		%>
			<jsp:forward page="boardList.jsp"></jsp:forward>
		<%
		}
	%>

</body>
</html>