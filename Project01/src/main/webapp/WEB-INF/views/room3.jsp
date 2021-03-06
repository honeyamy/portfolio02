<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
	<meta charset="UTF-8">
	<title> - Home - </title>
	<script src='https://code.jquery.com/jquery-3.6.0.js'></script>
	<link rel="stylesheet" href="${path}/resources/css/reset.css"> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
<style>
.swiper {
	flex-shrink:0;
  	width: 500px;
  	margin-left:0;
    margin-top:80px;
    background-size: contain;
    position:relative;
    transition-property:transform;
    
}

.swiper-slide img {
         display: block; 
         width: 100%; 
         height: 100%; 
         object-fit: cover;
         position:relative;
      }
.room_info {
	font-size:25px;
}
.Done {
	border:1px solid black;
	width:500px;
	height:80px;
	margin-left:870px;
    margin-top:20px;
}
.table1 {
	margin-left:900px;
    margin-top:-500px;
    width:600px;
    height:400px;
}
.text1 {
	margin-left:500px;
    margin-top:200px;
    width:1000px;
    height:500px;
}
.room_title {
	font-size:20px;
	margin-left:300px;
    margin-top:360px;
}
.normal {
	font-size:19px;
	margin-left:500px;
    margin-top:-70px;
}
.normal_list {
	margin-left:500px;
    margin-top:50px;
}
.bath_room {
	font-size:19px;
	margin-left:800px;
	margin-top:-150px;
}
.bath_room_list {
	margin-left:800px;
    margin-top:55px;
}
.etc {
	font-size:19px;
	margin-left:1100px;
	margin-top:-175px;
}
.etc_list {
	margin-left:1100px;
	margin-top:50px;
}
.special {
	font-size:20px;
	margin-left:300px;
    margin-top:200px;
}
.special_service {
	margin-left:500px;
	margin-top:-50px;
}
.information {
	font-size:20px;
	margin-left:300px;
    margin-top:200px;
}
.info_list {
	margin-left:500px;
	margin-top:-40px;
}
</style>
<body>
<%@include file ="header_sub.jsp" %>
<div class="b_container">
<div
      style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
      class="swiper mySwiper2"
    >
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="resources/images/twin.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="resources/images/twin2.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="resources/images/twin3.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="resources/images/twin4.jpg" />
        </div>  
		<div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      </div>
      <div thumbsSlider="" class="swiper mySwiper">
      <div class="swiper-wrapper">
	        <div class="swiper-slide">
          <img src="resources/images/twin.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="resources/images/twin2.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="resources/images/twin3.jpg" />
        </div>
        <div class="swiper-slide">
          <img src="resources/images/twin4.jpg" />
        </div> 
	      </div>
     </div>
    </div>
<table align=center class=table1>
<tr><th class=room_info>Twin Room<hr></th></tr>
<tr><td style='font-weight:bold;'>?????????</td><td>103???</td></tr>
<tr><td style='font-weight:bold;'>????????????</td><td>??????</td></tr>
<tr><td style='font-weight:bold;'>??????????????????</td><td>3</td></tr>
<tr><td style='font-weight:bold;'>?????????</td><td>70,000???</td></tr>
<tr><td style='font-weight:bold;'>?????????/????????????</td><td>15:00/12:00</td></tr>
</table>
<table align=center class=table2>
<tr><td><input type=button id=btnDone name=btnDone value="????????? ????????????" class="Done"></td></tr>
</table>
<h2 class="room_title">????????????</h2>
<div class="normal">??????</div>
<div class="normal_list">
	<p>????????? / ????????? /?????????</p>
	<p>????????? / ?????? /????????????</p>
	<p>??????????????? / 55" UHD TV</p>	
</div>
<div class="bath_room">??????</div>
<div class="bath_room_list">
	<p>1?????? ?????? ??? ??????/</p>
	<p>????????? / ?????? ??????/</p>
	<p>?????? / ??????????????????/</p>
	<p>????????????</p>
</div>
<div class="etc">??????</div>
<div class="etc_list">
	<p>?????? ?????? 1??? 2??? /</p>
	<p>????????? ?????? ????????? /</p>
	<p>?????? ??? ??? ?????????</p>
</div>
<h2 class="special">???????????????</h2>
<div class="special_service">
	<ul>
		<li>- ????????? ?????? ??????</li>
		<li>- ??? ?????? ????????? ?????? ?????????(??????,????????????)</li>
		<li>- ????????? ????????? ??????</li>
		<li>- ?????? ??????</li>
	</ul>
</div>
<h2 class="information">????????????</h2>
<div class="info_list">
	<ul>
		<li>?????????????????? ?????? ?????? ????????? ?????? ???????????????, ????????? ?????? ???????????? ????????????.</li>
		<li style='color:gray;'>????????? ????????? ?????? ?????? ??????, 1??? ??? 20,000?????? ?????? ?????????.</li>
	</ul>
</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script>
$(document)
.on('click','#btnDone',function(){
	document.location="/project/book";
	return false;
})
</script>
<script>

var swiper = new Swiper(".mySwiper", {
	  loop: true,
	  spaceBetween: 5,
	  slidesPerView: 4,
	  freeMode: true,
	  watchSlidesProgress: true,
	  navigation: {
		  nextEl: ".swiper-button-next",
		  prevEl: ".swiper-button-prev", 
	  },
	});
	var swiper2 = new Swiper(".mySwiper2", {
	  loop: true,
	  spaceBetween: 5,
	  navigation: {
	    nextEl: ".swiper-button-next",
	    prevEl: ".swiper-button-prev",
	  },
	  thumbs: {
	    swiper: swiper,
	  },
	});
</script>
</html>