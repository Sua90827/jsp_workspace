<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	logout.jsp<br>
	<% session.invalidate(); %>
	<script type = "text/javascript">
	alert("�α׾ƿ�");
	location.href="login.jsp";
	</script>
</body>
</html>