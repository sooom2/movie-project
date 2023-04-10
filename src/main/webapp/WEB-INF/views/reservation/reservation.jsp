<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>예매페이지_찐막</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/rsv/res_test.png" type="image/x-icon"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rsv/rsv.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rsv/rsv2.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rsv/rsv3.css">
	<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.number.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.cookie.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/scrollbar.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/swiper.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/front.js?v=1680673895731"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/app.js?v=1680673895731"></script>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>


	<div class="content">
		<div class="inner2">
			<form id="dataForm" method="post" action="seat">
<!-- 				<input type="hidden" id="cgid" name="cgid" value="FE8EF4D2-F22D-4802-A39A-D58F23A29C1E"> -->
<!-- 				<input type="hidden" id="ssid" name="ssid" value=""> -->
<!-- 				<input type="hidden" id="tokn" name="tokn" value=""> -->
<!-- 				<input type="hidden" id="hold" name="hold" value=""> -->

<!-- 				<input type="hidden" id="BrandCd" name="BrandCd" value="dtryx"> -->
				<input type="hidden" id="CinemaCd" name="CinemaCd" value="all">
<!-- 				<input type="hidden" id="MovieCd" name="MovieCd" value="all"> -->
<!-- 				<input type="hidden" id="PlaySDT" name="PlaySDT" value="all"> -->
<!-- 				<input type="hidden" id="Sort" name="Sort" value="boxoffice"> -->
<!-- 				<input type="hidden" id="ScreenCd" name="ScreenCd" value=""> -->
<!-- 				<input type="hidden" id="ShowSeq" name="ShowSeq" value=""> -->
				
<!-- 				<input type="hidden" id="TabBrandCd" name="TabBrandCd" value="dtryx"> -->
				<input type="hidden" id="TabRegionCd" name="TabRegionCd" value="all">
<!-- 				<input type="hidden" id="TabMovieType" name="TabMovieType" value="all"> -->
				
<!-- 				<input type="hidden" id="MovieKindCd" name="MovieKindCd" value=""> -->
<!-- 				<input type="hidden" id="MovieNm" name="MovieNm" value=""> -->
<!-- 				<input type="hidden" id="CinemaNm" name="CinemaNm" value=""> -->
<!-- 				<input type="hidden" id="PlayTimeType" name="PlayTimeType" value=""> -->
<!-- 				<input type="hidden" id="PlayTimeTypeNm" name="PlayTimeTypeNm" value=""> -->
<!-- 				<input type="hidden" id="StartTime" name="StartTime" value=""> -->
<!-- 				<input type="hidden" id="EndTime" name="EndTime" value=""> -->
<!-- 				<input type="hidden" id="ScreenNm" name="ScreenNm" value=""> -->
<!-- 				<input type="hidden" id="ScreenType" name="ScreenType" value=""> -->
<!-- 				<input type="hidden" id="ScreenTypeNm" name="ScreenTypeNm" value=""> -->
<!-- 				<input type="hidden" id="ScreeningInfo" name="ScreeningInfo" value=""> -->

<!-- 				<input type="hidden" id="HidMovieUrl" name="HidMovieUrl" value=""> -->
<!-- 				<input type="hidden" id="HidRating" name="HidRating" value=""> -->
<!-- 				<input type="hidden" id="HidTicketRate" name="HidTicketRate" value=""> -->
<!-- 				<input type="hidden" id="HidReleaseDT" name="HidReleaseDT" value=""> -->

				
				<!-- PC 전용 -->
				<div class="reservation-pc page-type">
					<div class="in-wrap">
						<div class="in-box">
							<div class="in w1200">
								<div class="head">
									<h4 class="r-h4">영화예매</h4>
									<div class="right">
										<!-- 예매다시하기 클릭시 현재페이지 새로고침 -->
										<a href="javascript:location.reload(true);" 
											class="btn-refresh">예매다시하기</a>
									</div>
								</div>
								<!-- // head -->

								<div class="body">
									<!-- 영화관 -->
									<div class="cinema-list">
										<div class="list-head">
											<h5 class="r-h5">영화관</h5>
										</div>
										<div class="list">
											<!--1. 지역 선택 -->
											<div class="step1">
												<div class="scroll-wrapper scrollbar-inner" style="position: relative;">
													<div class="scrollbar-inner scroll-content scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 533px;">
														<ul id="regionList">
															<li>
															<button type="button" class="btnTheater" title="즐겨찾는 영화관" data-cd="favorite"> 즐겨찾는 영화관</button></li>
															<li class="active"><button type="button" class="btnTheater" title="전체" data-cd="all">전체</button></li>
															<li><button type="button" class="btnTheater" title="부산" data-cd="051">부산</button></li>
															<li><button type="button" class="btnTheater" title="서울" data-cd="02">서울</button></li>
															<li><button type="button" class="btnTheater" title="울산" data-cd="052">울산</button></li>
															<li><button type="button" class="btnTheater" title="경남" data-cd="055">경남</button></li>
														</ul>
													</div>
												</div>
											</div>
											<!--2. 영화관 선택 -->
											<div class="step2">
												<div class="scroll-wrapper scrollbar-inner" style="position: relative;">
													<div id="cinemaList" class="scrollbar-inner scroll-content" style="height: 533px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
														<!-- 즐겨찾는 영화관 클릭시 나타나는 탭 -->
														<ul class="subTheater" data-cd="favorite" style="display: none"></ul>
														
														<!-- 하드코딩 고쳐야함 ㅠ^ㅠ -->
														
														<!-- 전체 -->
														<ul class="subTheater" data-cd="all" style="display: block;">
															<c:forEach var="cinema" items="${cinema }">
																<li>
																	<button type="button" class="btnCnItem" data-cd="${cinema.cinema_code }" title="${cinema.cinema_name }">${cinema.cinema_name }</button> 
																</li>
															</c:forEach>
														</ul>
														
														<!-- 부산 -->
														<ul class="subTheater" data-cd="051" style="display: none;">
															<c:forEach var="cinema" items="${cinema }">
																<c:if test="${cinema.location_code eq '051'}">
																	<li>
																		<button type="button" class="btnCnItem" data-cd="${cinema.cinema_code }" title="${cinema.cinema_name }">${cinema.cinema_name }</button>
																	</li>
																</c:if>
																
															</c:forEach>
														</ul>
														<!-- 서울 -->
														<ul class="subTheater" data-cd="02" style="display: none;">
															<c:forEach var="cinema" items="${cinema }">
																<c:if test="${cinema.location_code eq '02'}">
																	<li>
																		<button type="button" class="btnCnItem" data-cd="${cinema.cinema_code }" title="${cinema.cinema_name }">${cinema.cinema_name }</button>
																	</li>
																</c:if>
															</c:forEach>
														</ul>
														<!-- 울산 -->
														<ul class="subTheater" data-cd="052" style="display: none;">
															<c:forEach var="cinema" items="${cinema }">
																<c:if test="${cinema.location_code eq '052'}">
																	<li>
																		<button type="button" class="btnCnItem" data-cd="${cinema.cinema_code }" title="${cinema.cinema_name }">${cinema.cinema_name }</button>
																	</li>
																</c:if>
															</c:forEach>
														</ul>
														<!-- 경남 -->
														<ul class="subTheater" data-cd="055" style="display: none;">
															<c:forEach var="cinema" items="${cinema }">
																<c:if test="${cinema.location_code eq '055'}">
																	<li>
																		<button type="button" class="btnCnItem" data-cd="${cinema.cinema_code }" title="${cinema.cinema_name }">${cinema.cinema_name }</button>
																	</li>
																</c:if>
															</c:forEach>
														</ul>
														
														
														
														
													</div>
													<div class="scroll-element scroll-x">
														<div class="scroll-element_outer">
															<div class="scroll-element_size"></div>
															<div class="scroll-element_track"></div>
															<div class="scroll-bar" style="width: 100px;"></div>
														</div>
													</div>
													<div class="scroll-element scroll-y">
														<div class="scroll-element_outer">
															<div class="scroll-element_size"></div>
															<div class="scroll-element_track"></div>
															<div class="scroll-bar" style="height: 100px; top: 0px;"></div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- // 영화관 -->

									<!-- 영화리스트 -->
									<div class="mv-list">
										<div class="list-head">
											<h5 class="r-h5">영화</h5>
										</div>
										<div class="tab2">
											<a href="#" class="btnMovieTab" data-tab="boxoffice">예매율순</a> 
											<a href="#" class="btnMovieTab active" data-tab="name">가나다 순</a>
										</div>
										<div class="list">
											<div class="scrollbar-inner">
												<ul id="movieList">
													<c:forEach var="movieTitle" items="${movieInfo }">
															<li>
																<button type="button" class="btnMvItem" data-cd="${movieTitle.info_movie_code }"
																	data-url="${movieTitle.info_movie_poster }"
																	data-rdt="${movieTitle.info_showdate }"
																	title="${movieTitle.info_movie_title }">${movieTitle.info_movie_title }</button>
															</li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>
									<!-- // 영화리스트 -->

									<!-- 날짜 -->
									<div class="date-list">
										<div class="list">
											<div class="scrollbar-inner">
												<div class="reserve-date"></div>
											</div>
										</div>
									</div>
									<!-- // 날짜 -->

									<!-- 상영시간 -->
									<div class="time">
										<div class="list-head">
											<h5 class="r-h5">상영시간</h5>
										</div>
										<div class="list-body">
											<div class="scroll-wrapper scrollbar-inner"
												style="position: relative;">
												<div class="scrollbar-inner scroll-content"
													style="height: 305px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
													<div id="timeList">
														<div class="list-type">
															<ul>
																<ul class="mvTimeLine">
																	<c:forEach var="movieTime" items="${movie }">
																		<li>
																			<button type="button" class="btnTime" data-cd="${movieTime.location_code }"
																				data-seq="${movieTime.screen_code }">
																				<div class="loc">${movieTime.screen_name }</div>
																				<div class="info">
																					<p class="time">
																						${movieTime.sch_start_time }<span>~${movieTime.sch_last_time }</span>
																					</p>
																					<p class="num">
																						89/<span>89석(수정필요))</span>
																					</p>
																				</div>
																			</button>
																		</li>
																	</c:forEach>
																</ul>
															</ul>
														</div>
<!-- 														<div class="thum-type" style="display: none"> -->
<!-- 															<h5 class="thum-tit">1관/2D(자막)</h5> -->
<!-- 															<ul> -->
<!-- 																<li> -->
<!-- 																	<button type="button" class="btnTime" data-cd="01" -->
<!-- 																		data-seq="1"> -->
<!-- 																		<strong>10:30<span>~12:32</span></strong> -->
<!-- 																		<p> -->
<!-- 																			89/<span>89석</span> -->
<!-- 																		</p> -->
<!-- 																	</button> -->
<!-- 																</li> -->
<!-- 																<li> -->
<!-- 																	<button type="button" class="btnTime" data-cd="01" -->
<!-- 																		data-seq="3"> -->
<!-- 																		<strong>16:10<span>~18:12</span></strong> -->
<!-- 																		<p> -->
<!-- 																			87/<span>89석</span> -->
<!-- 																		</p> -->
<!-- 																	</button> -->
<!-- 																</li> -->
<!-- 															</ul> -->
<!-- 														</div> -->
													</div>
												</div>
												<div class="scroll-element scroll-x">
													<div class="scroll-element_outer">
														<div class="scroll-element_size"></div>
														<div class="scroll-element_track"></div>
														<div class="scroll-bar" style="width: 100px;"></div>
													</div>
												</div>
												<div class="scroll-element scroll-y">
													<div class="scroll-element_outer">
														<div class="scroll-element_size"></div>
														<div class="scroll-element_track"></div>
														<div class="scroll-bar" style="height: 100px;"></div>
													</div>
												</div>
											</div>

											<div class="info-box">
													<div class="info">
														<!-- 선택후 -->
														<div class="img"><img src="https://img.dtryx.com/poster/2023/02/7363A612-6112-4B4A-8150-345A88C2E9FA.small.jpg"></div>
														<div class="text">
															<strong><span class="mvNm">스즈메의 문단속</span></strong>
															<dl>
																<dt>극장</dt>
																<dd class="cnNm">1939시네마</dd>
															</dl>
															<dl>
																<dt>상영관</dt>
																<dd class="scNm"></dd>
															</dl>
															<dl>
																<dt>상영등급</dt>
																<dd class="rtNm">12세 이상 관람가</dd>
															</dl>
															<dl>
																<dt>날짜</dt>
																<dd class="plDt">2023-04-15(토)</dd>
															</dl>
															<dl>
																<dt>상영시간</dt>
																<dd class="tiNm"></dd>
															</dl>
														</div>
													</div>
													<div class="next">
														<button type="button" id="btnNext">인원/좌석 선택</button>
													</div>
												</div>
										</div>

									</div>
								</div>
								<!-- // 상영시간 -->
							</div>
							<!-- // body -->
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- // PC 전용 -->
	</div>
	<div class="modal" id="viewGrade">
		<div class="modal-dialog" style="max-width:470px">
			<div class="modal-content">
				<div class="modal-header">
					<h4>관람등급 안내</h4>
					<button class="close-modal btnNext">닫기</button>
				</div>
				<div class="modal-body">
					<div class="thReservWrap mb30">
						<div class="thBox">
							<h3><span class="cnNm"></span> <span class="scNm"></span></h3>
							<p><span class="plDt"></span> <span class="tiNm"></span></p>
							<div class="item">
								<p class="tit"></p>
								<div class="txt"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-bottom ">
					<button class="btn-modal2 btnNext" style="width:100%">확인</button>
				</div>
			</div>
		</div>
	</div>



<!-- // 즐겨찾는 영화관 비회원으로 했을 때 -->
	<div class="modal" id="login">
		<div class="modal-dialog" style="max-width:350px">
			<div class="modal-content">
				<div class="modal-header">
					<h4>로그인</h4>
					<button type="button" class="close-modal" data-dismiss="modal">닫기</button>
				</div>
				<div class="modal-body">
					<div class="modal-txt mb35">로그인 후 이용해 주세요.</div>
					<div class="modal-bottom flex">
						<button type="button" class="btn-modal1" data-dismiss="modal">닫기</button>
<!-- 						<button type="button" class="btn-modal2" onclick="goLink('/member/login.do');">로그인</button> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
<!-- // 관람등급안내창 -->
<!-- 	<div class="modal" id="viewGrade" tabindex="-1" style="display: block;"> -->
<!-- 		<div class="modal-dialog" style="max-width: 470px; margin-top: 276px;"> -->
<!-- 			<div class="modal-content"> -->
<!-- 				<div class="modal-header"> -->
<!-- 					<h4>관람등급 안내</h4> -->
<!-- 					<button class="close-modal btnNext">닫기</button> -->
<!-- 				</div> -->
<!-- 				<div class="modal-body"> -->
<!-- 					<div class="thReservWrap mb30"> -->
<!-- 						<div class="thBox"> -->
<!-- 							<h3><span class="cnNm">1939시네마</span> <span class="scNm">2관 2D(자막)</span></h3> -->
<!-- 							<p><span class="plDt">2023-04-05(수)</span> <span class="tiNm">14:30~16:32</span></p> -->
<!-- 							<div class="item"> -->
<!-- 								<p class="tit"><i class="age12"></i> 12세 이상 관람가</p> -->
<!-- 								<div class="txt"><p> 본 영화는 만 12세 이상 관람 가능한 영화입니다. </p><p> 만 12세 미만 고객은 부모님 또는 만 19세 이상 보호자 동반 시 관람이 가능합니다. </p><p> 연령 확인 불가 시 입장이 제한 될 수 있습니다. </p><p> ※ 보호자란? : 만 19세 이상의 성인 보호자 (고등학교 재학생 불가) </p></div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="modal-bottom "> -->
<!-- 					<button class="btn-modal2 btnNext" style="width:100%">확인</button> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	
<!-- 	script안에 model 객체 받아오려면...??? -->
	
	
	<script type="text/javascript" >
	var movieList = [];
	var cinemaList = [];
	var areaList = [];
	var timeList = [];
	var favoriteCinema = [];
	var timer = null;
	//---

	
	
	$(function() {
		
		
		// 지역 클릭
		$(".btnTheater").on("click", function(e){
			var cd = $(this).data("cd");
			
			// 비회원인 경우 로그인 후 이용해주세요 
			if (cd == "favorite") {
				$("#login").modal();
				return;
			} 
			
			// 클릭한 지역 배경색 전환
			$(".btnTheater").parent().removeClass("active");
			$(this).parent().addClass("active");
			
			// location_code 저장
			$("#TabRegionCd").val($(this).data("cd"));
			
			console.log($("#TabRegionCd").val());
			
			$(".subTheater").hide();
			$('.subTheater[data-cd="' + cd + '"]').show();
			
			
			
			
			
		});
		
		
		
		// 예매율순 | 가나다순 클릭
		$(".btnMovieTab").on("click", function(e) { 
			e.preventDefault();
			$(".btnMovieTab").removeClass("active");
			$(this).addClass("active");
			$("#Sort").val($(this).data("tab"));
			
// 			getMainList();
// 			makeMovieList();
		});
		
		// 인원/좌석 선택 버튼 클릭 (임시로 페이지만 넘어가게함 수정필요)
		$("#btnNext").on("click", function(e) {
			alert("인원/좌석선택 버튼 클릭");
			location.href='seat';
		});
		
	});
		
// -----------------------------------------------------------------------------------	function end



// 영화관 리스트 TEST
// 	function test() {
// 		var cinemaObject = [[${cinema}]];
// 		console.log("test함수");
// // 		console.log(${cinema});
// 		console.log(cinemaObject.cinema_name);
// 		var tab = "";
// 		var det = "";

		//전체
// 		for (var i = 0; i < cinemaList.length; i++) {
// 			var obj = cinemaList[i];
// 			det += '<li>';
// 			det += '<button type="button" class="btnCnItem' + ' data-cd="' + obj.CinemaCd + '" title="' + obj.CinemaNm + '">' + obj.CinemaNm + '</button>';
// 			det += '</li>';
// 		}
// 		det += '</ul>';
// 		tab += '<li' + ("all" == $("#TabRegionCd").val() ? ' class="active"' : '') + '><button type="button" class="btnTheater" title="전체" data-cd="all">전체 (' + cnt + ')</button></li>';
		

// 		$("#regionList").html(tab);
// 		$("#cinemaList").html(det);

// 		if ($("#srchCinema").val() != "")
// 			$("#srchCinema").keyup();
		
// 		if ($("#TabRegionCd").val() == "all"){
// 			if ($("#CinemaCd").val() == "all" && $('.subTheater[data-cd="favorite"] li').length > 0) {
// 				$('.btnTheater[data-cd="favorite"]').click();
// 			}else{
// 				$('.btnTheater[data-cd="all"]').click();
// 			}
// 		} else {
// 			$('.btnTheater[data-cd="' + $("#TabRegionCd").val() + '"]').click();
// 		}
		
// 		$("#regionList li.active .btnTheater").focus();
// 		$("#cinemaList .subTheater:visible li:first-child .btnCnItem").focus();
// 		$("#cinemaList .subTheater:visible li.check .btnCnItem").focus();
// 	}

	

// 영화 클릭
	$(document).on("click", ".btnMvItem", function(e) {
		e.preventDefault();
		$("#movieList li").removeClass("check");
		if ($("#MovieCd").val() == $(this).data("cd")) {
			$("#MovieCd").val("all");
		} else {
			$("#MovieCd").val($(this).data("cd"));
			$(this).parent().addClass("check");
		}
		setMovie();
		
// 		getMainList();
		makeBrandList();
		makeCinemaList();
		makePlaydtList();
		
		if ($("#MovieCd").val() != "all" && $("#CinemaCd").val() != "all" && $("#PlaySDT").val() != "all")
			getTimeList();
		else
			timeList = [];
		
		makeTimeList();
		setTime();
	});
	
	$(document).on("click", ".btnBrandTab", function(e) {
		e.preventDefault();
		if ($(this).hasClass("disabled")) {
			return;
		}
		
		$(".btnBrandTab").removeClass("active");
		$(this).addClass("active");
		$("#TabBrandCd").val($(this).data("cd"));
		$("#BrandCd").val($(this).data("cd"));
		getMainList();
		makeCinemaList();
		makePlaydtList();
		
		$(".btnMovieType[data-type='all']").click();
	});

// 	$(document).on("click", ".btnTheater", function(e) {
// 		var cd = $(this).data("cd");
		
// 		if (cd == "favorite") {
// 			$("#login").modal();
// 			return;
// 		}
		
		
// 		$(".btnTheater").parent().removeClass("active");
// 		$(this).parent().addClass("active");
		
// 		$("#TabRegionCd").val($(this).data("cd"));
		
// 		$(".subTheater").hide();
// 		$('.subTheater[data-cd="' + cd + '"]').show();
// 	});

	// 영화관 클릭
	$(document).on("click", ".btnCnItem", function(e) {
		$(".btnCnItem").parent().removeClass("check");
		if ($("#CinemaCd").val() == $(this).data("cd")) {
			$("#CinemaCd").val("all");
		} else {
			$("#CinemaCd").val($(this).data("cd"));
			$('.btnCnItem[data-cd="' + $(this).data("cd") + '"]').parent().addClass("check"); // 영화관 클릭시 테두리
		}
		console.log($("#CinemaCd").val());
// 		setCinema();
		
// 		getMainList();
// 		makeMovieList();
// 		makePlaydtList();
		
// 		if ($("#MovieCd").val() != "all" && $("#CinemaCd").val() != "all" && $("#PlaySDT").val() != "all")
// 			getTimeList();
// 		else
// 			timeList = [];
		
// 		makeTimeList();
// 		setTime();
	});

// 	$(document).on("click", ".btnDay", function(e) {
// 		$(".btnDay").parent().removeClass("check");
// 		if ($("#PlaySDT").val() == $(this).data("dt")) {
// 			$("#PlaySDT").val("all");
// 		} else {
// 			$("#PlaySDT").val($(this).data("dt"));
// 			$(this).parent().addClass("check");
// 		}
// 		setPlayDT();
		
// 		getMainList();
// 		makeBrandList();
// 		makeCinemaList();
// 		makeMovieList();
		
// 		if ($("#MovieCd").val() != "all" && $("#CinemaCd").val() != "all" && $("#PlaySDT").val() != "all")
// 			getTimeList();
// 		else
// 			timeList = [];
		
// 		makeTimeList();
// 		setTime();
// 	});
	

	
	
	// 상영시간 버튼 클릭
	$(document).on("click", ".btnTime", function(){
		alert("TEST : 상영시간 버튼클릭");
	});
	
	
	
	
	// 리아(RIA) 영화 및 상영일자 리스트
// 	function getMainList() {
// 		$.ajax({
// 			type: "GET",
// 			url: "/reserve/main_list.do",
// 			async: false,
// 			data: $("#dataForm").serialize(),
// 			cache: false,
// 			dataType: 'json',
// 			success: function(res) {
// 				movieList = res.MovieList;
// 				cinemaList = res.CinemaList;
// 				areaList = res.AreaList;
// 				playSdtList = res.PlaySdtList;
// 			}
// 		});
// 	}
	
	// 영화 리스트 작성
// 	function makeMovieList() {
// 		var rst = '';
// 		var cnt = 0;
// 		var list = [];
	
// 		list = movieList;
		
// 		for (var i = 0; i < list.length; i++) {
// 			var obj = list[i];
// 			if (obj.MovieCd != "") {
// 				rst += '<li' + (obj.MovieCd == $("#MovieCd").val() ? ' class="check"' : '') + '>';
// 				rst += '	<button type="button" class="btnMvItem' + (obj.HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-cd="' + obj.MovieCd + '" data-url="' + obj.Url + '" data-rat="' + obj.Rating + '" data-trt="' + (obj.TicketRate !== undefined ? parseFloat(obj.TicketRate).toFixed(2) : '0.00') + '" data-rdt="' + obj.ReleaseDT + '" title="' + obj.MovieNm + '">';
// 				rst += '		<i class="age' + getRating(obj.Rating) + '"></i>';
// 				rst += '		' + obj.MovieNm + '';
// 				rst += '	</button>';
// 				rst += '</li>';
// 				cnt++;
// 			}
// 		}
		
// 		$("#movieList").html(rst);
		
// 		if ($("#srchMovie").val() != "")
// 			$("#srchMovie").keyup();
		
// 		$("#movieList li:first-child .btnMvItem").focus();
// 		$("#movieList li.check .btnMvItem").focus();
// 	}
	
	
	// 극장 리스트 작성
// 	function makeCinemaList() {
// 		var tab = "";
// 		var det = "";

// 		//즐겨찾는 극장
// 		var cnt = 0;
// 		for (var i = 0; i < favoriteCinema.length; i++) {
// 			var obj = favoriteCinema[i];
// 			var c = cinemaList.map(function(e){ return e.CinemaCd == obj.CinemaCd; }).indexOf(true);
// 			if (c > -1) {
// 				det += '<li' + (obj.CinemaCd == $("#CinemaCd").val() ? ' class="check"' : '') + '>';
// 				det += '<a href="#" class="btn-star active" data-cd="' + obj.CinemaCd + '" data-nm="' + obj.CinemaNm + '" data-rg="' + obj.RegionCd + '"></a>';
// 				det += '<button type="button" class="btnCnItem' + (cinemaList[c].HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-cd="' + obj.CinemaCd + '" title="' + obj.CinemaNm + '">' + obj.CinemaNm + '</button>';
// 				det += '</li>';
// 				cnt++;
// 			}
// 		}
// 		det += '</ul>';
// 		tab += '<li' + ("favorite" == $("#TabRegionCd").val() ? ' class="active"' : '') + '><button type="button" class="btnTheater" title="즐겨찾는 영화관" data-cd="favorite">즐겨찾는 영화관 <span>(' + cnt + ')</span></button></li>';
		
// 		//전체
// 		cnt = 0;
// 		for (var i = 0; i < cinemaList.length; i++) {
// 			var obj = cinemaList[i];
// 			det += '<li>';
// 			det += '<button type="button" class="btnCnItem' + ' data-cd="' + obj.CinemaCd + '" title="' + obj.CinemaNm + '">' + obj.CinemaNm + '</button>';
// 			det += '</li>';
// 			cnt++;
// 		}
// 		det += '</ul>';
// 		tab += '<li' + ("all" == $("#TabRegionCd").val() ? ' class="active"' : '') + '><button type="button" class="btnTheater" title="전체" data-cd="all">전체 (' + cnt + ')</button></li>';
		
// 		//지역별
// 		for (var i = 0; i < areaList.length; i++) {
// 			var obj = areaList[i];
// 			var cnt = 0;
// 			det += '<ul class="subTheater" data-cd="' + obj.RegionCd + '"' + (obj.RegionCd != $("#TabRegionCd").val() ? ' style="display:none"' : '') + '>';
// 			for (var j = 0; j < obj.AreaDetail.length; j++) {
// 				det += '<li' + (obj.AreaDetail[j].CinemaCd == $("#CinemaCd").val() ? ' class="check"' : '') + '>';
// 				det += '<a href="#" class="btn-star' + (favoriteCinema.map(function(e){ return e.CinemaCd == obj.AreaDetail[j].CinemaCd; }).indexOf(true) > -1 ? ' active' : '') + '" data-cd="' + obj.AreaDetail[j].CinemaCd + '" data-nm="' + obj.AreaDetail[j].CinemaNm + '" data-rg="' + obj.AreaDetail[j].RegionCd + '"></a>';
// 				det += '<button type="button" class="btnCnItem' + (obj.AreaDetail[j].HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-cd="' + obj.AreaDetail[j].CinemaCd + '" title="' + obj.AreaDetail[j].CinemaNm + '">' + obj.AreaDetail[j].CinemaNm + '</button>';
// 				det += '</li>';
// 				cnt++;
// 			}
// 			det += '</ul>';
// 			tab += '<li' + (obj.RegionCd == $("#TabRegionCd").val() ? ' class="active"' : '') + '><button type="button" class="btnTheater" title="' + obj.RegionNm + '" data-cd="' + obj.RegionCd + '"' + (cnt == 0 ? ' disabled' : '') + '>' + obj.RegionNm + ' (' + cnt + ')</button></li>';
// 		}

// 		$("#regionList").html(tab);
// 		$("#cinemaList").html(det);

// 		if ($("#srchCinema").val() != "")
// 			$("#srchCinema").keyup();
		
// 		if ($("#TabRegionCd").val() == "all"){
// 			if ($("#CinemaCd").val() == "all" && $('.subTheater[data-cd="favorite"] li').length > 0) {
// 				$('.btnTheater[data-cd="favorite"]').click();
// 			}else{
// 				$('.btnTheater[data-cd="all"]').click();
// 			}
// 		} else {
// 			$('.btnTheater[data-cd="' + $("#TabRegionCd").val() + '"]').click();
// 		}
		
// 		$("#regionList li.active .btnTheater").focus();
// 		$("#cinemaList .subTheater:visible li:first-child .btnCnItem").focus();
// 		$("#cinemaList .subTheater:visible li.check .btnCnItem").focus();
// 	}
	
	
	// 상영 회차 리스트
// 	function getTimeList() {
// 		$.ajax({
// 			type: "GET",
// 			url: "/reserve/showseq_list.do",
// 			async: false,
// 			data: $("#dataForm").serialize(),
// 			cache: false,
// 			dataType: 'json',
// 			success: function(res) {
// 				if (res.Showseqlist !== undefined) {
// 					timeList = res.Showseqlist;
// 				} else {
// 					timeList = [];	
// 				}
// 			}
// 		});
// 	}

	// 상영 회차 리스트 작성
// 	function makeTimeList() {
// 		var rst = "";
// 		var cnt = 0;
		
// 		var list = "";
// 		var thum = "";
// 		for (var i = 0; i < timeList.length; i++) {
// 			var obj = timeList[i];
// 			if (obj.MovieDetail.length > 0){
// 				list += '<ul>';
// 				list += '	<ul class="mvTimeLine">';
// 				thum += '<h5 class="thum-tit">' + obj.ScreenNm + '/' + obj.ScreeningInfo + '</h5>';
// 				thum += '<ul>';
// 				for (var j = 0; j < obj.MovieDetail.length; j++) {
// 					list += '	<li' + (obj.MovieDetail[j].ScreenCd == $("#ScreenCd").val() && obj.MovieDetail[j].ShowSeq == $("#ShowSeq").val() ? ' class="check"' : '') + '>';
// 					list += '		<button type="button" class="btnTime" data-cd="' + obj.MovieDetail[j].ScreenCd + '" data-seq="' + obj.MovieDetail[j].ShowSeq + '">';
// 					list += '			<div class="loc">' + obj.ScreenNm + '/' + obj.ScreeningInfo + '</div>';
// 					list += '			<div class="info">';
// 					list += '				<p class="time">' + obj.MovieDetail[j].StartTime + '<span>~' + obj.MovieDetail[j].EndTime + '</span></p>';
// 					list += '				<p class="num">' + fnParseInt(obj.MovieDetail[j].RemainSeatCnt) + '/<span>' + fnParseInt(obj.MovieDetail[j].TotalSeatCnt) + '석</span></p>';
// 					list += '			</div>';
// 					list += '		</button>';
// 					list += '	</li>';
					
// 					thum += '	<li' + (obj.MovieDetail[j].ScreenCd == $("#ScreenCd").val() && obj.MovieDetail[j].ShowSeq == $("#ShowSeq").val() ? ' class="check"' : '') + '>';
// 					thum += '		<button type="button" class="btnTime" data-cd="' + obj.MovieDetail[j].ScreenCd + '" data-seq="' + obj.MovieDetail[j].ShowSeq + '">';
// 					thum += '			<strong>' + obj.MovieDetail[j].StartTime + '<span>~' + obj.MovieDetail[j].EndTime + '</span></strong>';
// 					thum += '			<p>' + fnParseInt(obj.MovieDetail[j].RemainSeatCnt) + '/<span>' + fnParseInt(obj.MovieDetail[j].TotalSeatCnt) + '석</span></p>';
// 					thum += '		</button>';
// 					thum += '	</li>';
// 					cnt++;
// 				}
// 				list += '</ul>';
// 				thum += '</ul>';
// 			}
// 		}
		
// 		if (cnt > 0) {
// 			rst += '<div class="list-type"' + ($(".btn-thum").hasClass("active") ? ' style="display: none"' : '') + '>' + list + '</div>';
// 			rst += '<div class="thum-type"' + ($(".btn-list").hasClass("active") ? ' style="display: none"' : '') + '>' + thum + '</div>';
// 		} else {
// 			rst = '<div class="none"><div class="desc">영화, 영화관 , 날짜를<br>선택해주세요</div></div>';
// 		}
		
// 		$("#timeList").html(rst);
		
// 		$("#timeList .btnTime").eq(0).focus();
// 		$("#timeList li.check .btnTime").focus();
// 	}
	
	// 영화 선택
// 	function setMovie() {
// 		var cd = $("#MovieCd").val();
		
// 		if (cd == "all") {
// 			$(".info .img img").remove();
// 			$(".info .mvNm").html("&nbsp;");
// 			$(".info .rtNm").text("");
			
// 			$("#HidRating").val("");
// 			$("#HidMovieUrl").val("");
// 			$("#HidTicketRate").val("");
// 			$("#HidReleaseDT").val("");
// 		} else {
// 			var obj = $('.btnMvItem[data-cd="' + cd + '"]');

// 			$(".info .img img").remove();
// 			$(".info .img").append('<img src="' + obj.data("url") + '">');
// 			$(".info .mvNm").text(obj.attr("title"));
// 			$(".info .rtNm").text(getRatingTxt(obj.data("rat")));

// 			$("#HidRating").val(obj.data("rat"));
// 			$("#HidMovieUrl").val(obj.data('url'));
// 			$("#HidTicketRate").val(obj.data('trt'));
// 			$("#HidReleaseDT").val(obj.data('rdt'));
// 		}
// 	}
	
	// 극장 선택
// 	function setCinema() {
// 		var cd = $("#CinemaCd").val();
		
// 		if (cd == "all") {
// 			$(".cnNm").text("");
// 		} else {
// 			var obj = $('.btnCnItem[data-cd="' + cd + '"]');
// 			$(".cnNm").text(obj.attr('title'));
// 		}
// 	}
	
	// 날짜 선택
// 	function setPlayDT() {
// 		var date = $("#PlaySDT").val();
		
// 		if (date == "all") {
// 			$(".plDt").text("");
// 		} else {
// 			$(".plDt").text($.datepicker.formatDate('yy-mm-dd(D)', new Date(date)));
// 		}
// 	}
	
	// 시간 선택
// 	function setTime() {
// 		var cd = $("#ScreenCd").val();
// 		var seq = $("#ShowSeq").val();
		
// 		var time = null;
// 		if (cd != "" && seq != "") {
// 			for (var i = 0; i < timeList.length && !time; i++) {
// 				for (var j = 0; j < timeList[i].MovieDetail.length; j++) {
// 					if (timeList[i].MovieDetail[j].ScreenCd == cd && timeList[i].MovieDetail[j].ShowSeq == seq){
// 						time = timeList[i].MovieDetail[j];
// 						break;
// 					}
// 				}
// 			}
// 		}
		
// 		if (time != null) {
// 			$("#BrandCd").val(time.BrandCd);
// 			$("#MovieKindCd").val(time.MovieKindCd);
// 			$("#MovieNm").val(time.MovieNm);
// 			$("#CinemaNm").val(time.CinemaNm);
// 			$("#PlayTimeType").val(time.PlayTimeType);
// 			$("#PlayTimeTypeNm").val(time.PlayTimeTypeNm);
// 			$("#StartTime").val(time.StartTime);
// 			$("#EndTime").val(time.EndTime);
// 			$("#ScreenNm").val(time.ScreenNm);
// 			$("#ScreenType").val(time.ScreenType);
// 			$("#ScreenTypeNm").val(time.ScreenTypeNm);
// 			$("#ScreeningInfo").val(time.ScreeningInfo);
			
// 			$(".scNm").text(time.ScreenNm + " " + time.ScreeningInfo + "");
// 			$(".tiNm").text(time.StartTime + "~" + time.EndTime);
// 		} else {
// 			$("#ScreenCd").val("");
// 			$("#ShowSeq").val("");
// 			$("#BrandCd").val($("#TabBrandCd").val());
// 			$("#MovieKindCd").val("");
// 			$("#MovieNm").val("");
// 			$("#CinemaNm").val("");
// 			$("#PlayTimeType").val("");
// 			$("#PlayTimeTypeNm").val("");
// 			$("#StartTime").val("");
// 			$("#EndTime").val("");
// 			$("#ScreenNm").val("");
// 			$("#ScreenType").val("");
// 			$("#ScreenTypeNm").val("");
// 			$("#ScreeningInfo").val("");
			
// 			$(".scNm").text("");
// 			$(".tiNm").text("");
// 		}
// 	}

	// 선호영화관 조회
// 	function getFavoriteCinema() {
// 		$.ajax({
// 			type: "GET",
// 			url: "/reserve/favorite_cinema.do",
// 			async: false,
// 			data: $("#dataForm").serialize(),
// 			cache: false,
// 			dataType: 'json',
// 			success: function(res) {
// 				for (var i = 1; i <= 3; i++) {
// 					if (fnParseStr(eval("res.CinemaCd" + i)) != ""){
// 						var favorite = [];
// 						favorite.CinemaCd = fnParseStr(eval("res.CinemaCd" + i));
// 						favorite.CinemaNm = fnParseStr(eval("res.CinemaNm" + i));
// 						favorite.RegionCd = fnParseStr(eval("res.RegionCd" + i));
// 						favoriteCinema.push(favorite);
// 					}
// 				}
// 			}
// 		});
// 	}
	
	// 선호영화관 등록
// 	function setFavoriteCinema() {
// 		var cinemaCd1 = favoriteCinema[0] !== undefined ? fnParseStr(favoriteCinema[0].CinemaCd) : "";
// 		var cinemaCd2 = favoriteCinema[1] !== undefined ? fnParseStr(favoriteCinema[1].CinemaCd) : "";
// 		var cinemaCd3 = favoriteCinema[2] !== undefined ? fnParseStr(favoriteCinema[2].CinemaCd) : "";
		
// 		$.ajax({
// 			type: "POST",
// 			url: "/reserve/favorite_cinema.do",
// 			async: false,
// 			data: { CinemaCd1: cinemaCd1, CinemaCd2: cinemaCd2, CinemaCd3: cinemaCd3, ssid: sessionStorage.getItem("ssid"), tokn: sessionStorage.getItem("tokn"), hold: sessionStorage.getItem("hold") },
// 			cache: false,
// 			dataType: 'json',
// 			success: function(res) {
// 			},
// 			error: function(request, status, error){
// 				console.log('code: '+request.status+'\n'+'message: '+request.responseText+'\n'+'error: '+error);
// 			}
// 		});
// 	}
	
// 	$(document).on("click", ".btn-star", function(e) {
// 		e.preventDefault();
		
// 		$("#login").modal();
		
// 	});
</script> 

<!-- 	 // 날짜 -->
	 <script>
        const date = new Date();
        const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
        const reserveDate = document.querySelector(".reserve-date");

      
            const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"]
            const year = date.getFullYear();
            const month = date.getMonth() + 1;
            for (i = date.getDate(); i <= lastDay.getDate(); i++) {

                const button = document.createElement("button");
                const spanWeekOfDay = document.createElement("span");
                const spanDay = document.createElement("span");

                //class넣기
                button.classList = "movie-date-wrapper"
                spanWeekOfDay.classList = "movie-week-of-day";
                spanDay.classList = "movie-day";

                //weekOfDay[new Date(2023-03-날짜)]
                const dayOfWeek = weekOfDay[new Date(year + "-" + month + "-" + i).getDay()];

                //요일 넣기
                if (dayOfWeek === "토") {
                    spanWeekOfDay.classList.add("saturday");
                    spanDay.classList.add("saturday");
                } else if (dayOfWeek === "일") {
                    spanWeekOfDay.classList.add("sunday");
                    spanDay.classList.add("sunday");
                }
                spanWeekOfDay.innerHTML = dayOfWeek;
                button.append(spanWeekOfDay);
                //날짜 넣기
                spanDay.innerHTML = i;
                button.append(spanDay);
                //button.append(i);
                reserveDate.append(button);

                dayClickEvent(button);
            }

        

        function dayClickEvent(button) {
            button.addEventListener("click", function() {
                const movieDateWrapperActive = document.querySelectorAll(".movie-date-wrapper-active");
                movieDateWrapperActive.forEach((list) => {
                    list.classList.remove("movie-date-wrapper-active");
                })
                button.classList.add("movie-date-wrapper-active");
            })
        }
    </script>
<!--     // 날짜 end -->
    
    
		<!-- // footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
		
	<div class="modal" id="mAlert">
		<div class="modal-dialog" style="max-width:340px">
			<div class="modal-content">
				<div class="modal-header">
					<h4>알림</h4>
					<button type="button" class="close-modal" onclick="$('#mAlert').modal({show:0});">닫기</button>
				</div>
				<div class="modal-body">
					<div class="modal-txt">
					</div>
					<div class="modal-bottom text-right">
						<button type="button" class="btn-modal2 close-modal" onclick="$('#mAlert').modal({show:0});">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal" id="oAlert">
		<div class="modal-dialog" style="width:340px">
			<div class="modal-content">
				<div class="modal-header">
					<h4>알림</h4>
					<button type="button" class="close-modal" onclick="closeModal('oAlert');">닫기</button>
				</div>
				<div class="modal-body">
					<div class="modal-txt">
					</div>
					<div class="modal-bottom text-right">
						<button type="button" class="btn-modal2 close-modal" onclick="closeModal('oAlert');">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>