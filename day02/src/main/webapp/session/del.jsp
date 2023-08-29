<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>del 페이지</h1>
   <%
      session.removeAttribute("id"); //하나의 세션 만료, 삭제\
      session.setMaxInactiveInterval(5); //세션 5초 지난 후에 만료
      session.invalidate(); // 세션 기다림 없이 바로 삭제
   %>
   <hr>
   <a href="set.jsp">set.jsp</a>
   <a href="get.jsp">get.jsp</a>
   

</body>
</html>