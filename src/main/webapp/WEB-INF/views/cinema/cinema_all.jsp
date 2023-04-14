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
						$(".theater-list ul").append('<li>'+result[i].cinema_name+'</li>');
					}
					
			},
			error:function(request,status,error){
				
		        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
			
		});//ajax
	
	

	
	// jQuery 객체를 가리키는 변수
	
  
	
	

}
	


</script>
</head>
<body>
	<jsp:include page="../nav.jsp" />

	<div id="container">
		<div id="content">
			<div class="section group section-member" id="memberInfo">
				<div class="inner-wrap">
				${locationCinema[0] }
				<h2 class="tit">전체 극장</h2>
					<div class="theater-box" style="height: 250px;">
						<div class="theater-place">
							<c:forEach var="location" items="${location }">
							<ul >
								<li >
									<button type="button" class="sel-ctiy" value=${location.get('location_name') } onclick="cinemaNameClick()">${location.get('location_name') } </button>
									<div class="theater-list">
										<ul>
										</ul>
									</div>
								</li>
							</ul>
							</c:forEach>
							
						
					</div>
							
			
						

						<div class="user-theater">


							<!-- 로그인 전 -->
							<div style="padding-left: 15px">
								<i class="iconset ico-favo-theater"></i> 나의 선호영화관 정보 <a href=""
									class="button small ml10" id="moveLogin" title="로그인하기">로그인하기</a>
							</div>
							<c:if test="${not empty sessionScope.sId  }">

							</c:if>
						</div>
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

					<!-- 공지사항  -->
<!-- 					<div class="tit-util mt70 mb15"> -->
<!-- 						<h3 class="tit">극장 공지사항</h3> -->
<!-- 						<a href="/support/notice?ti=3" class="more" title="극장 공지사항 더보기">더보기 -->
<!-- 							<i class="iconset ico-arr-right-gray"></i> -->
<!-- 						</a> -->
<!-- 					</div> -->


<!-- 					<div class="table-wrap"> -->
<!-- 						<table class="board-list"> -->
<%-- 							<caption>극장, 제목, 지역, 등록일이 들어간 극장 공지사항 목록</caption> --%>
<%-- 							<colgroup> --%>
<%-- 								<col style="width: 150px;"> --%>
<%-- 								<col> --%>
<%-- 								<col style="width: 150px;"> --%>
<%-- 								<col style="width: 120px;"> --%>
<%-- 							</colgroup> --%>
<!-- 							<thead> -->
<!-- 								<tr> -->
<!-- 									<th scope="col">극장</th> -->
<!-- 									<th scope="col">제목</th> -->
<!-- 									<th scope="col">지역</th> -->
<!-- 									<th scope="col">등록일</th> -->
<!-- 								</tr> -->
<!-- 							</thead> -->
<!-- 							<tbody> -->

<!-- 								<tr> -->
<!-- 									<td>성수</td> -->
<!-- 									<th scope="row"><a -->
<!-- 										href="/support/notice/detail?artiNo=10827&amp;bbsNo=9" -->
<!-- 										title="[성수] 7층 부티크 사용 제한 안내 (4/13 목) 상세보기"> [성수] 7층 부티크 사용 -->
<!-- 											제한 안내 (4/13 목) </a></th> -->
<!-- 									<td>서울</td> -->
<!-- 									<td>2023.04.10</td> -->
<!-- 								</tr> -->

<!-- 								<tr> -->
<!-- 									<td>상암월드컵경기장</td> -->
<!-- 									<th scope="row"><a -->
<!-- 										href="/support/notice/detail?artiNo=10821&amp;bbsNo=9" -->
<!-- 										title="[상암월드컵경기장] K리그 축구 경기로 인한 주차 안내 상세보기"> [상암월드컵경기장] -->
<!-- 											K리그 축구 경기로 인한 주차 안내 </a></th> -->
<!-- 									<td>서울</td> -->
<!-- 									<td>2023.04.03</td> -->
<!-- 								</tr> -->

<!-- 								<tr> -->
<!-- 									<td>광명AK플라자</td> -->
<!-- 									<th scope="row"><a -->
<!-- 										href="/support/notice/detail?artiNo=10817&amp;bbsNo=9" -->
<!-- 										title="[광명AK플라자]주차장 이용 안내 상세보기"> [광명AK플라자]주차장 이용 안내 </a></th> -->
<!-- 									<td>경기</td> -->
<!-- 									<td>2023.03.31</td> -->
<!-- 								</tr> -->

<!-- 								<tr> -->
<!-- 									<td>동대문</td> -->
<!-- 									<th scope="row"><a -->
<!-- 										href="/support/notice/detail?artiNo=10816&amp;bbsNo=9" -->
<!-- 										title="[동대문] 3월 31일 건물 화재발생으로 인한 운영중단 안내 (~4/5까지) 상세보기"> -->
<!-- 											[동대문] 3월 31일 건물 화재발생으로 인한 운영중단 안내 (~4/5까지) </a></th> -->
<!-- 									<td>서울</td> -->
<!-- 									<td>2023.03.31</td> -->
<!-- 								</tr> -->

<!-- 								<tr> -->
<!-- 									<td>전대(광주)</td> -->
<!-- 									<th scope="row"><a -->
<!-- 										href="/support/notice/detail?artiNo=10813&amp;bbsNo=9" -->
<!-- 										title="[전대(광주)] 관람요금 변경 안내 (4/17부터~) 상세보기"> [전대(광주)] 관람요금 -->
<!-- 											변경 안내 (4/17부터~) </a></th> -->
<!-- 									<td>광주/전라</td> -->
<!-- 									<td>2023.03.28</td> -->
<!-- 								</tr> -->
<!-- 							</tbody> -->
<!-- 						</table> -->
<!-- 					</div> -->

<!-- 				</div> -->
			</div>
		</div>
	</div>


	<jsp:include page="../footer.jsp" />
</body>
</html>