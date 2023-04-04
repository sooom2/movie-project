<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<div class="member mem-login">
		<div class="list-tabs">
			<a href="memLogin" class="active">회원 로그인</a>
<!-- 			<a href="javascript:goSubmit('/guest/join.do', 'dataForm');">비회원 예매 및 확인</a> -->
			<a href="guestRsv">비회원 예매 및 확인</a>
		</div>

<!-- 		탭 -->
		<div class="tabs-cont">
			<div class="cont">
				<form id="loginForm"  action ="loginPro" method="post">
					<div class="find">
					<a href="">아이디/비밀번호 찾기</a>
					<a href="memJoin">회원가입</a>
					</div>
<!-- 					<input type="hidden" name="cgid" value=""> -->
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
				
			<!-- 비밀번호 찾기 -->
			<div class="modal modal-type2" id="findPwd" tabindex="-1" style="display: none;">
				<div class="modal-dialog" style="max-width: 400px; margin-top: 322.5px;">
					<div class="modal-content">
						<div class="modal-header">
							<h4>비밀번호 찾기</h4>
							<button type="button" class="close-modal"  onclick="modalClose()">닫기</button>
						</div>
						<div class="modal-body">
							<h3 class="h3-member">아이디</h3>
							<div class="mb20"><input type="text" id="memberid" class="inp-member onlyNumber" placeholder="생년월일 8자리(19810101)" maxlength="8"></div>
							<h3 class="h3-member">이메일주소</h3>
							<div class="inp-box1 mb20">
								<input type="tel" id="guestEmail" class="inp-member onlyNumber" placeholder="이메일주소를 입력해주세요">
							</div>
						</div>
						<div class="modal-bottom flex">
							<button type="button" class="btn-modal1" onclick="modalClose()">취소</button>
							<button type="button" class="btn-modal2" id="btnFind">확인</button>
						</div>
					</div>
				</div>
			</div>
	
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>