<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
<!-- 상단 -->
<link href="${pageContext.request.contextPath }/resources/css/sub.css" rel="stylesheet">
<!-- 본문 -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
<body>
	<jsp:include page="../nav.jsp" />
	<div class="container has-lnb">

		<div class="inner-wrap">
			<jsp:include page="lnb-area.jsp" />
			<div id="contents">
				<h2 class="tit">비회원 문의내역 확인</h2>
				<div class="table-wrap mt10">
					<table class="board-form va-m">
						<caption>
							아이디이름, 휴대폰 번호, 인증번호 항목을 가진 비밀번호 찾기 입력 표
							<!--아이디이름, 휴대폰 번호, 인증번호 항목을 가진 비밀번호 찾기 입력 표-->
						</caption>
						<colgroup>
							<col style="width: 150px;">
							<col>
						</colgroup>
						<tbody>
							<input id="ibxSchPwdLoginId" type="hidden" value="">
							<!--이름-->
							<input id="ibxSchPwdMbNm" type="hidden" value="">
							<!--휴대폰 번호-->
							<tr>
								<th scope="row"><label for="nonMbNm">이름</label><em
									class="font-orange">*</em></th>
								<td><input type="text" maxlength="20"
									class="input-text w150px" oninput="maxLengthCheck(this)"
									name="nonMbNm" id="nonMbNm" title="이름"></td>
							</tr>
							<tr>
								<th scope="row"><label for="nonMbTelno">휴대폰 번호<!--휴대폰 번호--></label><em
									class="font-orange">*</em></th>
								<td><input type="text" id="nonMbTelno" name="nonMbTelno"
									maxlength="3" class="input-text w60px numType userData"
									title="핸드폰번호 첫자리 입력"> <span>-</span> <input type="text"
									id="nonMbTelno2" name="nonMbTelno2" maxlength="4"
									class="input-text w70px numType userData" title="핸드폰번호 중간자리 입력">
									<span>-</span> <input type="text" id="nonMbTelno3"
									name="nonMbTelno3" maxlength="4"
									class="input-text w70px numType userData"
									title="핸드폰번호 마지막자리 입력">
									<div id="nonMbTelnoAlert" class="fc_r mt05 display-none">휴대폰
										번호를 정확히 입력해주세요.</div></td>
							</tr>
							<tr>
								<th scope="row"><label for="nonMbEmail">이메일</label><em
									class="font-orange">*</em></th>
								<td><input type="email" maxlength="50"
									oninput="maxLengthCheck(this)" class="input-text w260px"
									name="nonMbEmail" id="nonMbEmail" title="이메일">
									<div id="nonMbEmailAlert" class="fc_r mt05 display-none">이메일을
										정확히 입력해주세요.</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<p class="reset mt10">* 비회원 정보 오 입력 시 문의내역 확인이 어려울 수 있으니 다시 한번
					확인해 주시기 바랍니다.</p>

				<div class="btn-group pt40">
					<button type="button" class="button large purple"
						id="nonMbInqCnfmBtn" title="확인" disabled="">비회원 문의내역 확인</button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>