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
	<div id="container">
		<div id="content">
			<div class="section group section-member">

				<div class="title">회원가입</div>

				<div class="wrap-member-box wrap-join-box" id="join_confirm_section">
					<ul class="join-indicator">
						<li>이메일 입력(소셜 가입)</li>
						<li class="selected">회원정보 입력</li>
						<li>가입 완료</li>
					</ul>
					<form action="joinPro" name="form-join" id="form-join" method="post">
						<div class="wrap-inside">

							<div class="join-detail">
								<label class="label-input" for="id"> <span>아이디</span>
								<input type="text" id="join-id" name="member_id" class="input" placeholder="아이디 입력해주세요">
							    <span></span>
								</label>
							</div>

							<div class="join-detail">
								<label class="label-input" for="email"> <span>이메일</span>
									<input type="text" id="join-id2" name="member_email" class="input" value="" placeholder="인증받은 이메일자동입력">
									<span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="pass"> <span>비밀번호</span>
									<input type="password" id="join-pw" name="member_pw" class="input" placeholder="영문, 숫자, 특수문자 중 2개 조합 8자 이상">
									<span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="pass2"> 
								<span>비밀번호 확인</span> 
								<input type="password" id="join-pw2" name="password2" class="input" placeholder="위에 입력한 비밀번호를 다시 입력해주세요">
								<span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="username"> <span>이름</span>
									<input type="text" id="join-name" name="member_name" class="input" value="" placeholder="실명을 입력해주세요">
									 <span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="bday"> <span>생년월일</span>
									<input type="text" id="join-bday" name="member_bday"
									class="input input-numeric" placeholder="예) 20170101">
									<span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="phone"> <span>휴대폰번호</span>
									<input type="text" id="join-phone" name="member_tel"
									class="input input-numeric" placeholder="휴대폰번호 입력"> <span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for=""> <span>선호지점</span>
									<div class="" style="margin-left: 120px; display: block; margin-top: 3px; width: 200px;; height: 30px; overflow: hidden; border: 1px solid #ccc;">
										<select name="member_prefer_branch" id="join-theater"
											style="width: 220px; height: 30px; padding: 0 0 0 10px; box-sizing: border-box; font-size: 16px; line-height: 30px; border-radius: 0; -webkit-appearance: none; appearance: none; -moz-appearance: none; background: url(resources/images/login/icon-select-off.png) right 31px center no-repeat; border: none; color: #7d7d7d; vertical-align: top;">
											<option value="1">부산점</option>
											<option value="2">부산대연점</option>
											<option value="3">강남점</option>
											<option value="4">울산삼산점</option>
											<option value="5">경남김해점</option>
										</select>
									</div> <span></span>
								</label>
							</div>
							<div class="join-detail">
								<div class="hobby">
									<span style="margin: 5px 0">선호장르</span>
									<table>
										<tr>
											<td><input type="radio" name="member_prefer_genre"
												value="액션" id="genre_action" onclick="check();"><label
												for="genre_action">액션 </label></td>
											<td><input type="radio" name="member_prefer_genre"
												value="드라마" id="genre_drama" onclick="check();"><label
												for="genre_drama">드라마 </label></td>
											<td><input type="radio" name="member_prefer_genre"
												value="코미디" id="genre_comedy" onclick="check();"><label
												for="genre_comedy">코미디 </label></td>
											<td><input type="radio" name="member_prefer_genre"
												value="애니메이" id="genre_ani" onclick="check();"><label
												for="genre_ani">애니메이션 </label></td>
										</tr>
										<tr>

											<td><input type="radio" name="member_prefer_genre"
												value="스릴러" id="genre_thriller"
												onclick="check();"><label for="genre_thriller">스릴러
											</label></td>
											<td><input type="radio" name="member_prefer_genre"
												value="로맨스" id="genre_romance" onclick="check();"><label
												for="genre_romance">로맨스 </label></td>
											<td><input type="radio" name="member_prefer_genre"
												value="범죄" id="genre_crime" onclick="check();"><label
												for="genre_crime">범죄 </label></td>
										</tr>
									</table>
								</div>

							</div>
							 <input type="hidden" id="socialId" name="socialId" value="">
							 <input type="hidden" id="userFrom" name="userFrom" value="4">
							 <input type="hidden" id="isPayment" name="isPayment" value="0">
							<input type="hidden" id="smsRequest" name="smsRequest" value="">
							<input type="hidden" id="token" name="token" value="">
							
							
						<input type="submit" value="회원가입" id="btn-join2" class="btn-join">
					</form>
				</div>
						
<!-- 				<a href="joinPro" id="btn-join2" class="btn-join">회원가입</a> -->
			</div>

		</div>
	</div>



</body>
</html>