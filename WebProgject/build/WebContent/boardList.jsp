<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   request.setCharacterEncoding("utf-8");
%>

<%
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

   } catch (Exception e) 
   {
      System.out.println(e);
   }
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="CSS/loginCSS.css?ver=2">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

   <%@ include file="/header.jsp"%>
   <%
      String id = (String)session.getAttribute("loginID");
      String title = request.getParameter("title");
      String content = request.getParameter("content");      
      
      try {
         // select 문장을 문자열 형태로 구성한다.
         String sql = "select * from board_table";
         pstmt = conn.prepareStatement(sql);

         // select 를 수행하면 데이터정보가 ResultSet 클래스의 인스턴스로 리턴됨.
         ResultSet rs = pstmt.executeQuery();
   %>
      <div class="container">
      <h2>사용자 게시판</h2>
      <p>원하시는 게시물을 클릭해주세요.</p>
      <table class="table table-hover">
         <thead>
            <tr>
               <th>글 번호</th>
               <th>이름</th>
               <th>제목</th>
               <th>날짜</th>
            </tr>
         </thead>
         <tbody>
                           
   <%
         // 마지막 데이터까지 반복함.         
         while (rs.next()) 
         {
            String numberVal = rs.getString(1);
            String nameVal = rs.getString(2);
            String titleVal = rs.getString(3);
            String dateVal = rs.getString("date");
            System.out.println(dateVal);
         %>
            <tr>
               <td><%=numberVal %></td>
               <td><%=nameVal %></td>
               <td><%=titleVal %></td>
               <td><%=dateVal %></td>
            </tr>
         <%
            
/*             out.println(" 글 번호 : " + rs.getString(1) + "<br>&nbsp&nbsp name : " + rs.getString(2)
                  + "<br>&nbsp&nbsp title : " + rs.getString(3) + "<br>&nbsp&nbsp content : "
                  + rs.getString(4) + "<br>&nbsp&nbsp date : " + rs.getString(5)
                  + "<br>&nbsp&nbsp check_by_admin : " + rs.getString(6) + "<br><br>"); */
                  
            
         }

         // 사용한 자원의 반납.
         rs.close();
         pstmt.close();
         conn.close();
      } catch (Exception e) {
         System.out.println(e);
      }
   %>
         </tbody>      
      </table>
   </div>

</body>
</html>