<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/mypage.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
</head>
<body>

	<jsp:include page="../nav.jsp" />
	
	<div id="container">
		<div id="content">
			<div class="section group section-member" id="memberInfo">
				<div class="title-membership">회원정보 관리</div>
				<div class="wrap-member-box wrap-membership-box">
					<div class="title-membership">회원정보</div>
					<form method="post" name="form-join2" action="updatePro">
						<div class="wrap-inside">
							<div class="join-detail">
								<label class="label-input" for="id"> <span>아이디</span>
									<input type="text" id="member_id" name="member_id" readonly="readonly"					
									value="${member.member_id}"> <span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="email"> <span>이메일</span>
									<input type="text" id="member_email" name="member_email" class="input"
									value="${member.member_email }"> <span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="pass"> <span>기존 비밀번호</span>
									<input type="password" id="member_pw" name="member_pw" class="input" placeholder="정보수정시 비밀번호 입력 필수!!">
									<span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="pass2"> 
								<span>변경하실 비밀번호</span> 
								<input type="password" id="member_pw2" name="member_pw2" class="input" placeholder="암호를 변경하시려면 입력하세요">
								<span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="username"> <span>이름</span>
									<input type="text" id="member_name" name="member_name" class="input" value="${member.member_name }" >
									 <span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for="bday"> <span>생년월일</span>
									<input type="text" id="member_bday" name="member_bday"
									class="input input-numeric" value="${member.member_bday}"
									placeholder="예) 20170101"> <span></span>
								</label>
							</div>


							<div class="join-detail">
								<label class="label-input" for="phone"> <span>휴대폰번호</span>
									<input type="text" id="member_tel" name="member_tel"
									class="input input-numeric" value="${member.member_tel }"> <span></span>
								</label>
							</div>
							
							
						<div class="join-detail">
								<label class="label-input" for=""> <span>선호지점</span>
									<div class="" style="margin-left: 120px; display: block; margin-top: 3px; width: 200px;; height: 30px; overflow: hidden; border: 1px solid #ccc;">
										<select name="member_prefer_branch" id="member_prefer_branch"
											style="width: 220px; height: 30px; padding: 0 0 0 10px; box-sizing: border-box; font-size: 16px; line-height: 30px; border-radius: 0; -webkit-appearance: none; appearance: none; -moz-appearance: none; background: url(/images/customer/icon-select-off.png) right 31px center no-repeat; border: none; color: #7d7d7d; vertical-align: top;">
											<option value="부산점" <c:if test="${member.member_prefer_branch eq '부산점'}">selected</c:if>>부산점</option>
											<option value="부산대연점" <c:if test="${member.member_prefer_branch eq '부산대연점'}">selected</c:if>>부산대연점</option>
											<option value="강남점" <c:if test="${member.member_prefer_branch eq '강남점'}">selected</c:if>>강남점</option>
											<option value="울산삼산점" <c:if test="${member.member_prefer_branch eq '울산삼산점'}">selected</c:if>>울산삼산점</option>
											<option value="경남김해점" <c:if test="${member.member_prefer_branch eq '경남김해점'}">selected</c:if>>경남김해점</option>
											<option value="서울건대점" <c:if test="${member.member_prefer_branch eq '서울건대점'}">selected</c:if>>서울건대점</option>
											<option value="서울명동점" <c:if test="${member.member_prefer_branch eq '서울명동점'}">selected</c:if>>서울명동점</option>
											<option value="부산동래점" <c:if test="${member.member_prefer_branch eq '부산동래점'}">selected</c:if>>부산동래점</option>
											<option value="부산센텀점" <c:if test="${member.member_prefer_branch eq '부산센텀점'}">selected</c:if>>부산센텀점</option>
											<option value="경기구리점" <c:if test="${member.member_prefer_branch eq '경기구리점'}">selected</c:if>>경기구리점</option>
											<option value="경기김포점" <c:if test="${member.member_prefer_branch eq '경기김포점'}">selected</c:if>>경기김포점</option>
											<option value="경남마산점" <c:if test="${member.member_prefer_branch eq '경남마산점'}">selected</c:if>>경남마산점</option>
											<option value="경남진주점" <c:if test="${member.member_prefer_branch eq '경남진주점'}">selected</c:if>>경남진주점</option>
											<option value="울산신천점" <c:if test="${member.member_prefer_branch eq '울산신천점'}">selected</c:if>>울산신천점</option>
											<option value="울산동구점" <c:if test="${member.member_prefer_branch eq '울산동구점'}">selected</c:if>>울산동구점</option>
										</select>

									</div> <span></span>
								</label>
							</div>
							<div class="join-detail">
								<label class="label-input" for=""> <span>선호장르</span>
									<div class="" style="margin-left: 120px; display: block; margin-top: 3px; width: 200px;; height: 30px; overflow: hidden; border: 1px solid #ccc;">
										<select name="member_prefer_genre" id="member_prefer_genre"
											style="width: 220px; height: 30px; padding: 0 0 0 10px; box-sizing: border-box; font-size: 16px; line-height: 30px; border-radius: 0; -webkit-appearance: none; appearance: none; -moz-appearance: none; background: url(/images/customer/icon-select-off.png) right 31px center no-repeat; border: none; color: #7d7d7d; vertical-align: top;">
											<option value="액션"<c:if test="${member.member_prefer_genre eq '액션'}">selected</c:if>>액션</option>
											<option value="드라마"<c:if test="${member.member_prefer_genre eq '드라마'}">selected</c:if>>드라마</option>
											<option value="코미디"<c:if test="${member.member_prefer_genre eq '코미디' }">selected</c:if>>코미디</option>
											<option value="애니메이션"<c:if test="${member.member_prefer_genre eq '애니메이션' }">selected</c:if>>애니메이션</option>
											<option value="스릴러"<c:if test="${member.member_prefer_genre eq '스릴러' }">selected</c:if>>스릴러</option>
											<option value="범죄"<c:if test="${member.member_prefer_genre eq '범죄' }">selected</c:if>>범죄</option>
										</select>
									</div> <span></span>
								</label>
							</div>
						</div>

						<a href=""  id="btn-mypage-ok"
							class="btn-confirm">
						<button type="submit">수정</button>	</a>
				 
					<div class="title-membership title-quit">회원 탈퇴</div>
					<div class="wrap-inside no-border">
						<span class="quit-desc">탈퇴 신청시 환불금액등의 확인 후 탈퇴처리가 진행되며 포인트,
							등록한 관람권 등이 삭제되고 30일 이내 재가입이 불가하오니 신중히 결정해주시기 바랍니다.</span> <a href=""
							class="btn-quit withdrawmember"><button type="submit" formaction="quitPro">회원 탈퇴하기</button></a>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>