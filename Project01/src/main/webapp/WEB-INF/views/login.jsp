<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>- login -</title>

<link rel="stylesheet" href="${path}/resources/css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="${path}/resources/css/signin.css">
<link rel="stylesheet" href="${path}/resources/css/style.css">


</head>
<body class="text-center">
<div>
<%-- <%@include file ="header.jsp" %> --%>
</div>
<form method=post action="/project/login_check" id=frmLogin class="form-signin">
	<div>
		<h1 class="logo"><a href="/project">LOGO</a></h1>
	    <input type="text" id="userid" name="userid" class="form-control" placeholder="ID" required autofocus>
		<input type=hidden name=user id=user value="${fail_user}">
	    <input type="password" id="passcode" name="passcode" class="form-control" placeholder="Password" required>
	</div><br>
	<div class="d-grid gap-2">
		<input type="submit" class="btn btn-primary" id=login value="로그인">
	</div><br>
	<div align=center><a href='/project/signon'>회원가입</a></div>
</form>
<c:if test="${fail_user=='fail'}">
	<script type="text/javascript">
		alert("로그인에 실패했습니다. 아이디와 비밀번호를 다시 입력해주세요.");
	</script>
</c:if>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
// 로그인 -> 로그인버튼
.on('click','#login',function() {
	if($('#userid').val()=='') {
		alert('아이디를 입력하세요.');
		return false;
	}
	if($('#passcode').val()=='') {
		alert('비밀번호를 입력하세요.');
		return false;
	}
})
</script>
</html>