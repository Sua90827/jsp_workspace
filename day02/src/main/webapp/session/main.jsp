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
	alert('�α��� �� �̿������');
	location.href="login.jsp";
	</script>
	<%} %>
	
	main.jsp<br>
	<%= session.getAttribute("nick") %>�� ȯ���մϴ�!!<br>
	�α��� ���� ����ڸ� ���� ����.
	<hr>
	<a href="logout.jsp">�α׾ƿ�</a>
	<a href="login.jsp">�α��� ������ �̵�</a>
</body>
</html>