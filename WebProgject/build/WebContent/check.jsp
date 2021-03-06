<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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
      String id = (String)session.getAttribute("loginID");
      if(id == null)
      {
         %>
         <script>
            alert("로그인 상태가 아니므로 접근할 수 없습니다.");            
         </script>
         <%
         response.sendRedirect("board.jsp");
      }
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
         // 데이터베이스 연결관련 변수 선언
         Connection conn = null;
         PreparedStatement pstmt = null;

         // 데이터베이스 연결관련정보를 문자열로 선언
         String jdbc_driver = "com.mysql.jdbc.Driver";
         String jdbc_url = "jdbc:mysql://127.0.0.1/webuser";
         String user = "root";
         String password = "q1w2e3";

         try {
            // JDBC 드라이버 로드
            Class.forName(jdbc_driver);

            // 데이터베이스 연결정보를 이용해 Connection 인스턴스 확보
            conn = DriverManager.getConnection(jdbc_url, user, password);

            // Connection 클래스의 인스턴스로 부터 SQL  문 작성을 위한 Statement 준비
            String sql = "insert into board_table(id, title, content) values (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, (String)session.getAttribute("loginID"));
            pstmt.setString(2, request.getParameter("title"));
            pstmt.setString(3, request.getParameter("content"));
            
            
            

            // username 값을 입력한 경우 sql 문장을 수행.
            if ((String)session.getAttribute("loginID") != null) 
            {
               pstmt.executeUpdate();
              /*  sql="update bord_table set count=count+1 where con=?";
               pstmt.setString(1, (String)session.getAttribute("loginID"));
               pstmt = conn.prepareStatement(sql);
               pstmt.executeUpdate(); */
            }
            pstmt.close();
            conn.close();
         } catch (Exception e) 
         {
            System.out.println(e);
         }

      %>
         <jsp:forward page="boardList.jsp"></jsp:forward>
      <%
      }
   %>

</body>
</html>