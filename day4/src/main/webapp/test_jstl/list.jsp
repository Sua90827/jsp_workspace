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
	<jsp:useBean id="dao" class="day03.MemberDAO"/>
	<table border="1">
		<tr>
			<th>id</th><th>name</th><th>addr</th>
		</tr>
		
		<c:forEach var="dto" items="${dao.getList() }">
			<tr>
				<td>${dto.getId() }</td>
				<td>
					<a href="del.jsp?id=${dto.id }">
					${dto.getName() }				
					</a>
				</td>
				<td>${dto.addr }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>