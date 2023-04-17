<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/find.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	
	$('#member_pw2').blur(function() {
		const pw = $('#member_pw').val()
		const pw2 = $(this).val()
		
		if(pw == pw2) {
			$("#pw-check").html('비밀번호가 일치합니다.');
			$("#pw-check").css('color','green');
		} else {
			$("#pw-check").html('비밀번호가 일치하지 않습니다.');
			$("#pw-check").css('color','red');
		}
		
		
	});
	
	
	
});

</script>
</head>
<body>
<jsp:include page="../nav.jsp" />
<div class="member">
	<div class="list-tabs">
		<a href="renewPw" class="active">비밀번호 재설정</a>
	</div>
	<div class="tabs-cont">
		<div class="cont">
			<form action="renewPwPro" id="findIdPro" name="findForm" method="post" autocomplete="off">
				<input type="hidden" name="member_id" value="${member_id }">
				<h3 class="h3-member">새 비밀번호</h3>
				<div class="mb30"><input type="text" id="member_pw" name="member_pw" class="inp-member" placeholder="영문,숫자,특수문자 중 2개 조합 8자 이상"></div>
				<h3 class="h3-member">새 비밀번호 확인</h3>
				<div class="mb30 member_pw2"><input type="text" id="member_pw2" name="member_pw2" class="inp-member onlyNumber" placeholder="위에 입력한 비밀번호를 다시 입력해주세요" ><span id="pw-check"></span></div>
				
				<button type="submit" class="btn-type0 mb50">비밀번호 설정</button>
			</form>
		</div>
	</div>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>