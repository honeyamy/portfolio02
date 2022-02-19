<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
<link rel="stylesheet" href="${path}/resources/css/reset.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="${path}/resources/css/signin.css">
<link rel="stylesheet" href="${path}/resources/css/style.css">
<style>
@media (min-width: 576px){
	.col-sm-10 {width:68.333333%;}
	.col-sm-2 {width:31.666667%;}
}
.btn {padding: 0.375rem 2.75rem;}
</style>
</head>
<%-- <%@include file ="header.jsp" %> --%>
<body>
	<form>
		<div class="row mb-3">
		    <label for="name" class="col-sm-2 col-form-label">이름</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="name" name="name" placeholder="Name">
		    </div>
		</div>
		
		<fieldset class="row mb-3">
	    	<legend class="col-form-label col-sm-2 pt-0">성별</legend>
		    <div class="col-sm-10">
		        <input class="form-check-input" type="radio" name="gender" id="gender" value="남성" checked>
		        <label class="form-check-label" for="gender">남성</label>
		        <input class="form-check-input" type="radio" name="gender" id="gender" value="여성">
		        <label class="form-check-label" for="gender">여성</label>
			</div>
		</fieldset>

		<div class="row mb-3">
		    <label for="mobile" class="col-sm-2 col-form-label">전화번호</label>
		    <div class="col-sm-10">
		      <input type="number" class="form-control" id="mobile" name="mobile" placeholder="Mobile">
		    </div>
		</div>

		<div class="row mb-3">
		    <label for="userid" class="col-sm-2 col-form-label">아이디</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="userid" name="userid" placeholder="ID">
		    </div>
		</div>
		
		<div class="row mb-3">
		    <label for="passcode" class="col-sm-2 col-form-label">비밀번호</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" id="passcode" name="passcode" placeholder="Password">
		    </div>
		</div>
		
		<div class="row mb-3">
		    <label for="pw_check" class="col-sm-2 col-form-label">비밀번호 확인</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" id="pw_check" name="pw_check" placeholder="Password Check">
		    </div>
		</div><br>

		<div class="d-grid gap-2 d-md-block">
			<input class="btn btn-primary" type="submit" id=done value="완료">
			<input class="btn btn-primary" type="reset" id=reset value="비우기">
			<input class="btn btn-primary" type="button" id=cancel value="취소">
		</div>
	</form>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.on('click','#done',function() {
	if($('#name').val()=='') {
		alert('이름을 입력하세요.');
		return false;
	}
	if($('input[name=gender]:checked').length==0) {
		alert('성별을 입력하세요.');	
		return false;
	}
	if($('#mobile').val()=='') {
		alert('전화번호를 입력하세요.');
		return false;
	}
	if($('#userid').val()=='') {
		alert('아이디를 입력하세요.');
		return false;
	}
	if($('#passcode').val()=='') {
		alert('비밀번호를 입력하세요.');
		return false;
	}
	if($('#pw_check').val()=='') {
		alert('비밀번호확인을 입력하세요.');
		return false;
	}
	if($('#passcode').val()!=$('#pw_check').val()) {
		alert('비밀번호와 비밀번호확인이 다릅니다.');
		return false;
	}
	
	let oParam={name:$('#name').val(),gender:$('input[name=gender]:checked').val(),
			userid:$('#userid').val(),passcode:$('#passcode').val(),
			mobile:$('#mobile').val()};
	console.log(oParam);
	$.post('/project/signon_check',oParam,function(txt){
		if(txt=="overlap") {
			alert("이미 등록된 아이디입니다.");
		} else if(txt=="ok") {
			alert("회원가입이 완료되었습니다.");
			document.location="/project/login";
		} else {
			alert("회원가입에 실패했습니다. 다시 진행해주세요.");
		}
	},'text');
	return false;
})

//회원가입 -> 비우기 버튼
.on('click','#reset',function() {
	if(confirm("작성한 것을 전부 지우시겠습니까?")) {
		$('#name,#mobile,#userid,#passcode,#pw_check').val('');
		$('input[name=gender]:checked').prop('checked',false);
		return false;
	}
})
//회원가입 -> 취소 버튼
.on('click','#cancel',function() {
	if(confirm("취소하면 로그인화면으로 돌아갑니다. 취소하시겠습니까?")) {
		document.location="/project/login";
		return false;
	}
})
</script>
</html>