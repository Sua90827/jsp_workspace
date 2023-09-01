<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="test.TestDAO"></jsp:useBean>
	<table border="1">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>title</th>
			<th>savedate</th>
			<th>hit</th>
			<th>idgroup</th>
			<th>step</th>
			<th>indent</th>
		</tr>
		<c:forEach var="dto" items="${dao.list() }">
			<tr>
				<td>${dto.id }</td>
				<td>${dto.name }</td>
				<td>${dto.title }</td>
				<td>${dto.savedate }</td>
				<td>${dto.hit }</td>
				<td>${dto.idgroup }</td>
				<td>${dto.step }</td>
				<td>${dto.indent }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="8">
				<a href="write_view.jsp">글 등록</a>
		</tr>
	</table>
</body>
</html>