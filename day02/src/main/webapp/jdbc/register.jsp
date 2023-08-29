<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		Connection con = DBConnect.getConnect();
		String sql = "insert into members(id, pwd, name, addr, tel) values(?,?,?,?,?)";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, request.getParameter("id"));
		ps.setString(2, request.getParameter("pwd"));
		ps.setString(3, request.getParameter("name"));
		ps.setString(4, request.getParameter("addr"));
		ps.setString(5, request.getParameter("tel"));
		
		int result = ps.executeUpdate();
		response.sendRedirect("select.jsp");
	%>
</body>
</html>