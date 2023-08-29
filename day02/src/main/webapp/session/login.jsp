<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% if( session.getAttribute("nick") != null){ %>
	<%=session.getAttribute("nick")%>님 로그인 상태입니다.

<a href="main.jsp"> main 이동</a>
<%}else{ %>

<form action="chkUser.jsp" method="post">
<input type="text" name="id" >
<input type="text" name="pwd">
<input type ="submit" value="로그인하기">
</form>
<%} %>
</body>
</html>