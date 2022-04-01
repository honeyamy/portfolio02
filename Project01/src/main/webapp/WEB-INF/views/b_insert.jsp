<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 등록</title>
<link rel="stylesheet" href="${path}/resources/css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<style>
#content {
	width: 800px;
	height: 150px;
	font-size: 15px;
	padding: 10px;
}

.a {
 	 display: block; 
 	 margin: 10px 0;
	 font-size: 15px;
}
.div {
	 margin-left:25%;
}
h5 {
	margin-top:5%;
	margin-left:45%;
	font-size:1.8rem;
}
input {
	font-size:15px;
}
#insert {
	font-size: 18px;
	padding: 5px 12px;
	background-color: #fff;
	border: 1px solid #000;
 	font-weight:300;
	margin-left:74%;
}
</style>
<body>
<%@include file ="header_sub.jsp" %>
<div class="b_container">
	<h5>게시판 등록</h5>
	<form action="/project/insertBoard" method="post">
	    <div class=div>
	        <label class=a>제목</label>
	        <input name="title">
	    </div>
	    <div class=div>
	        <label class=a>내용</label>
	        <textarea rows="5" id="content" name="content"></textarea>
	    </div>
	    <div class=div>
	        <label class=a>글쓴이</label>
	        <input type=text name="writer" value="${userid}">
	    </div>
	    <br>
	    <button id="insert" class="insert">완료</button>
	</form>
</div>
<%@include file ="footer.jsp" %>
</body>
<script src="http://code.jquery.com/jquery-3.5.0.js"></script>
<script>
</script>
</html>