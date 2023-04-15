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
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/main.js"></script>
<script type="text/javascript">

$(function(){
	
	$(".selector li").click(function () {
		alert("dddd");
	    $(".selector li").parent().find("a").removeClass("selected");
	    $(this).addClass("selected");
	    selectedListType = $(this).data("listtype");
	    loadMovie();
	    return false;
	});
	
});


</script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<c:forEach var="cinema" items="${cinemaDetail }">
		<div id="container">
			<div id="content">
				<div class="section group section-theater-head"
					style="background: url('/movie-project/resources/images/cinema/${cinema.get('cinema_photo')}') center center no-repeat;">
					<div class="wrap">
						<span class="name-2"><span
							style="background: rgba(0, 0, 0, 0.4); padding-right: 5px; padding-left: 5px;"><span>${cinema.get('cinema_name') }</span></span></span>
						<span class="name-3"><span
							style="background: rgba(0, 0, 0, 0.4); padding: 5px; padding-right: 5px;"><span>${cinema.get('cinema_address') }</span></span></span>
					</div>
				</div>


				<div class="section group section-theater-body">
					<div class="wrap">
						<ul class="selector">
							<li class=""
								onclick="location.href='cinemaDetail?cinema_code=${cinema.get('cinema_code')}'">상영시간표</li>
							<li class=""
								onclick="location.href='cinemaLocation?cinema_code=${cinema.get('cinema_code')}'">약도/교통</li>
							<li class=""
								onclick="location.href ='cinemaEvent?cinema_code=${cinema.get('cinema_code')}'">이벤트</li>
							<li class=""
								onclick="location.href ='cinemaPrice?cinema_code=${cinema.get('cinema_code')}'">관람료</li>
						</ul>



						<div class="cal">
							<span class="big-m">April</span> <span class="small-yyyym">2023
								April</span>
							<ul>

							</ul>
						</div>
						<div class="selector-sub">
							<a href="#" data-listtype="movie" class="selected">영화별</a> | <a
								href="#" data-listtype="time">시간대별</a>
						</div>
						<div class="content">
							<ul class="desc">
								<li><span class="rate-all">전체</span> 전체 관람가</li>
								<li><span class="rate-12">12</span> 12세 관람가</li>
								<li><span class="rate-15">15</span> 15세 관람가</li>
								<li><span class="rate-x">청불</span> 청소년 관람불가</li>
							</ul>
							<div class="theater-movie">
								<div class="priceclick">
									<div class="pricebutton">
										<a href="#" class="btn priceTableBtn" title="관람료 안내 팝업">관람료
											안내</a>
									</div>
								</div>
								<script type="text/javascript">
						$("div.time>a", "div.each-movie-time")
								.click(
										function(e) {
											e.preventDefault();
											var playDate = $(this)
													.closest("div.time")
													.data("playdate"), theaterCode = $(
													this).closest(
													"div.time").data(
													"theatercode"), movieCode = $(
													this).closest(
													"div.time").data(
													"moviecode"), screenPlanId = $(
													this).closest(
													"div.time").data(
													"screenplanid"), playNumber = $(
													this).closest(
													"div.time").data(
													"playnumber");

											$.desktop.reserve
													.openTheater({
														playDate : playDate,
														theaterCode : theaterCode,
														movieCode : movieCode,
														screenPlanId : screenPlanId,
														playNumber : playNumber
													});
											return false;
										});
					</script>
							</div>
						</div>
						<div class="expl">
							<ul>
								<li>• 상영시간 20분 전까지만 취소가 가능합니다.(F&amp;B 영화는 2시간 전)</li>
								<li>• 지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분후 시작합니다.</li>
								<li>• 쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
								<li>• 모바일 캡쳐 화면 소지 시 입장 제한을 받을 수 있습니다.</li>
							</ul>
						</div>
					</div>
					<!--.wrap-->
				</div>

			</div>
		</div>
	</c:forEach>
	<jsp:include page="../footer.jsp" />
</body>
</html>