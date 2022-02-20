<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title> - Home - </title>
	<script src='https://code.jquery.com/jquery-3.6.0.js'></script>
	<link rel="stylesheet" href="${path}/resources/css/reset.css"> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<body>
<%@include file ="header.jsp" %>
<div class="wrap">
	<div class="visual box">
		<div class="swiper mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="${path}/resources/images/bg.jpg">
					<div class="visual_box">
						<h3>둘러보기</h3>
						<p>Bueno dias의 특별한 시설을 둘러보세요.</p>
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
			  					<path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
							</svg>
						</span>
					</div>
				</div>
				<div class="swiper-slide">
					<img src="${path}/resources/images/bg02.jpg">
					<div class="visual_box">
						<h3>Deluxe Room</h3>
						<p>Bueno dias만의 차별화 된 객실을 만나보세요.</p>
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16">
			  					<path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
							</svg>
						</span>
					</div>
				</div>
<!-- 				<div class="swiper-slide"> -->
<%-- 					<img src="${path}/resources/images/bg.jpg"> --%>
<!-- 					<div class="visual_box"> -->
<!-- 						<h3>slide03 - 이미지 준비중</h3> -->
<!-- 						<p>Bueno dias의 특별한 시설을 둘러보세요.</p> -->
<!-- 						<span> -->
<!-- 							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16"> -->
<!-- 			  					<path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/> -->
<!-- 							</svg> -->
<!-- 						</span> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="swiper-slide"> -->
<%-- 					<img src="${path}/resources/images/bg.jpg"> --%>
<!-- 					<div class="visual_box"> -->
<!-- 						<h3>slide04 - 이미지 준비중</h3> -->
<!-- 						<p>Bueno dias의 특별한 시설을 둘러보세요.</p> -->
<!-- 						<span> -->
<!-- 							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right-circle" viewBox="0 0 16 16"> -->
<!-- 			  					<path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/> -->
<!-- 							</svg> -->
<!-- 						</span> -->
<!-- 					</div> -->
<!-- 				</div> -->
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</div>
	<section class="main_section msection02 box">
		<ul class="fixed">
			<li><a href="#"><img src="${path}/resources/images/msection02-01.jpg"></a></li>
			<li><a href="#"><img src="${path}/resources/images/msection02-02.jpg"></a></li>
			<li><a href="#"><img src="${path}/resources/images/msection02-03.jpg"></a></li>
			<li><a href="#"><img src="${path}/resources/images/msection02-04.jpg"></a></li>
			<li><a href="#"><img src="${path}/resources/images/msection02-05.jpg"></a></li>
		</ul>
	</section>
	<section class="main_section msection03 box">
	</section>
	<!-- footer 영역-->
</div>

<script>
	$(document)
	.ready(function() {
		let result = '${result}';
		if(result === 'already_login'){
			alert('로그아웃 후에 로그인 가능합니다.');
		}
	})
	
	;
	var swiper = new Swiper(".mySwiper", {
		effect : "fade",
		loop : "true",
		allowTouchMove : "false",
		simulateTouch : "false",
		draggable : "false",
		touchRatio : 0,
		autoplay: {
			delay: 4000,
		},
		navigation : {
			nextEl : ".swiper-button-next",
			prevEl : ".swiper-button-prev",
		},
	});
</script>
    <script type="text/javascript">
        window.onload = function () {
            var elm = ".box";
            $(elm).each(function (index) {
                // 개별적으로 Wheel 이벤트 적용
                $(this).on("mousewheel DOMMouseScroll", function (e) {
                    e.preventDefault();
                    var delta = 0;
                    if (!event) event = window.event;
                    if (event.wheelDelta) {
                        delta = event.wheelDelta / 120;
                        if (window.opera) delta = -delta;
                    } 
                    else if (event.detail)
                        delta = -event.detail / 3;
                    var moveTop = $(window).scrollTop();
                    var elmSelecter = $(elm).eq(index);
                    // 마우스휠을 위에서 아래로
                    if (delta < 0) {
                        if ($(elmSelecter).next() != undefined) {
                            try{
                                moveTop = $(elmSelecter).next().offset().top;
                            }catch(e){}
                        }
                    // 마우스휠을 아래에서 위로
                    } else {
                        if ($(elmSelecter).prev() != undefined) {
                            try{
                                moveTop = $(elmSelecter).prev().offset().top;
                                
                            }catch(e){}
                        }
                    }
                     
                    // 화면 이동
                    $("html,body").stop().animate({
                        scrollTop: moveTop + 'px'
                    }, {
                        duration: 150,
                        complete: function () {
                        }
                    });
                });
            });
        }
    </script>
</body>	
</html>
