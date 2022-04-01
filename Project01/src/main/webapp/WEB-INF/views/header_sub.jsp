<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<div class="nav_wrap sub_nav_wrap">
		<nav class="top_nav">
			<div class="container d-flex flex-wrap">
				<form name="frm" action="/project/logout" method="POST">
					<input type="hidden" name="userid" value="${userid}">
				</form>
				<ul class="nav">
					<c:if test="${userid==null}">
						<li class="nav-item"><a href="/project/login">로그인</a></li>
						<li class="nav-item"><a href="/project/signon">회원가입</a></li>
					</c:if>
					<c:if test="${userid!=null}">
						<c:if test="${m_type=='관리자'}">
							<li class="nav-item">${userid}</li>	
							<li class="nav-item"><a href="/project/manage">[ 관리자페이지 ]</a></li>
							<li class="nav-item"><a href="#" onclick="if(confirm('로그아웃하시겠습니까?')){javascript:document.frm.submit();return false;}">로그아웃</a></li>
						</c:if>
						<c:if test="${m_type!='관리자'}">
							<li class="nav-item"><a href="/project/mypage">${userid}</a></li>
							<li class="nav-item"><a href="#" onclick="if(confirm('로그아웃하시겠습니까?')){javascript:document.frm.submit();return false;}" class="px-2">로그아웃</a></li>
						</c:if>
					</c:if>
				</ul>
			</div>
		</nav>
		<div class="container bueno_header">
			<header class="d-flex flex-wrap justify-content-center border-bottom">
				<a href="/project/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-decoration-none">
					<span class="fs-4">Bueno días</span>
				</a>
				<ul class="nav nav-pills">
					<li class="nav-item">
						<a href="/project/room">객실소개</a>
						<ul class="b_sub_nav">
							<li><a href="/project/room">Room-A</a></li>
							<li><a href="/project/room2">Room-B</a></li>
							<li><a href="/project/room3">Room-C</a></li>
							<li><a href="/project/room4">Room-D</a></li>
							<li><a href="/project/room5">Room-E</a></li>
						</ul>
					</li>
					<li class="nav-item"><a href="#">예약안내</a></li>
					<li class="nav-item">
						<a href="/project/listBoard">커뮤니티</a>
						<ul class="b_sub_nav">
							<li><a href="/project/listBoard">공지사항</a></li>
							<li><a href="#">QNA</a></li>
						</ul>
					</li>
					<li class="nav-item" id="sub_4"><a href="/project/sub04">실시간예약</a></li>
				</ul>
			</header>
		</div>
	</div>
	<script src='https://code.jquery.com/jquery-3.6.0.js'></script>
	<script>
		$(document)
		.on('click','#sub_4', function() {
			let result = '${result}';
			if(result === 'do_login'){
				alert('로그인 후 이용 가능합니다.');
			}
		})
		.ready(function(){
// 			$('.bueno_header .nav > li.nav-item').mouseover(function(){
// 				$('.b_sub_nav', this).slideDown();
// 				return false;
// 			});
// 			$('.bueno_header .nav > li.nav-item').mouseout(function(){
// 				$('.b_sub_nav', this).slideUp();
// 				return false;
// 			}); 
			$('.bueno_header .nav > li.nav-item').hover(function(){
				$('.b_sub_nav', this).slideToggle(500);
				return false;
			});

		})
		;
	</script>