<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<div class="member mem-login">
		<div class="list-tabs">
			<a href="" class="active">회원 로그인</a>
<!-- 			<a href="javascript:goSubmit('/guest/join.do', 'dataForm');">비회원 예매 및 확인</a> -->
			<a href="">비회원 예매 및 확인</a>
		</div>

<!-- 		탭 -->
		<div class="tabs-cont">
			<div class="cont">
				<form id="loginForm" method="post">
					<div class="find">
					<a href="javascript:goLink('/member/find_id.do');">아이디/비밀번호 찾기</a>
					<a href="javascript:goLink('/member/join.do');">회원가입</a>
					</div>
					<input type="hidden" name="cgid" value="">
					<div class="member-detail">
                      <label class="label-input" for="memberid"><span>아이디</span><input type="text" id="memberid" class="input" value="" placeholder="아이디를 입력해주세요"><span></span></label>
                    </div>
					<div class="member-detail">
                      <label class="label-input" for="memberpasswd"><span>패스워드</span><input type="text" id="memberid" class="input" value="" placeholder="비밀번호를 입력해주세요"><span></span></label>
                    </div>
					
					
					<div class="etc">
						<label><input type="checkbox" id="SaveID" class="checkbox"><em></em><span>아이디 저장</span></label>
						</div>
					<button type="submit" class="btn-type0">로그인</button>
				</form>
				
				
					<div class="orther-login">
						<p class="tit"><span><strong>간편로그인</strong></span></p>
						<div class="btns">
							<a href="#" class="btn-kakao"><img src="resources/images/member/ico_kakao.png"></a>
							<a href="#" class="btn-naver"><img src="resources/images/member/ico_naver.png"></a>
						</div>
					</div>
				
					
				</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>