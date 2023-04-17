<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/find.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../nav.jsp" />
<div class="member">
		<div class="list-tabs">
			<a href="findId">아이디 찾기</a>
			<a href="findPw" class="active">비밀번호 찾기</a>
		</div>
		<div class="tabs-cont">
			<div class="cont">
				<form action="renewPw" id="findForm" name="findForm" method="post" autocomplete="off">
						
					<h3 class="h3-member">아이디</h3>
					<div class="mb30"><input type="text" id="member_id" name="member_id" class="inp-member" placeholder="아이디 입력" maxlength="12"></div>
					<h3 class="h3-member">이름</h3>
					<div class="mb30"><input type="text" id="MemberNm" name="member_name" class="inp-member" placeholder="이름 입력"></div>
					<h3 class="h3-member">생년월일</h3>
					<div class="mb30"><input type="text" id="BirthDayDT" name="member_bday" class="inp-member onlyNumber" placeholder="생년월일 8자리(19810101)" maxlength="8"></div>
					<h3 class="h3-member">휴대폰번호</h3>
					<div class="mb30">
						<div class="inp-box1">
							<input type="tel" id="MobileNoFull" name="member_tel" class="inp-member onlyNumber" placeholder="-없이 휴대폰번호 입력" maxlength="11">
							<button type="button" id="btnSend" class="btn-type1">인증요청</button>
						</div>
					</div>
					<div id="auth-cont" style="display:block">
						<h3 class="h3-member">인증번호</h3>
						<div class="mb30">
							<div class="inp-box1">
								<input type="text" id="AuthKey" name="AuthKey" class="inp-member" placeholder="인증번호 입력" maxlength="4">
								<span class="count">3:00</span>
								<button type="button" id="btnAuth" class="btn-type1">인증완료</button>
								<input type="hidden" id="AuthGuID" name="AuthGuID">
							</div>
						</div>
					</div>
					<div class="check-desc text-left">휴대폰번호가 변경된 경우 하단 <strong>휴대폰 인증 찾기</strong>를 통하여 <strong>아이디찾기</strong>를 진행해주시기 바랍니다.</div>
	
					<button type="submit" class="btn-type0 mb50">비밀번호 재설정</button>
				</form>
			</div>
		</div>
	</div>
<jsp:include page="../footer.jsp" />
</body>
</html>