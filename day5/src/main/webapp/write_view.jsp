<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="write_save.jsp" method="post">
		name : <input type="text" name="name"><br>
		title : <input type="text" name="title"><br>
		content : <textarea rows="" cols="" name="content"></textarea>
		<input type="submit" value="register">
		<!-- 
		history.back() : 웹 브라우저에서 저장되어있는 이전으로 이동
		 -->
		<input type="button" value="목록이동" onclick="history.back()">
	</form>
</body>
</html>