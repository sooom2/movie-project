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
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">


function doDisplay(){
	let dis = document.querySelector(".modal-type2");
	
	if(dis.style.display="none"){
		dis.style.display="block"
		
	} else{
		dis.style.display="none";
	}
}

function modalClose(){
	 $('.modal-type2').hide();
}

Kakao.init('bf0c05681627cc5d65f40192f843de1b'); //발급받은 키 
Kakao.isInitialized(); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
		       	console.log(response)
		       	var accessToken = Kakao.Auth.getAccessToken();
		       	Kakao.Auth.setAccessToken(accessToken);
		       	var account = response.kakao_account;
					
				$('#form-kakao-login input[name=email]').val(account.email);
				$('#form-kakao-login input[name=name]').val(account.profile.nickname);
				$('#form-kakao-login input[name=gender]').val(account.gender);
				$('#form-kakao-login input[name=accessToken]').val(accessToken);
				// 사용자 정보가 포함된 폼을 서버로 제출.
				document.querySelector('#form-kakao-login').submit();
        	  
        	  
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }




</script>
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
					<a href="javascript:doDisplay();">아이디/비밀번호 찾기</a>
					<a href="memAuth">회원가입</a>
					</div>
<!-- 					<input type="hidden" name="cgid" value=""> -->
					<div class="member-detail">
                      <label class="label-input" for="memberid"><span>아이디</span><input type="text" id="memberid" class="input" name="member_id" value="" placeholder="아이디를 입력해주세요"><span></span></label>
                    </div>
					<div class="member-detail">
                      <label class="label-input" for="memberpasswd"><span>패스워드</span><input type="text" id="memberpw" class="input" name="member_pw" value="" placeholder="비밀번호를 입력해주세요"><span></span></label>
                    </div>
					<div class="etc">
						<label><input type="checkbox" id="SaveID" class="checkbox"><em></em><span>아이디 저장</span></label>
						</div>
					<button type="submit" class="btn-type0">로그인</button>
				</form>
					<div class="orther-login">
						<p class="tit"><span><strong>간편로그인</strong></span></p>
						<div class="btns">
							<span onclick="kakaoLogin();">
							<a href="#" class="btn-kakao"><img src="resources/images/member/ico_kakao.png"></a>
							</span>
							<a href="#" class="btn-naver"><img src="resources/images/member/ico_naver.png"></a>
						</div>
					</div>
				</div>
				<!-- 회원 비밀번호 찾기 모달창 -->
		<div class="modal modal-type2" id="findPwd" tabindex="-1" style="display: none;">
			<div class="modal-dialog" style="max-width: 400px; margin-top: 322.5px;">
				<div class="modal-content">
					<div class="modal-header">
						<h4>회원 비밀번호 찾기</h4>
						<button type="button" class="close-modal"  onclick="modalClose()">닫기</button>
					</div>
					<div class="modal-body">
						<h3 class="h3-member">아이디</h3>
						<div class="mb20"><input type="text" id="memberId" class="inp-member onlyNumber" placeholder="아이디를 입력해주세요" maxlength="8"></div>
						<h3 class="h3-member">이메일주소</h3>
						<div class="inp-box1 mb20">
							<input type="tel" id="memberEmail" class="inp-member onlyNumber" placeholder="이메일주소를 입력해주세요">
						</div>
					</div>
					<div class="modal-bottom flex">
						<button type="button" class="btn-modal1" onclick="modalClose()">취소</button>
						<button type="button" class="btn-modal2" id="btnFind">확인</button>
					</div>
				</div>
			</div>
		</div>
		<form id="form-kakao-login" method="post" action="kakao">
   			<input type="hidden" name="email"/>
   			<input type="hidden" name="name"/>
   			<input type="hidden" name="gender"/>
   			<input type="hidden" name="accessToken"/>
   		</form>
	
	
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>