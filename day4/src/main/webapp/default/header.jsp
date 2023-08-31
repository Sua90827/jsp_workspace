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
	<header>
	<h2>CARE LAB</h2>
	<hr>
	<a href="/day4/member/index.jsp">HOME</a> 
	<c:if test="${userId == null }">
	<a href="/day4/member/login.jsp">회원정보</a>
	<a href="/day4/member/login.jsp">로그인</a>
	</c:if>
	<c:if test="${userId !=null }">
	<a href="/day4/member/memberInfo.jsp">회원정보</a>
	<a href="/day4/member/logout.jsp">로그아웃</a>
	</c:if>
	<hr> 
	</header>
</body>
</html>