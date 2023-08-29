<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String DB_id = "1", DB_pwd="1", DB_nick="홍길동";
	
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if( id.equals(DB_id) && pwd.equals(DB_pwd)){
			session.setAttribute("nick", DB_nick);
			session.setAttribute("login", id);
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>