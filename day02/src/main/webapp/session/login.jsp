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
	<%=session.getAttribute("nick")%>�� �α��� �����Դϴ�.

<a href="main.jsp"> main �̵�</a>
<%}else{ %>

<form action="chkUser.jsp" method="post">
<input type="text" name="id" >
<input type="text" name="pwd">
<input type ="submit" value="�α����ϱ�">
</form>
<%} %>
</body>
</html>