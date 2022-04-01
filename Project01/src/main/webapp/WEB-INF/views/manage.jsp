<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
	<meta charset="UTF-8">
	<title> - 실시간 예약 - </title>
	<script src='https://code.jquery.com/jquery-3.6.0.js'></script>
	<link rel="stylesheet" href="${path}/resources/css/reset.css"> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="${path}/resources/css/style.css">
	<style>
	.box {
	   display:none;
	}
	.box.on {
	   display:block;
	}
	.top {
	   font-size:20px;
	   font-weight:bold;
	   margin-left:700px;
	   margin-top:50px;
	}
	.box_tab {
		width:1200px;
		margin:0 auto;
		font-size:1.32rem;
		font-weight:500;
	}
	.box_tab ul{text-align:center;}
	.box_tab ul li {
		margin:0 5px;
		display:inline-block;
		box-sizing: border-box;
	    border: 2px solid #ddd;
	    border-radius: 4px;
	    border-radius:100px;
	}
	
	.box_tab ul li a {
	    color:#333;
	    display:block;
		padding:10px 15px;
	}
	div.wrap {
		padding-top:150px;
	
	}
	.book-list input[type=button]{margin:10px 0; cursor:pointer; width:100%; text-align:center; padding:10px 0;}
</style>
</head>

<body>
<%@include file ="header_sub.jsp" %>
<div class="b_container">
	<div>
		<div class="box_tab">
			<ul class="fixed">
				<li class="on"><a href="#" id="box_tab01">예약관리</a></li>
				<li><a href="#" id="box_tab02">객실관리</a></li>
				<li><a href="#" id="box_tab03">회원관리</a></li>
			</ul>
		</div>
		<div class="box_wrap">
			<div class="box box_tab01 on"><%@include file = "reservation.jsp" %></div>
			<div class="box box_tab02"><%@include file = "roomInfo.jsp" %></div>
			<div class="box box_tab03"><%@include file = "member.jsp" %></div>
		</div>
	</div>
</div>
<%@include file ="footer.jsp" %>
</body>
<script>
$(document)
.on('click','.box_tab ul li', function(){
   $('.box').removeClass('on');
   $('.box_tab ul li').removeClass('on');
   let str = "." + $(this).children().attr('id');
 
   console.log(str);
   $(this).addClass('on');
   $(str).addClass('on');
});

</script>
</html>