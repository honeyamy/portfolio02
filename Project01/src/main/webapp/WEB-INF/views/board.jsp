<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<link rel="stylesheet" href="${path}/resources/css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="${path}/resources/css/style.css">
</head>
 <style>
	  h5 {
 	  	margin-left:49%; 
	  	font-size:1.8rem;
	  	font-weight:500;
	  }
	  a {
	  	text-decoration : none;
	  }
	  table {
	 	border-collapse: collapse;
 	 	width: 1000px;     
	 	margin-top : 20px;
	 	text-align: center;
	  }
	  td {
 	  	border : 1px solid black; 
	  	height: 40px;
	  	font-size:1.0rem;
	  }
	  th {
	  	border : 1px solid black;
	  	height: 40px;
	  	font-size : 1.0rem;
/* 	  	background:#C1B7A9; */
 	  	background:rgba(193, 183, 169, 0.5);
	  }
	  thead {
	  	font-weight: 500;
	  }
	  .table_wrap {
	  	margin : 0 0 0 20px;
	  }
	  .table_wrap td, .table_wrap th {
	  	vertical-align:middle;
	  }
	  .bno_width {
	  	width: 12%;
	  }
	  .writer_width {
	  	width: 20%;
	  }
	  .regdate_width {
	  	width: 15%;
	  }
	  .updatedate_width {
	  	width: 15%;
	  }
	  .write {
	  	font-size: 18px;
	    padding: 5px 12px;
	    background-color: #fff;
	    border: 1px solid #000;
 	    font-weight:300;
	    margin-left:60%;
	  }
	  
	  .pageInfo{
	     list-style : none;
	     display: inline-block;
	     margin: 50px 0 0 0;      
	  }
  	  .pageInfo li{
	     float: left;
	     font-size: 1.3rem;
	     margin-left: 18px;
	     padding: 7px;
 	     font-weight: 300; 
  	  }
	  a:link {color:black; text-decoration: none;}
	  a:visited {color:black; text-decoration: none;}
		.b_container a:hover {color:black; text-decoration: underline;}
	  .active {text-decoration: underline;}
 </style>
<body>
<%@include file ="header_sub.jsp" %>
<div class="b_container">
	<h5>FAQ</h5>
	<div class="table_wrap" align=center>
		<input type=button class="write" id="write" value="글쓰기">
		<table>
			<thead>
				<tr>
					<th class="bno_width">번호</th>
					<th class="title_width">제목</th>
					<th class="writer_width">작성자</th>
					<th class="regdate_width">작성일</th>
					<th class="updatedate_width">수정일</th>
				</tr>
			</thead>
			<c:forEach items="${list}" var="list" varStatus="status">
	            <tr>
	<%--             	<td><c:out value="${list.bno}"/></td> --%>
	            	<td>
		     			<c:out value="${status.count}"/>
					</td>
					<td>
						<a id=get href='<c:out value="${list.bno}"/>'>
	                        <c:out value="${list.title}"/>
	                    </a>
	                </td>
	                <td><c:out value="${list.writer}"/></td>
	                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.regdate}"/></td>
	                <td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.updateDate}"/></td>
	            </tr>
	        </c:forEach>
		</table>
		
		<div class="pageInfo_wrap" >
	        <div class="pageInfo_area" id="pageInfo_area">
	        	<ul id="pageInfo" class="pageInfo">
	        	<c:if test="${pm.prev}">
	                <li class="previous"><a href="${pm.startPage-1}">◀</a></li>
	            </c:if>
	            
	        	<c:forEach var="num" begin="${pm.startPage}" end="${pm.endPage}">
	        		<li class="pageInfo_btn ${pm.page.pageNum==num?"active":""}"><a href="${num}">${num}</a></li>
	        	</c:forEach>
	        	
	        	<c:if test="${pm.next}">
	                <li class="next"><a href="${pm.endPage+1}">▶</a></li>
	            </c:if>  
	        	</ul>
	        </div>
	    </div>
	    
		<form id="move" method="get">
			<input type="hidden" name="pageNum" value="${pm.page.pageNum}">
	        <input type="hidden" name="amount" value="${pm.page.amount}">    
	    </form>
	</div>
</div>
<%@include file ="footer.jsp" %>
</body>
<script src="http://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
.ready(function() {
	let result = '<c:out value="${result}"/>';
	
	checkAlert(result);
	
	function checkAlert(result){
		console.log("["+result+"]");
		if(result=='') return;
		if(result=="ok"){
			alert("등록이 완료되었습니다.");
		}
		if(result=="update") {
			alert("수정이 완료되었습니다.");
		}
		if(result=="delete") {
			alert("삭제가 완료되었습니다.");
		}
	}	
})

.on('click','#get',function(e) {
	e.preventDefault(); 
    $('#move').append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
    $('#move').attr("action","/project/getBoard");
    $('#move').submit();
})
.on('click','.pageInfo a',function(e) {
	e.preventDefault();
	 $('#move').find("input[name='pageNum']").val($(this).attr("href"));
	 $('#move').attr("action", "/project/listBoard");
	 $('#move').submit();
})
.on('click','#write',function() {
	if(${userid!=null}) {
		document.location="/project/insertBoard";
	}
	if(${userid==null}) {
		alert("글쓰기는 로그인 후 가능합니다.");
	}
})
</script>
</html>