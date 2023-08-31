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
	<c:set var="num" value="값 지정"/>//변수 만드는 방식
	값 : ${num }
	<hr>
	<c:set var="id" value="abc"/>
	<c:if test="${id == 'abc1' }">//조건식
		두 값은 같다 : ${id }<br>
	</c:if>
	<hr>
	
	<%
		String[] arr = {"111","222","333"};
	%>
	<c:set var="values" value="<%= arr %>"/>
	
	<c:forEach var="i" begin="10" end="20" step"2">
		${i }, 
	</c:forEach>
	<hr>
	<c:forEach var="item" items="${values }">
		${item },
	</c:forEach>
	<hr>
	<%--
	<c:import url="el01.jsp"/>
	<hr>
	<c:redirect url="el02_login.jsp"/>
	 --%>
	 
	 <c:set var="s_name" value="세션설정" scope="session"/>//세션 만들기
	 <c:remove var="s_name111" scope="session"/>//세션 종료
	 <a href="jstl02.jsp">jstl02이동</a>
	 <hr>
	 <c:set var="nick">//nick이라는 변수에 홍길동을 넣겠다는 뜻.
	 	홍길동
	 </c:set>
	 
	 <c:choose>
	 	<c:when test="${ nick =='홍길동 }">
	 		이름 : ${nick }
	 	</c:when>
	 	<c:when test="${nick ne '홍길동 }">
	 		이름 : ${nick }
	 	</c:when>
	 	<c:otherwise>
	 		else 구문
	 	</c:otherwise>
	 </c:choose>
	 
	 <hr>
	 <c:set var="n" value="100"/>
	 <c:choose>
	 	<c:when test="${n>100 }">
	 		100보다 크다
	 	</c:when>
	 	<c:otherwise>
	 		else 구문
	 	</c:otherwise>
	 </c:choose>
</body>
</html>