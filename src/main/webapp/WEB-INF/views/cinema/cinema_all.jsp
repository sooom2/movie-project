<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path }/resources/css/cinema.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/main.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">

function doDisplay(){
	let dis = document.querySelector(".modal-type2");
	
	if(dis.style.display="none"){
		dis.style.display="block"
		
	} else{
		dis.style.display="none";
	}
}

function cinemaNameClick(){
	
$('.theater-place li').click(function() {
	  $('.theater-place li.on').removeClass('on');
	  $(this).addClass('on');
});	  
	  
	  let cityName = $(event.target).val();
	  let $clickedButton = $(this);
	
	  $.ajax({
			type: "GET",
			url: "locationCinema",
			data: {
				location_name: cityName
			},
			success: function(result){ // 요청 처리 성공시 자동으로 호출되는 콜백함수
				$('.theater-list ul li').empty();
					$(this).parent().addClass('on');
					for(var i=0; i<result.length; i++){
						$(".theater-list ul").append('<li><a href="cinemaDetail?cinema_code='+result[i].cinema_code+'">'+result[i].cinema_name+'</a></li>');
					}
					
			},
			error:function(request,status,error){
				
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
			
		});//ajax
}//cinemaClick




</script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	
	<div class="modal modal-type2" id="findPwd" tabindex="-1" style="display: none;">
	<div class="modal-dialog" style="">
	<div class="modal-content">
	<div class="member mem-login">
		<div class="modal-header">
			<span class="login-tit">회원 로그인</span>
			<button type="button" class="close-modal" onclick="modalClose()">닫기</button>
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
		</div>
		</div></div>
				
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
	
	
	
	


	<div id="container">
		<div id="content">
			<div class="section group section-member" id="memberInfo">
				<div class="inner-wrap">
				<h2 class="tit">전체 극장</h2>
					<div class="theater-box" style="height: 250px;">
						<div class="theater-place">
							<c:forEach var="location" items="${location }">
							<ul >
								<li >
									<button type="button" class="sel-ctiy" value=${location.get('location_name') } onclick="cinemaNameClick()">${location.get('location_name') } </button>
									<div class="theater-list">
										<ul>
										<li>
										<span style="font-weight: 300">지역을 선택해주세요</span>
										</li>
										</ul>
									</div>
								</li>
							</ul>
							</c:forEach>
					</div>

						<div class="user-theater">


							<!-- 로그인 전 -->
							<c:if test="${empty sessionScope.sId  }">
							<div style="padding:0 15px">
								<img src="resources/images/ico/after-like.png" alt="찜하기" style="width: 22px;  display: inline-block; margin-bottom: -3px;" >
								 나의 선호영화관 정보 <a href="javascript:doDisplay();" class="button small ml10" id="moveLogin" title="로그인하기">로그인하기</a>
							</div>
							</c:if>
							<c:if test="${not empty sessionScope.sId  }">
							<!-- 로그인 전 -->
							<!-- 로그인후 -->
							<div style="padding:0 15px">
								<img src="resources/images/ico/after-like.png" alt="찜하기" style="width: 22px;  display: inline-block; margin-bottom: -3px;" >
								<span class="font-gblue">${sessionScope.sId }</span>님의 선호영화관
								<ul class="theater-circle">
									<li>
										<a href="/theater?areaCd=55&amp;brchNo=0046" title="부산점 상세보기">부산점</a>
									</li>
								</ul>
<!-- 								<a href="" class="button small" title="선호영화관 관리"> <i class="iconset ico-edit"></i> 선호영화관 관리</a> -->
							</div>
							<!-- 로그인 후 -->
							</c:if>
						</div>
						</div>
						
						
						
						
						
						<div class="tit-util mt70 mb15">
						<h3 class="tit">극장 공지사항</h3>
						<a href="notice_board" class="more" title="극장 공지사항 더보기">더보기
							<i class="iconset ico-arr-right-gray"></i>
						</a>
					</div>


					<div class="table-wrap">
						<table class="board-list">
							<caption>극장, 제목, 지역, 등록일이 들어간 극장 공지사항 목록</caption>
							<colgroup>
								<col style="width: 150px;">
								<col>
								<col style="width: 150px;">
								<col style="width: 120px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">극장</th>
									<th scope="col">제목</th>
									<th scope="col">지역</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="noticeList" items="${noticeList }">
								<tr>
									<td>${noticeList.get("cinema_name")}</td>
									<th scope="row">
									<a href="" title="[${noticeList.get('cinema_name')}] ${noticeList.get('notice_subject')} 상세보기">[${noticeList.get('cinema_name')}]<span>${noticeList.get('notice_subject')}</span></a></th>
									<td>${noticeList.get('location_name')}</td>
									<td>${noticeList.get('notice_write_date') }</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
						
						
						
						
						
						
						
						
						
						
						
						
					</div>
	
	
										
					<!-- 이벤트  -->
					<!-- 				<div class="tit-util mt70 mb15"> -->
					<!-- 					<h3 class="tit">극장 이벤트</h3> -->
					<!-- 					<a href="" onclick="NetfunnelChk.aTag('STORE_DTL','/event/theater');return false;" class="more" title="극장 이벤트 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a> -->
					<!-- 				</div> -->
					<!-- 				<div class="event-box"> -->
					<!-- 					<ul> -->

					<!-- 							<li> -->
					<!-- 								<a href="#" class="eventBtn" data-no="13095" data-netfunnel="N" title="[부산경남지역] 봄맞이 누적 이벤트 상세보기"> -->
					<!-- 									<img src="https://img.megabox.co.kr/SharedImg/event/2023/04/12/VDepWQ0sGXShwxM4TVn6a1MQ6bSNlV3r.jpg" alt="[부산경남지역] 봄맞이 누적 이벤트" onerror="noImg(this)"> -->
					<!-- 								</a> -->
					<!-- 							</li> -->

					<!-- 							<li> -->
					<!-- 								<a href="#" class="eventBtn" data-no="13093" data-netfunnel="N" title="[수도권서부] 고양시 어린이집 연합회 임직원 영화 4천원 할인 상세보기"> -->
					<!-- 									<img src="https://img.megabox.co.kr/SharedImg/event/2023/04/12/Z6ygrBnkeMKeXhrCOchgm2MBnVQQqlPE.jpg" alt="[수도권서부] 고양시 어린이집 연합회 임직원 영화 4천원 할인" onerror="noImg(this)"> -->
					<!-- 								</a> -->
					<!-- 							</li> -->

					<!-- 					</ul> -->
					<!-- 				</div> -->

<!-- 					공지사항  -->
					

				</div>
			</div>
		</div>


	<jsp:include page="../footer.jsp" />
</body>
</html>