<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/mypage.css" rel="stylesheet">
<link href="resources//css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources//js/main.js"></script>
</head>
<body>

	<jsp:include page="../nav.jsp" />
	<div id="container">
		<div id="content">
			<div class="section group section-member" id="memberInfo">
				<div class="title-membership">회원정보 관리</div>
				<div class="wrap-member-box wrap-membership-box">
					<div class="title-membership">회원정보</div>
					<form method="post" name="form-join2" action="abc">
						<div class="wrap-inside">
							<div class="join-detail">
								<label class="label-input" for=""> <span>선호지점</span>
									<div class="" style="margin-left: 120px; display: block; margin-top: 3px; width: 200px;; height: 30px; overflow: hidden; border: 1px solid #ccc;">
										<select name="theaterCode" id="join-theater"
											style="width: 220px; height: 30px; padding: 0 0 0 10px; box-sizing: border-box; font-size: 16px; line-height: 30px; border-radius: 0; -webkit-appearance: none; appearance: none; -moz-appearance: none; background: url(/images/customer/icon-select-off.png) right 31px center no-repeat; border: none; color: #7d7d7d; vertical-align: top;">
											<option value="1001" selected="">신도림</option>
											<option value="2102">청라</option>
											<option value="6001">경주보문</option>
											<option value="6002">구미봉곡</option>
											<option value="4001">충주연수</option>
											<option value="4101">천안불당</option>
											<option value="6006">대구이시아</option>
											<option value="6101">하동</option>
											<option value="4002">보은</option>
											<option value="6003">칠곡호이</option>
											<option value="6005">영덕예주</option>
										</select>
									</div> <span></span>
								</label>
							</div>

							<div class="join-detail">
								<div class="label-input">
									<span class="title">휴대폰번호 인증</span> <span class="desc">인증회원</span>
								</div>
							</div>
							<div class="join-detail">
								<label class="label-input" for="email"> <span>아이디(이메일)</span>
									<input type="text" id="memberId" name="memberId" class="input"
									value="yeri7880@naver.com"> <span></span>
								</label>
							</div>
							<div class="join-detail">
								<div class="label-input">
									<span class="title">비밀번호</span> <span class="desc"></span> <a
										href="#" class="btn-change changepwd">변경</a>
								</div>
							</div>
							<div class="join-detail">
								<div class="label-input">
									<span class="title">이름</span> <span class="desc">김예리</span> <input
										type="hidden" name="username" value="김예리">
								</div>
							</div>
							<div class="join-detail">
								<label class="label-input" for="bday"> <span>생년월일</span>
									<input type="text" id="join-bday" name="birthDate"
									class="input input-numeric" value="19930330"
									placeholder="예) 20170101"> <span></span>
								</label>
							</div>


							<div class="join-detail">
								<div class="label-input">
									<span class="title">휴대폰번호</span> <span class="desc">010-5014-7709</span>
									<a href="#" class="btn-change changephoneno">변경</a> <input
										type="hidden" id="join-phone" name="phone" value="01050147709">
								</div>
							</div>
							<div class="join-detail long">
								<span class="agreement"> <input type="checkbox"
									id="mypage-check12" name="check1" value="true"> <label
									class="label-check" for="mypage-check12">(전체)다양한 혜택의
										마케팅 동의</label>
								</span>
								<div class="sub">
									<span><input type="checkbox" id="mypage-check21"
										name="receiveEmail" value="true"><label
										class="label-check" for="mypage-check21">이메일</label></span> <span><input
										type="checkbox" id="mypage-check22" name="receiveSMS"
										value="true"><label class="label-check"
										for="mypage-check22">SMS</label></span> <span><input
										type="checkbox" id="mypage-check23" name="receivePush"
										value="true"><label class="label-check"
										for="mypage-check23">앱알림</label></span>
								</div>
							</div>
						</div>

						<a href="javascript:;" name="btn-join-confirm" id="btn-mypage-ok"
							class="btn-confirm">확인</a>
					</form>



					<div class="title-membership title-quit">회원 탈퇴</div>
					<div class="wrap-inside no-border">
						<span class="quit-desc">탈퇴 신청시 환불금액등의 확인 후 탈퇴처리가 진행되며 포인트,
							등록한 관람권 등이 삭제되고 30일 이내 재가입이 불가하오니 신중히 결정해주시기 바랍니다.</span> <a href="#"
							class="btn-quit withdrawmember">회원 탈퇴하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>




	<jsp:include page="../footer.jsp" />
</body>
</html>