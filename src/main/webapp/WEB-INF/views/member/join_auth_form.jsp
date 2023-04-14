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
<script>

</script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<div id="container">
		<div id="content">
			<div class="section group section-member" id="joinSection">
				<div class="title">회원가입</div>
				<div class="wrap-member-box wrap-join-box">
					<ul class="join-indicator">
						<li class="selected">이메일 입력(소셜 가입)</li>
						<li>회원정보 입력</li>
						<li>가입 완료</li>
						<li>가입 완료</li>
					</ul>
					<form name="form-join" id="form-join" method="post" action="memberJoin.me">
						<div class="wrap-inside">
							<div class="join-social-desc">
								<span>소셜 계정으로 가입</span>
							</div>
							<div class="join-social">
								<div id="naver_id_login" class="nv">
									<a
										href="https://nid.naver.com/oauth2.0/authorize?response_type=token&amp;client_id=i5vJc9KektcyYpcRyM5n&amp;redirect_uri=https%3A%2F%2Fcineq.co.kr%2FPopup%2FNaverLogin&amp;state=63fbad94-92d6-45b2-9eb3-b879e454a289"
										onclick="window.open(this.href, 'naverloginpop', 'titlebar=1, resizable=1, scrollbars=yes, width=600, height=550'); return false"
										id="naver_id_login_anchor" class="social-connect nv">네이버</a>
								</div>
								<a id="custom-login-btn" href="javascript:joinWithKakao();"
									class="kt">카카오 톡</a>
							</div>
							<br>
							<div class="join-email-desc">
								<span>이메일 주소로 가입</span>
							</div>
							<div class="join-email">
								<label class="label-email" for="email"> 아이디(이메일) <input
									type="email" id="join-id" name="memberId"
									placeholder="이메일 주소를 입력해주세요.">
								</label>
							</div>
						</div>

						<a href="joinform" id="btn-join" class="btn-join">가입하기</a> <input
							type="hidden" id="userFrom" name="userFrom" value="4"> <input
							type="hidden" id="socialId" name="socialId" value=""> <input
							type="hidden" id="name" name="name" value=""> <input
							type="hidden" id="token" name="token" value=""> <input
							type="hidden" id="isPayment" name="isPayment" value="0">
					</form>
				</div>
			</div>


		</div>
	</div>
<jsp:include page="../footer.jsp" />
</body>
</html>