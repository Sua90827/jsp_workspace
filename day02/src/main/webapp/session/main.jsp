<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%if( session.getAttribute("nick") == null){%>
	<script>
	alert('로그인 후 이용해줘용');
	location.href="login.jsp";
	</script>
	<%} %>
	
	main.jsp<br>
	<%= session.getAttribute("nick") %>님 환영합니다!!<br>
	로그인 성공 사용자만 접근 가능.
	<hr>
	<a href="logout.jsp">로그아웃</a>
	<a href="login.jsp">로그인 페이지 이동</a>
</body>
</html>