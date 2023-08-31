<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="quiz.MemberDAO"/>
	<c:set var="result" value="${dao.loginChk(param.id, param.pwd) }"/>
	<c:if test="${result==0 }">
		<c:set var="userId" value="param.id" scope="session"/><!-- 세션 만들기  -->
		<script type="text/javascript">
			alert("로그인 성공");	
			location.href="successLogin.jsp";
		</script>
	</c:if>
	<c:if test="${result==1 }">
	<script type="text/javascript">
		alert("비밀번호가 일치하지 않습니다.");
		window.history.back();
	</script>
	</c:if>
	<c:if test="${result==-1 }">
	<script type="text/javascript">
		alert("아이디가 존재하지 않습니다.");
		window.history.back();
	</script>
	</c:if>
	
</body>
</html>