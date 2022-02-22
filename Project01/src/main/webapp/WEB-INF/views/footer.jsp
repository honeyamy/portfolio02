<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<footer class="box">
	<div class="sitemap container">
		<ul>
			<li><a href="#">객실소개</a></li>
			<li><a href="#">예약안내</a></li>
			<li><a href="#">커뮤니티</a></li>
			<li><a href="#">실시간예약</a></li>
		</ul>
	</div>
	<div class="container f_logo">
		<a href="/project/" class="align-items-center mb-3 mb-md-0 me-md-auto text-decoration-none">
			<span class="fs-4">Bueno días</span>
		</a>
	</div>
	<div class="container f_info">
		<p>
			대표 : bueno | bueno dias | 충청남도 천안시 동남구 대흥로 215
			사업자번호 : 321-12-1357 | TEL : 041-561-1122 | FAX : 041-561-1122
			<br>
			copyright (c) 2020 bueno dias. all right reserved.
		</p>
	</div>
</footer>
<script>
	$(document)
	.ready(function() {
		let result = '${result}';
		if(result === 'already_login'){
			alert('로그아웃 후에 로그인 가능합니다.');
		}
	})
	;
</script>