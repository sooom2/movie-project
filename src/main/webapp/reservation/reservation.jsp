<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>예매페이지_찐막</title>
	<link rel="shortcut icon" href="../images/rsv/res_test.png" type="image/x-icon" />
	<link rel="stylesheet" href="../css/rsv.css">
	<link rel="stylesheet" href="../css/rsv2.css">
	<link href="../css/common.css" rel="stylesheet">
	<link href="../css/inc.css" rel="stylesheet">
	<script src="../js/jquery-3.6.4.js"></script>
	
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
	

	<div class="content">
			<div class="inner2">
	<form id="dataForm" method="post" action="/member/login.do">
				<input type="hidden" id="cgid" name="cgid" value="FE8EF4D2-F22D-4802-A39A-D58F23A29C1E" />
				<input type="hidden" id="ssid" name="ssid" value="" />
				<input type="hidden" id="tokn" name="tokn" value="" />
				<input type="hidden" id="hold" name="hold" value="" />

				<input type="hidden" id="BrandCd" name="BrandCd" value="dtryx" />
				<input type="hidden" id="CinemaCd" name="CinemaCd" value="all" />
				<input type="hidden" id="MovieCd" name="MovieCd" value="all" />
				<input type="hidden" id="PlaySDT" name="PlaySDT" value="all" />
				<input type="hidden" id="Sort" name="Sort" value="boxoffice" />
				<input type="hidden" id="ScreenCd" name="ScreenCd" value="" />
				<input type="hidden" id="ShowSeq" name="ShowSeq" value="" />
				
				<input type="hidden" id="TabBrandCd" name="TabBrandCd" value="dtryx" />
				<input type="hidden" id="TabRegionCd" name="TabRegionCd" value="all" />
				<input type="hidden" id="TabMovieType" name="TabMovieType" value="all" />
				
				<input type="hidden" id="MovieKindCd" name="MovieKindCd" value="" />
				<input type="hidden" id="MovieNm" name="MovieNm" value="" />
				<input type="hidden" id="CinemaNm" name="CinemaNm" value="" />
				<input type="hidden" id="PlayTimeType" name="PlayTimeType" value="" />
				<input type="hidden" id="PlayTimeTypeNm" name="PlayTimeTypeNm" value="" />
				<input type="hidden" id="StartTime" name="StartTime" value="" />
				<input type="hidden" id="EndTime" name="EndTime" value="" />
				<input type="hidden" id="ScreenNm" name="ScreenNm" value="" />
				<input type="hidden" id="ScreenType" name="ScreenType" value="" />
				<input type="hidden" id="ScreenTypeNm" name="ScreenTypeNm" value="" />
				<input type="hidden" id="ScreeningInfo" name="ScreeningInfo" value="" />

				<input type="hidden" id="HidMovieUrl" name="HidMovieUrl" value="" />
				<input type="hidden" id="HidRating" name="HidRating" value="" />
				<input type="hidden" id="HidTicketRate" name="HidTicketRate" value="" />
				<input type="hidden" id="HidReleaseDT" name="HidReleaseDT" value="" />
			
				<!-- PC 전용 -->
				<div class="reservation-pc page-type">
					<div class="in-wrap">
						<div class="in-box">
							<div class="in w1200">

								<div class="head">
									<h4 class="r-h4">영화예매</h4>
									<div class="right">
										<!-- <a href="javascript:goLink('/support/guide.do');" class="btn-link">예매가이드</a>
										<a href="#" class="btn-link">ENG</a> -->
										<a href="javascript:goLink('/reserve/movie.do');" class="btn-refresh">예매다시하기</a>
									</div>
								</div>
								<!-- // head -->

								<div class="body">
									<!-- 영화관 -->
									<div class="cinema-list">
										<div class="list-head">
											<h5 class="r-h5">영화관</h5>
											<a href="#" class="btn-search"></a>
											<div class="search">
												<input type="text" id="srchCinema" class="inp-mv" placeholder="영화관명을 입력해주세요.">
												<a href="#" class="btn-srch"></a>
												<a href="#" class="btn-remove"></a>
											</div>
										</div>
<!-- 										<div class="tab"> -->
<!-- 												<div id="brandList" class="scrollbar-inner"> -->
<!-- 													<a href="#" class="active">전체</a> -->
<!-- 												</div> -->
<!-- 											</div> -->
										<div class="list">
											<div class="step1">
												<div class="scrollbar-inner">
													<ul id="regionList"></ul>
												</div>
											</div>
											<div class="step2">
												<div id="cinemaList" class="scrollbar-inner"></div>
											</div>
										</div>
									</div>
									<!-- // 영화관 -->
									
									<!-- 영화리스트 -->
									<div class="mv-list">
										<div class="list-head">
											<h5 class="r-h5">영화</h5>
											<a href="#" class="btn-search"></a>
											<div class="search">
												<input type="text" id="srchMovie" class="inp-mv" placeholder="영화명을 입력해주세요.">
												<a href="#" class="btn-srch"></a>
												<a href="#" class="btn-remove"></a>
											</div>
										</div>
<!-- 										<div class="tab"> -->
<!-- 												<a href="#" class="btnMovieType active" data-type="all">전체</a> -->
<!-- 												<a href="#" class="btnMovieType" data-type="normal">일반영화</a> -->
<!-- <!-- 												<a href="#" class="btnMovieType" data-type="indieArt">ㄹㅇㄹㄴㄹㄴ</a> --> 
<!-- 											</div> -->
										<div class="tab2">
											<a href="#" class="btnMovieTab active" data-tab="boxoffice">예매율 순</a>
											<a href="#" class="btnMovieTab" data-tab="name">가나다 순</a>
										</div>
										<div class="list">
											<div class="scrollbar-inner">
												<ul id="movieList"></ul>
											</div>
										</div>
									</div>
									<!-- // 영화리스트 -->

									<!-- 날짜 -->
									<div class="date-list">
										<div class="list">
											<div class="scrollbar-inner">
												<ul id="playSdtList"></ul>
											</div>
										</div>
									</div>
									<!-- // 날짜 -->

									<!-- 상영시간 -->
									<div class="time">
										<div class="list-head">
											<h5 class="r-h5">상영시간</h5>
											<div class="types">
												<button type="button" class="btn-list"></button>
												<button type="button" class="btn-thum active"></button>
											</div>
										</div>
										<div class="list-body">
											<div class="scrollbar-inner">
												<div id="timeList">
													<div class="none">
														<div class="desc">영화, 영화관, 날짜를<br>선택해주세요</div>
													</div>
												</div>
											</div>
											
											<div class="info-box">
													<div class="info">
														<!-- 선택후 -->
														<div class="img"></div>
														<div class="text">
															<strong><span class="mvNm">&nbsp;</span></strong>
															<dl>
																<dt>극장</dt>
																<dd class="cnNm"></dd>
															</dl>
															<dl>
																<dt>상영관</dt>
																<dd class="scNm"></dd>
															</dl>
															<dl>
																<dt>상영등급</dt>
																<dd class="rtNm"></dd>
															</dl>
															<dl>
																<dt>날짜</dt>
																<dd class="plDt"></dd>
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
									<!-- // 상영시간 -->
									
									</div>
								<!-- // body -->
							</div>
						</div>
					</div>
				</div>
				<!-- // PC 전용 -->
			</form>			
	</div>
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
						<button type="button" class="btn-modal2" onclick="goLink('/member/login.do');">로그인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	var movieList = [];
	var movieNormalList = [];
	var movieIndieArtList = [];
	var senderBrandList = [];
	var cinemaList = [];
	var areaList = [];
	var playSdtList = [];
	var timeList = [];
	var favoriteCinema = [];
	var timer = null;
	
	// 필요한 함수 추가중!
	$(function() {
		$(".btnMovieTab").on("click", function(e) {
			e.preventDefault();
			$(".btnMovieTab").removeClass("active");
			$(this).addClass("active");
			$("#Sort").val($(this).data("tab"));
			
			getMainList();
			makeMovieList();
		});
	});
	
	
	// 기존 함수
// 	$(function() {
		
		
// 		getMainList();
// 		makeBrandList();
// 		makeCinemaList();
// 		makeMovieList();
// 		makePlaydtList();
		
// 		if ($("#MovieCd").val() != "all")
// 			setMovie();
		
// 		if ($("#CinemaCd").val() != "all")
// 			setCinema();
		
// 		if ($("#PlaySDT").val() != "all")
// 			setPlayDT();
		
// 		if ($("#MovieCd").val() != "all" && $("#CinemaCd").val() != "all" && $("#PlaySDT").val() != "all") {
// 			getTimeList();
// 			makeTimeList();
// 		}
		
// 		if ($("#ScreenCd").val() != "" && $("#ShowSeq").val() != "") {
// 			//setTime();
// 			$('.btnTime[data-cd="' + $("#ScreenCd").val() + '"][data-seq="' + $("#ShowSeq").val() + '"]').click();
// 		}
		
// 		$(".btnMovieType").on("click", function(e) {
// 			e.preventDefault();
// 			$(".btnMovieType").removeClass("active");
// 			$(this).addClass("active");
// 			$("#TabMovieType").val($(this).data("type"));
			
// 			makeMovieList();
// 		});
		
// 		$(".btnMovieTab").on("click", function(e) {
// 			e.preventDefault();
// 			$(".btnMovieTab").removeClass("active");
// 			$(this).addClass("active");
// 			$("#Sort").val($(this).data("tab"));
			
// 			getMainList();
// 			makeMovieList();
// 		});
		
// 		$(".btn-search").on("click", function(e) {
// 			e.preventDefault();
// 			$(this).next().fadeIn(300);
// 		});
		
// 		$(".btn-remove").on("click", function(e) {
// 			e.preventDefault();
// 			$(this).closest(".search").fadeOut(300);
// 			$(this).siblings(".inp-mv").val("").keyup();
// 		});
		
// 		$("#srchMovie").on("keyup", function(e) {
// 			var txt = $(this).val().trim();
// 			$("#movieList li").each(function() {
// 				if ($(this).find(".btnMvItem").attr("title").indexOf(txt) != -1) {
// 					$(this).show();
// 				} else {
// 					$(this).hide();
// 				}
// 			});
// 		});
		
// 		$("#srchCinema").on("keyup", function(e) {
// 			var txt = $(this).val().trim();
// 			$('.btnTheater[data-cd="all"]').click();
// 			$("#cinemaList .subTheater li").each(function() {
// 				if ($(this).find(".btnCnItem").text().indexOf(txt) != -1) {
// 					$(this).show();
// 				} else {
// 					$(this).hide();
// 				}
// 			});
// 		});

// 		$(".btn-srch").on("click", function(e) {
// 			e.preventDefault();
// 		});
		
// // 		인원/좌석 선택 버튼 클릭
// 		$("#btnNext").on("click", function(e) {
// 			var req = [];
// 			if ($("#MovieCd").val() == "all") {
// 				req.push("영화");
// 			}
// 			if ($("#CinemaCd").val() == "all") {
// 				req.push("극장");
// 			}
// 			if ($("#PlaySDT").val() == "all") {
// 				req.push("관람일");
// 			}
// 			if ($("#ScreenCd").val() == "") {
// 				req.push("관람시간");
// 			}

// 			if (req.length > 0) {
// 				var msg = req.join(", ") + "(를)을 선택해 주세요.";
// 				mAlert(msg);
// 				return;
// 			}

// 			$.ajax({
// 				type: "GET",
// 				url: "/reserve/movie_rating_popup.do",
// 				async: false,
// 				data: $("#dataForm").serialize(),
// 				cache: false,
// 				dataType: "json",
// 				success: function(res) {
// 					$("#viewGrade .tit").html('<i class="age' + getRating(res.MovieRate) + '"></i> ' + getRatingTxt(res.MovieRate));
// 					$("#viewGrade .txt").html(res.MainMsgNm + res.SubMsgNm1 + res.SubMsgNm2 + res.SubMsgNm3);
// 					$("#viewGrade").modal();
// 				}
// 			});
// 		});
// 		$(".btnNext").on("click", function(e) {
// 			$("#dataForm").submit();
// 		});
// 	}); // 첫줄 function end

// 	$(document).on("click", ".btnMvItem", function(e) {
// 		e.preventDefault();
// 		$("#movieList li").removeClass("check");
// 		if ($("#MovieCd").val() == $(this).data("cd")) {
// 			$("#MovieCd").val("all");
// 		} else {
// 			$("#MovieCd").val($(this).data("cd"));
// 			$(this).parent().addClass("check");
// 		}
// 		setMovie();
		
// 		getMainList();
// 		makeBrandList();
// 		makeCinemaList();
// 		makePlaydtList();
		
// 		if ($("#MovieCd").val() != "all" && $("#CinemaCd").val() != "all" && $("#PlaySDT").val() != "all")
// 			getTimeList();
// 		else
// 			timeList = [];
		
// 		makeTimeList();
// 		setTime();
// 	});
	
// 	$(document).on("click", ".btnBrandTab", function(e) {
// 		e.preventDefault();
// 		if ($(this).hasClass("disabled")) {
// 			return;
// 		}
		
// 		$(".btnBrandTab").removeClass("active");
// 		$(this).addClass("active");
// 		$("#TabBrandCd").val($(this).data("cd"));
// 		$("#BrandCd").val($(this).data("cd"));
// 		getMainList();
// 		makeCinemaList();
// 		makePlaydtList();
		
// 		$(".btnMovieType[data-type='all']").click();
// 	});

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

// 	$(document).on("click", ".btnCnItem", function(e) {
// 		$(".btnCnItem").parent().removeClass("check");
// 		if ($("#CinemaCd").val() == $(this).data("cd")) {
// 			$("#CinemaCd").val("all");
// 		} else {
// 			$("#CinemaCd").val($(this).data("cd"));
// 			$('.btnCnItem[data-cd="' + $(this).data("cd") + '"]').parent().addClass("check");
// 		}
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
// 	});

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
	
// 	$(document).on("click", ".btn-list", function(){
// 		$(this).addClass("active");
// 		$(".btn-thum").removeClass("active");
		
// 		$(".list-type").show();
// 		$(".thum-type").hide();
// 	});
	
// 	$(document).on("click", ".btn-thum", function(){
// 		$(this).addClass("active");
// 		$(".btn-list").removeClass("active");
		
// 		$(".list-type").hide();
// 		$(".thum-type").show();
// 	});

// 	$(document).on("click", ".btnTime", function(e) {
// 		$(".btnTime").parent().removeClass("check");

// 		var cd = $(this).data("cd");
// 		var seq = $(this).data("seq");
// 		if ($("#ScreenCd").val() == cd && $("#ShowSeq").val() == seq) {
// 			$("#ScreenCd").val("");
// 			$("#ShowSeq").val("");
// 		} else {
// 			var time = null;
// 			for (var i = 0; i < timeList.length && !time; i++) {
// 				for (var j = 0; j < timeList[i].MovieDetail.length; j++) {
// 					if (timeList[i].MovieDetail[j].ScreenCd == cd && timeList[i].MovieDetail[j].ShowSeq == seq){
// 						time = timeList[i].MovieDetail[j];
// 						break;
// 					}
// 				}
// 			}
			
// 			if (time != null) {
// 				if (time.NextSkipYn.toUpperCase() == "Y") {
// 					if (time.NextSkipYnMsg != "") {
// 						mAlert(time.NextSkipYnMsg);
// 					}
// 					$(this).parent().addClass("check");
// 					$("#ScreenCd").val(cd);
// 					$("#ShowSeq").val(seq);
// 				} else {
// 					$("#ScreenCd").val("");
// 					$("#ShowSeq").val("");
// 					mAlert(time.NextSkipYnMsg);
// 				}
// 			}
// 		}
// 		setTime();
// 	});
	
// 	// 리아(RIA) 영화 및 상영일자 리스트
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
// 				movieNormalList = res.MovieNormalList;
// 				movieIndieArtList = res.MovieIndieArtList;
// 				senderBrandList = res.SenderBrandList;
// 				cinemaList = res.CinemaList;
// 				areaList = res.AreaList;
// 				playSdtList = res.PlaySdtList;
// 			}
// 		});
// 	}
	
// 	// 영화 리스트 작성
// 	function makeMovieList() {
// 		var rst = '';
// 		var cnt = 0;
// 		var list = [];
// 		if ($("#TabMovieType").val() == "normal") {
// 			list = movieNormalList;
// 		} else if ($("#TabMovieType").val() == "indieArt") {
// 			list = movieIndieArtList;
// 		} else {
// 			list = movieList;
// 		}
		
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
	
// 	// 브랜드 리스트 작성
// 	function makeBrandList() {
// 		var rst = "";
// 		for (var i = 0; i < senderBrandList.length; i++) {
// 			var obj = senderBrandList[i];
// 			rst += '<a href="#" class="btnBrandTab' + (obj.SenderBrandCd == $("#TabBrandCd").val() ? ' active' : '') + (obj.HiddenYn == "N" ? '' : ' disabled') + '" data-cd="' + obj.SenderBrandCd + '">' + obj.SenderBrandNm + '</a>';
// 		}
		
// 		$("#brandList").html(rst);
// 	}
	
// 	// 극장 리스트 작성
// 	function makeCinemaList() {
// 		var tab = "";
// 		var det = "";

// 		//즐겨찾는 극장
// 		var cnt = 0;
// 		det += '<ul class="subTheater" data-cd="favorite"' + ("favorite" != $("#TabRegionCd").val() ? ' style="display:none"' : '') + '>';
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
// 		det += '<ul class="subTheater" data-cd="all"' + ("all" != $("#TabRegionCd").val() ? ' style="display:none"' : '') + '>';
// 		for (var i = 0; i < cinemaList.length; i++) {
// 			var obj = cinemaList[i];
// 			det += '<li' + (obj.CinemaCd == $("#CinemaCd").val() ? ' class="check"' : '') + '>';
// 			det += '<a href="#" class="btn-star' + (favoriteCinema.map(function(e){ return e.CinemaCd == obj.CinemaCd; }).indexOf(true) > -1 ? ' active' : '') + '" data-cd="' + obj.CinemaCd + '" data-nm="' + obj.CinemaNm + '" data-rg="' + obj.RegionCd + '"></a>';
// 			det += '<button type="button" class="btnCnItem' + (obj.HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-cd="' + obj.CinemaCd + '" title="' + obj.CinemaNm + '">' + obj.CinemaNm + '</button>';
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
	
	// 날짜 리스트 작성
// 	function makePlaydtList() {
// 	    var now = new Date();
// 		var tdy = $.datepicker.formatDate('yy-mm-dd', now);

// 		var rst = '';
// 		var sym = '';
// 		for (var i = 0; i < playSdtList.length; i++) {
// 			var obj = playSdtList[i];
			
// 			if (i == 0 || sym != obj.PlaySDT.substr(0, 7)){
// 				rst += '<li><strong class="year">' + $.datepicker.formatDate('yy.m', new Date(obj.PlaySDT)) + '</strong></li>';
// 				sym = obj.PlaySDT.substr(0, 7);
// 			}
			
// 			var fdt = $.datepicker.formatDate('D', new Date(obj.PlaySDT)); 
// 			var clr = "";
// 			if (fdt == "토")
// 				clr = "saturday";
// 			else if (fdt == "일")
// 				clr = "sunday";
// 			rst += '<li class="' + clr + (obj.PlaySDT == $("#PlaySDT").val() ? ' check' : '') + '"><button type="button" class="btnDay' + (obj.HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-dt="' + obj.PlaySDT + '">' + fdt + ' <strong>' + $.datepicker.formatDate('d', new Date(obj.PlaySDT)) + '</strong></button></li>';
// 		}

// 		$("#playSdtList").html(rst);

// 		$("#playSdtList .btnDay").not(":disabled").eq(0).focus();
// 		$("#playSdtList li.check .btnDay").focus();
// 	}
	
// 	// 상영 회차 리스트
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

// 	// 상영 회차 리스트 작성
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
	
// 	// 영화 선택
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
	
// 	// 극장 선택
// 	function setCinema() {
// 		var cd = $("#CinemaCd").val();
		
// 		if (cd == "all") {
// 			$(".cnNm").text("");
// 		} else {
// 			var obj = $('.btnCnItem[data-cd="' + cd + '"]');
// 			$(".cnNm").text(obj.attr('title'));
// 		}
// 	}
	
// 	// 날짜 선택
// 	function setPlayDT() {
// 		var date = $("#PlaySDT").val();
		
// 		if (date == "all") {
// 			$(".plDt").text("");
// 		} else {
// 			$(".plDt").text($.datepicker.formatDate('yy-mm-dd(D)', new Date(date)));
// 		}
// 	}
	
// 	// 시간 선택
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

// 	// 선호영화관 조회
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
	
// 	// 선호영화관 등록
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
	
		<!-- // footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
		<div class="fixed-nav">
			<div class="nav">
				<a href="javascript:goLink('/main.do');" class="m1">
					<i class="ic"></i>
					<strong>홈</strong>
				</a>
				<a href="javascript:goLink('/movie/list.do');" class="m2">
					<i class="ic"></i>
					<strong>영화</strong>
				</a>
				<a href="javascript:goLink('/reserve/movie.do');" class="m3 active">
					<i class="ic2"></i>
					<strong>바로예매</strong>
				</a>
				<a href="javascript:goLink('/cinema/list.do');" class="m4">
					<i class="ic"></i>
					<strong>영화관</strong>
				</a>
				<a href="javascript:goLink('/mypage/tran_now.do');" class="m5">
					<i class="ic"></i>
					<strong>마이</strong>
				</a>
			</div>
		</div>
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