<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection con = DBConnect.getConnect();
		System.out.print("jsp =>"+con );
		String sql = "select * from members";
		PreparedStatement ps = con.prepareStatement(sql); //명령어 전송하는 전송객체
		ResultSet rs = ps.executeQuery();
		while(rs.next()){%>
			id : <%=rs.getString("id") %><br>
			pwd : <%=rs.getString("pwd") %><br>
			name : <%=rs.getString("name") %><br>
			addr : <%=rs.getString("addr") %><br>
			tel : <%=rs.getString("tel") %>
			<hr>
		<%} %>
		<a href="insert.jsp">데이터 추가</a>
	
</body>
</html>