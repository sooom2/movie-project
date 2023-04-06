<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
<!-- 	04.06 : playSdtList 관련 다 주석 처리함(기존 날짜 제이쿼리) -> 삭제 -> 화면 출력 안되는거 사라짐 -->
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
	

	<div class="content">
			<div class="inner2">
	<form id="dataForm" method="post" action="index">
			
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
										</div>
										<div class="tab">
											<div class="scroll-wrapper scrollbar-inner"
												style="position: relative;">
												<div class="scroll-element scroll-x scroll-scrollx_visible">
													<div class="scroll-element_outer">
														<div class="scroll-element_size"></div>
														<div class="scroll-element_track"></div>
														<div class="scroll-bar" style="width: 216px; left: 0px;"></div>
													</div>
												</div>
												<div class="scroll-element scroll-y scroll-scrollx_visible">
													<div class="scroll-element_outer">
														<div class="scroll-element_size"></div>
														<div class="scroll-element_track"></div>
													</div>
												</div>
											</div>
										</div>
										<div class="list">
											<div class="step1">
												<div class="scroll-wrapper scrollbar-inner"
													style="position: relative;">
													<div
														class="scrollbar-inner scroll-content scroll-scrolly_visible"
														style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 533px;">
														<ul id="regionList">
															<li><button type="button" class="btnTheater"
																	title="즐겨찾는 영화관" data-cd="favorite">
																	즐겨찾는 영화관 <span>(0)</span>
																</button></li>
															<li class="active"><button type="button"
																	class="btnTheater" title="전체" data-cd="all">전체
																	(79)</button></li>
															<li><button type="button" class="btnTheater"
																	title="서울" data-cd="KR-11">서울 (15)</button></li>
															<li><button type="button" class="btnTheater"
																	title="경기" data-cd="KR-41">경기 (11)</button></li>
															<li><button type="button" class="btnTheater"
																	title="인천" data-cd="KR-28">인천 (4)</button></li>
															<li><button type="button" class="btnTheater"
																	title="강원" data-cd="KR-42">강원 (12)</button></li>
															<li><button type="button" class="btnTheater"
																	title="대전" data-cd="KR-30">대전 (1)</button></li>
															<li><button type="button" class="btnTheater"
																	title="충남" data-cd="KR-44">충남 (6)</button></li>
															<li><button type="button" class="btnTheater"
																	title="충북" data-cd="KR-43">충북 (2)</button></li>
															<li><button type="button" class="btnTheater"
																	title="대구" data-cd="KR-27">대구 (2)</button></li>
														</ul>
													</div>
												</div>
											</div>
											<div class="step2">
												<div class="scroll-wrapper scrollbar-inner"
													style="position: relative;">
													<div id="cinemaList" class="scrollbar-inner scroll-content"
														style="height: 533px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
														<ul class="subTheater" data-cd="favorite"
															style="display: none"></ul>
														<ul class="subTheater" data-cd="all"
															style="display: block;">
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000005" data-nm="강화작은영화관"
																data-rg="KR-28"></a>
															<button type="button" class="btnCnItem" data-cd="000005"
																	title="강화작은영화관">강화작은영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000011" data-nm="고한시네마"
																data-rg="KR-42"></a>
															<button type="button" class="btnCnItem" data-cd="000011"
																	title="고한시네마">고한시네마</button></li>
															<li style="display: list-item;"><a href="#"
																class="btn-star" data-cd="000066" data-nm="광주극장"
																data-rg="KR-29"></a>
															<button type="button" class="btnCnItem" data-cd="000066"
																	title="광주극장">광주극장</button></li>
															<li style="display: list-item;"><a href="#"
																class="btn-star" data-cd="000054" data-nm="광주독립영화관"
																data-rg="KR-29"></a>
															<button type="button" class="btnCnItem" data-cd="000054"
																	title="광주독립영화관">광주독립영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000025" data-nm="남해 보물섬시네마"
																data-rg="KR-48"></a>
															<button type="button" class="btnCnItem" data-cd="000025"
																	title="남해 보물섬시네마">남해 보물섬시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000113" data-nm="낭만극장"
																data-rg="KR-11"></a>
															<button type="button" class="btnCnItem" data-cd="000113"
																	title="낭만극장">낭만극장</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000065" data-nm="더숲아트시네마"
																data-rg="KR-11"></a>
															<button type="button" class="btnCnItem" data-cd="000065"
																	title="더숲아트시네마">더숲아트시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000082"
																data-nm="더플래츠 바이 모노플렉스" data-rg="KR-41"></a>
															<button type="button" class="btnCnItem" data-cd="000082"
																	title="더플래츠 바이 모노플렉스">더플래츠 바이 모노플렉스</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000072" data-nm="라이카시네마"
																data-rg="KR-11"></a>
															<button type="button" class="btnCnItem" data-cd="000072"
																	title="라이카시네마">라이카시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000116" data-nm="명화극장"
																data-rg="KR-41"></a>
															<button type="button" class="btnCnItem" data-cd="000116"
																	title="명화극장">명화극장</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000092" data-nm="밀양시네마"
																data-rg="KR-48"></a>
															<button type="button" class="btnCnItem" data-cd="000092"
																	title="밀양시네마">밀양시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000062" data-nm="밀크북 바이 모노플렉스"
																data-rg="KR-41"></a>
															<button type="button" class="btnCnItem" data-cd="000062"
																	title="밀크북 바이 모노플렉스">밀크북 바이 모노플렉스</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000085" data-nm="산청군 작은영화관"
																data-rg="KR-48"></a>
															<button type="button" class="btnCnItem" data-cd="000085"
																	title="산청군 작은영화관">산청군 작은영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000026" data-nm="삼척영화관"
																data-rg="KR-42"></a>
															<button type="button" class="btnCnItem" data-cd="000026"
																	title="삼척영화관">삼척영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000118" data-nm="성주 별고을시네마"
																data-rg="KR-47"></a>
															<button type="button" class="btnCnItem" data-cd="000118"
																	title="성주 별고을시네마">성주 별고을시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000053" data-nm="씨네아트 리좀"
																data-rg="KR-48"></a>
															<button type="button" class="btnCnItem" data-cd="000053"
																	title="씨네아트 리좀">씨네아트 리좀</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000098" data-nm="씨네인디U"
																data-rg="KR-30"></a>
															<button type="button" class="btnCnItem" data-cd="000098"
																	title="씨네인디U">씨네인디U</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000099" data-nm="안영채 X 모노플렉스"
																data-rg="KR-41"></a>
															<button type="button" class="btnCnItem" data-cd="000099"
																	title="안영채 X 모노플렉스">안영채 X 모노플렉스</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000100" data-nm="애관극장"
																data-rg="KR-28"></a>
															<button type="button" class="btnCnItem" data-cd="000100"
																	title="애관극장">애관극장</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000013" data-nm="양양 작은영화관"
																data-rg="KR-42"></a>
															<button type="button" class="btnCnItem" data-cd="000013"
																	title="양양 작은영화관">양양 작은영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000069" data-nm="에무시네마"
																data-rg="KR-11"></a>
															<button type="button" class="btnCnItem" data-cd="000069"
																	title="에무시네마">에무시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000059" data-nm="오오극장"
																data-rg="KR-27"></a>
															<button type="button" class="btnCnItem" data-cd="000059"
																	title="오오극장">오오극장</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000038" data-nm="옥천 향수시네마"
																data-rg="KR-43"></a>
															<button type="button" class="btnCnItem" data-cd="000038"
																	title="옥천 향수시네마">옥천 향수시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000037" data-nm="울진 작은영화관"
																data-rg="KR-47"></a>
															<button type="button" class="btnCnItem" data-cd="000037"
																	title="울진 작은영화관">울진 작은영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000075" data-nm="의성 작은영화관"
																data-rg="KR-47"></a>
															<button type="button" class="btnCnItem" data-cd="000075"
																	title="의성 작은영화관">의성 작은영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000083" data-nm="천안인생극장"
																data-rg="KR-44"></a>
															<button type="button" class="btnCnItem" data-cd="000083"
																	title="천안인생극장">천안인생극장</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000027" data-nm="철원 작은영화관"
																data-rg="KR-42"></a>
															<button type="button" class="btnCnItem" data-cd="000027"
																	title="철원 작은영화관">철원 작은영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000114" data-nm="청춘극장"
																data-rg="KR-11"></a>
															<button type="button" class="btnCnItem" data-cd="000114"
																	title="청춘극장">청춘극장</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000112"
																data-nm="케이트리호텔 X 모노플렉스" data-rg="KR-41"></a>
															<button type="button" class="btnCnItem" data-cd="000112"
																	title="케이트리호텔 X 모노플렉스">케이트리호텔 X 모노플렉스</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000047" data-nm="포천클라우드시네마"
																data-rg="KR-41"></a>
															<button type="button" class="btnCnItem" data-cd="000047"
																	title="포천클라우드시네마">포천클라우드시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000070" data-nm="필름포럼"
																data-rg="KR-11"></a>
															<button type="button" class="btnCnItem" data-cd="000070"
																	title="필름포럼">필름포럼</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000111" data-nm="한국민속촌 자동차극장"
																data-rg="KR-41"></a>
															<button type="button" class="btnCnItem" data-cd="000111"
																	title="한국민속촌 자동차극장">한국민속촌 자동차극장</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000045" data-nm="한림작은영화관"
																data-rg="KR-49"></a>
															<button type="button" class="btnCnItem" data-cd="000045"
																	title="한림작은영화관">한림작은영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000080" data-nm="해남시네마"
																data-rg="KR-46"></a>
															<button type="button" class="btnCnItem" data-cd="000080"
																	title="해남시네마">해남시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000115" data-nm="허리우드클래식"
																data-rg="KR-11"></a>
															<button type="button" class="btnCnItem" data-cd="000115"
																	title="허리우드클래식">허리우드클래식</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000093" data-nm="1939시네마"
																data-rg="KR-41"></a>
															<button type="button" class="btnCnItem disabled"
																	disabled="" data-cd="000093" title="1939시네마">1939시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000024" data-nm="고령 대가야시네마"
																data-rg="KR-47"></a>
															<button type="button" class="btnCnItem disabled"
																	disabled="" data-cd="000024" title="고령 대가야시네마">고령
																	대가야시네마</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000091" data-nm="고성 달홀영화관"
																data-rg="KR-42"></a>
															<button type="button" class="btnCnItem disabled"
																	disabled="" data-cd="000091" title="고성 달홀영화관">고성
																	달홀영화관</button></li>
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000108" data-nm="광안리 SEA네마"
																data-rg="KR-26"></a>
															<button type="button" class="btnCnItem disabled"
																	disabled="" data-cd="000108" title="광안리 SEA네마">광안리
																	SEA네마</button></li>
															<li style="display: list-item;"><a href="#"
																class="btn-star" data-cd="000084" data-nm="광주자동차극장"
																data-rg="KR-29"></a>
															<button type="button" class="btnCnItem disabled"
																	disabled="" data-cd="000084" title="광주자동차극장">광주자동차극장</button></li>
														</ul>
														<ul class="subTheater" data-cd="KR-30"
															style="display: none">
															<li style="display: none;"><a href="#"
																class="btn-star" data-cd="000098" data-nm="씨네인디U"
																data-rg="undefined"></a>
															<button type="button" class="btnCnItem" data-cd="000098"
																	title="씨네인디U">씨네인디U</button></li>
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
												<ul id="movieList">
													<li>
														<button type="button" class="btnMvItem" data-cd="021989"
															data-url="https://img.dtryx.com/poster/2023/03/2D2C7516-D68F-4875-AF1E-45C50BDF8D1F.small.jpg"
															data-rat="15" data-trt="15.82" data-rdt="2023-04-12"
															title="사랑의 고고학">
															<i class="age15"></i> 사랑의 고고학
														</button>
													</li>
													<li>
														<button type="button" class="btnMvItem" data-cd="021864"
															data-url="https://img.dtryx.com/poster/2023/02/7363A612-6112-4B4A-8150-345A88C2E9FA.small.jpg"
															data-rat="12" data-trt="14.82" data-rdt="2023-03-08"
															title="스즈메의 문단속">
															<i class="age12"></i> 스즈메의 문단속
														</button>
													</li>
													<li>
														<button type="button" class="btnMvItem" data-cd="019476"
															data-url="https://img.dtryx.com/poster/2022/03/07F44F77-F93A-44D0-8A9E-8E88E42E722D.small.jpg"
															data-rat="15" data-trt="7.72" data-rdt="2017-03-30"
															title="패왕별희 디 오리지널">
															<i class="age15"></i> 패왕별희 디 오리지널
														</button>
													</li>
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
											<div class="types">
												<button type="button" class="btn-list"></button>
												<button type="button" class="btn-thum active"></button>
											</div>
										</div>
										<div class="list-body">
											<div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div class="scrollbar-inner scroll-content" style="height: 305px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
												<div id="timeList"><div class="list-type" style="display: none"><ul>	<ul class="mvTimeLine">	<li>		<button type="button" class="btnTime" data-cd="02" data-seq="3">			<div class="loc">2관/2D(자막)</div>			<div class="info">				<p class="time">14:30<span>~16:32</span></p>				<p class="num">45/<span>47석</span></p>			</div>		</button>	</li>	<li>		<button type="button" class="btnTime" data-cd="02" data-seq="5">			<div class="loc">2관/2D(자막)</div>			<div class="info">				<p class="time">19:25<span>~21:27</span></p>				<p class="num">47/<span>47석</span></p>			</div>		</button>	</li></ul></ul></div><div class="thum-type"><h5 class="thum-tit">2관/2D(자막)</h5><ul>	<li>		<button type="button" class="btnTime" data-cd="02" data-seq="3">			<strong>14:30<span>~16:32</span></strong>			<p>45/<span>47석</span></p>		</button>	</li>	<li>		<button type="button" class="btnTime" data-cd="02" data-seq="5">			<strong>19:25<span>~21:27</span></strong>			<p>47/<span>47석</span></p>		</button>	</li></ul></div></div>
											</div><div class="scroll-element scroll-x"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 100px;"></div></div></div><div class="scroll-element scroll-y"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 100px;"></div></div></div></div>
											
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
																<dd class="plDt">2023-04-05(수)</dd>
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
	
	
	<script type="text/javascript">
	var movieList = [];
	var movieNormalList = [];
	var movieIndieArtList = [];
	var senderBrandList = [];
	var cinemaList = [];
	var areaList = [];
	var timeList = [];
	var favoriteCinema = [];
	var timer = null;
	
	// 필요한 함수 추가
	$(function() {
		// 예매율순 | 가나다순 클릭
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
	$(function() {
		
		
		getMainList();
		makeBrandList();
		makeCinemaList();
		makeMovieList();
		makePlaydtList();
		
		if ($("#MovieCd").val() != "all")
			setMovie();
		
		if ($("#CinemaCd").val() != "all")
			setCinema();
		
		if ($("#PlaySDT").val() != "all")
			setPlayDT();
		
		if ($("#MovieCd").val() != "all" && $("#CinemaCd").val() != "all" && $("#PlaySDT").val() != "all") {
			getTimeList();
			makeTimeList();
		}
		
		if ($("#ScreenCd").val() != "" && $("#ShowSeq").val() != "") {
			//setTime();
			$('.btnTime[data-cd="' + $("#ScreenCd").val() + '"][data-seq="' + $("#ShowSeq").val() + '"]').click();
		}
		
		$(".btnMovieType").on("click", function(e) {
			e.preventDefault();
			$(".btnMovieType").removeClass("active");
			$(this).addClass("active");
			$("#TabMovieType").val($(this).data("type"));
			
			makeMovieList();
		});
		
		$(".btn-search").on("click", function(e) {
			e.preventDefault();
			$(this).next().fadeIn(300);
		});
		
		$(".btn-remove").on("click", function(e) {
			e.preventDefault();
			$(this).closest(".search").fadeOut(300);
			$(this).siblings(".inp-mv").val("").keyup();
		});
		
		$("#srchMovie").on("keyup", function(e) {
			var txt = $(this).val().trim();
			$("#movieList li").each(function() {
				if ($(this).find(".btnMvItem").attr("title").indexOf(txt) != -1) {
					$(this).show();
				} else {
					$(this).hide();
				}
			});
		});
		
		$("#srchCinema").on("keyup", function(e) {
			var txt = $(this).val().trim();
			$('.btnTheater[data-cd="all"]').click();
			$("#cinemaList .subTheater li").each(function() {
				if ($(this).find(".btnCnItem").text().indexOf(txt) != -1) {
					$(this).show();
				} else {
					$(this).hide();
				}
			});
		});

		$(".btn-srch").on("click", function(e) {
			e.preventDefault();
		});
		
// 		인원/좌석 선택 버튼 클릭
		$("#btnNext").on("click", function(e) {
			console.log("인원/좌석선택 버튼 클릭");
			location.href='seat';
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
		});
		
// 		$(".btnNext").on("click", function(e) {
// 			$("#dataForm").submit();
// 		});
	}); // 첫줄 function end

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
		
		getMainList();
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

	$(document).on("click", ".btnTheater", function(e) {
		var cd = $(this).data("cd");
		
		if (cd == "favorite") {
			$("#login").modal();
			return;
		}
		
		
		$(".btnTheater").parent().removeClass("active");
		$(this).parent().addClass("active");
		
		$("#TabRegionCd").val($(this).data("cd"));
		
		$(".subTheater").hide();
		$('.subTheater[data-cd="' + cd + '"]').show();
	});

	$(document).on("click", ".btnCnItem", function(e) {
		$(".btnCnItem").parent().removeClass("check");
		if ($("#CinemaCd").val() == $(this).data("cd")) {
			$("#CinemaCd").val("all");
		} else {
			$("#CinemaCd").val($(this).data("cd"));
			$('.btnCnItem[data-cd="' + $(this).data("cd") + '"]').parent().addClass("check");
		}
		setCinema();
		
		getMainList();
		makeMovieList();
		makePlaydtList();
		
		if ($("#MovieCd").val() != "all" && $("#CinemaCd").val() != "all" && $("#PlaySDT").val() != "all")
			getTimeList();
		else
			timeList = [];
		
		makeTimeList();
		setTime();
	});

	$(document).on("click", ".btnDay", function(e) {
		$(".btnDay").parent().removeClass("check");
		if ($("#PlaySDT").val() == $(this).data("dt")) {
			$("#PlaySDT").val("all");
		} else {
			$("#PlaySDT").val($(this).data("dt"));
			$(this).parent().addClass("check");
		}
		setPlayDT();
		
		getMainList();
		makeBrandList();
		makeCinemaList();
		makeMovieList();
		
		if ($("#MovieCd").val() != "all" && $("#CinemaCd").val() != "all" && $("#PlaySDT").val() != "all")
			getTimeList();
		else
			timeList = [];
		
		makeTimeList();
		setTime();
	});
	
	$(document).on("click", ".btn-list", function(){
		$(this).addClass("active");
		$(".btn-thum").removeClass("active");
		
		$(".list-type").show();
		$(".thum-type").hide();
	});
	
	$(document).on("click", ".btn-thum", function(){
		$(this).addClass("active");
		$(".btn-list").removeClass("active");
		
		$(".list-type").hide();
		$(".thum-type").show();
	});

	$(document).on("click", ".btnTime", function(e) {
		$(".btnTime").parent().removeClass("check");

		var cd = $(this).data("cd");
		var seq = $(this).data("seq");
		if ($("#ScreenCd").val() == cd && $("#ShowSeq").val() == seq) {
			$("#ScreenCd").val("");
			$("#ShowSeq").val("");
		} else {
			var time = null;
			for (var i = 0; i < timeList.length && !time; i++) {
				for (var j = 0; j < timeList[i].MovieDetail.length; j++) {
					if (timeList[i].MovieDetail[j].ScreenCd == cd && timeList[i].MovieDetail[j].ShowSeq == seq){
						time = timeList[i].MovieDetail[j];
						break;
					}
				}
			}
			
			if (time != null) {
				if (time.NextSkipYn.toUpperCase() == "Y") {
					if (time.NextSkipYnMsg != "") {
						mAlert(time.NextSkipYnMsg);
					}
					$(this).parent().addClass("check");
					$("#ScreenCd").val(cd);
					$("#ShowSeq").val(seq);
				} else {
					$("#ScreenCd").val("");
					$("#ShowSeq").val("");
					mAlert(time.NextSkipYnMsg);
				}
			}
		}
		setTime();
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
// 				movieNormalList = res.MovieNormalList;
// 				movieIndieArtList = res.MovieIndieArtList;
// 				senderBrandList = res.SenderBrandList;
// 				cinemaList = res.CinemaList;
// 				areaList = res.AreaList;
// 				playSdtList = res.PlaySdtList;
// 			}
// 		});
// 	}
	
	// 영화 리스트 작성
	function makeMovieList() {
		var rst = '';
		var cnt = 0;
		var list = [];
		if ($("#TabMovieType").val() == "normal") {
			list = movieNormalList;
		} else if ($("#TabMovieType").val() == "indieArt") {
			list = movieIndieArtList;
		} else {
			list = movieList;
		}
		
		for (var i = 0; i < list.length; i++) {
			var obj = list[i];
			if (obj.MovieCd != "") {
				rst += '<li' + (obj.MovieCd == $("#MovieCd").val() ? ' class="check"' : '') + '>';
				rst += '	<button type="button" class="btnMvItem' + (obj.HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-cd="' + obj.MovieCd + '" data-url="' + obj.Url + '" data-rat="' + obj.Rating + '" data-trt="' + (obj.TicketRate !== undefined ? parseFloat(obj.TicketRate).toFixed(2) : '0.00') + '" data-rdt="' + obj.ReleaseDT + '" title="' + obj.MovieNm + '">';
				rst += '		<i class="age' + getRating(obj.Rating) + '"></i>';
				rst += '		' + obj.MovieNm + '';
				rst += '	</button>';
				rst += '</li>';
				cnt++;
			}
		}
		
		$("#movieList").html(rst);
		
		if ($("#srchMovie").val() != "")
			$("#srchMovie").keyup();
		
		$("#movieList li:first-child .btnMvItem").focus();
		$("#movieList li.check .btnMvItem").focus();
	}
	
	// 브랜드 리스트 작성
	function makeBrandList() {
		var rst = "";
		for (var i = 0; i < senderBrandList.length; i++) {
			var obj = senderBrandList[i];
			rst += '<a href="#" class="btnBrandTab' + (obj.SenderBrandCd == $("#TabBrandCd").val() ? ' active' : '') + (obj.HiddenYn == "N" ? '' : ' disabled') + '" data-cd="' + obj.SenderBrandCd + '">' + obj.SenderBrandNm + '</a>';
		}
		
		$("#brandList").html(rst);
	}
	
	// 극장 리스트 작성
	function makeCinemaList() {
		var tab = "";
		var det = "";

		//즐겨찾는 극장
		var cnt = 0;
		det += '<ul class="subTheater" data-cd="favorite"' + ("favorite" != $("#TabRegionCd").val() ? ' style="display:none"' : '') + '>';
		for (var i = 0; i < favoriteCinema.length; i++) {
			var obj = favoriteCinema[i];
			var c = cinemaList.map(function(e){ return e.CinemaCd == obj.CinemaCd; }).indexOf(true);
			if (c > -1) {
				det += '<li' + (obj.CinemaCd == $("#CinemaCd").val() ? ' class="check"' : '') + '>';
				det += '<a href="#" class="btn-star active" data-cd="' + obj.CinemaCd + '" data-nm="' + obj.CinemaNm + '" data-rg="' + obj.RegionCd + '"></a>';
				det += '<button type="button" class="btnCnItem' + (cinemaList[c].HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-cd="' + obj.CinemaCd + '" title="' + obj.CinemaNm + '">' + obj.CinemaNm + '</button>';
				det += '</li>';
				cnt++;
			}
		}
		det += '</ul>';
		tab += '<li' + ("favorite" == $("#TabRegionCd").val() ? ' class="active"' : '') + '><button type="button" class="btnTheater" title="즐겨찾는 영화관" data-cd="favorite">즐겨찾는 영화관 <span>(' + cnt + ')</span></button></li>';
		
		//전체
		cnt = 0;
		det += '<ul class="subTheater" data-cd="all"' + ("all" != $("#TabRegionCd").val() ? ' style="display:none"' : '') + '>';
		for (var i = 0; i < cinemaList.length; i++) {
			var obj = cinemaList[i];
			det += '<li' + (obj.CinemaCd == $("#CinemaCd").val() ? ' class="check"' : '') + '>';
			det += '<a href="#" class="btn-star' + (favoriteCinema.map(function(e){ return e.CinemaCd == obj.CinemaCd; }).indexOf(true) > -1 ? ' active' : '') + '" data-cd="' + obj.CinemaCd + '" data-nm="' + obj.CinemaNm + '" data-rg="' + obj.RegionCd + '"></a>';
			det += '<button type="button" class="btnCnItem' + (obj.HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-cd="' + obj.CinemaCd + '" title="' + obj.CinemaNm + '">' + obj.CinemaNm + '</button>';
			det += '</li>';
			cnt++;
		}
		det += '</ul>';
		tab += '<li' + ("all" == $("#TabRegionCd").val() ? ' class="active"' : '') + '><button type="button" class="btnTheater" title="전체" data-cd="all">전체 (' + cnt + ')</button></li>';
		
		//지역별
		for (var i = 0; i < areaList.length; i++) {
			var obj = areaList[i];
			var cnt = 0;
			det += '<ul class="subTheater" data-cd="' + obj.RegionCd + '"' + (obj.RegionCd != $("#TabRegionCd").val() ? ' style="display:none"' : '') + '>';
			for (var j = 0; j < obj.AreaDetail.length; j++) {
				det += '<li' + (obj.AreaDetail[j].CinemaCd == $("#CinemaCd").val() ? ' class="check"' : '') + '>';
				det += '<a href="#" class="btn-star' + (favoriteCinema.map(function(e){ return e.CinemaCd == obj.AreaDetail[j].CinemaCd; }).indexOf(true) > -1 ? ' active' : '') + '" data-cd="' + obj.AreaDetail[j].CinemaCd + '" data-nm="' + obj.AreaDetail[j].CinemaNm + '" data-rg="' + obj.AreaDetail[j].RegionCd + '"></a>';
				det += '<button type="button" class="btnCnItem' + (obj.AreaDetail[j].HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-cd="' + obj.AreaDetail[j].CinemaCd + '" title="' + obj.AreaDetail[j].CinemaNm + '">' + obj.AreaDetail[j].CinemaNm + '</button>';
				det += '</li>';
				cnt++;
			}
			det += '</ul>';
			tab += '<li' + (obj.RegionCd == $("#TabRegionCd").val() ? ' class="active"' : '') + '><button type="button" class="btnTheater" title="' + obj.RegionNm + '" data-cd="' + obj.RegionCd + '"' + (cnt == 0 ? ' disabled' : '') + '>' + obj.RegionNm + ' (' + cnt + ')</button></li>';
		}

		$("#regionList").html(tab);
		$("#cinemaList").html(det);

		if ($("#srchCinema").val() != "")
			$("#srchCinema").keyup();
		
		if ($("#TabRegionCd").val() == "all"){
			if ($("#CinemaCd").val() == "all" && $('.subTheater[data-cd="favorite"] li').length > 0) {
				$('.btnTheater[data-cd="favorite"]').click();
			}else{
				$('.btnTheater[data-cd="all"]').click();
			}
		} else {
			$('.btnTheater[data-cd="' + $("#TabRegionCd").val() + '"]').click();
		}
		
		$("#regionList li.active .btnTheater").focus();
		$("#cinemaList .subTheater:visible li:first-child .btnCnItem").focus();
		$("#cinemaList .subTheater:visible li.check .btnCnItem").focus();
	}
	
	
	// 상영 회차 리스트
	function getTimeList() {
		$.ajax({
			type: "GET",
			url: "/reserve/showseq_list.do",
			async: false,
			data: $("#dataForm").serialize(),
			cache: false,
			dataType: 'json',
			success: function(res) {
				if (res.Showseqlist !== undefined) {
					timeList = res.Showseqlist;
				} else {
					timeList = [];	
				}
			}
		});
	}

	// 상영 회차 리스트 작성
	function makeTimeList() {
		var rst = "";
		var cnt = 0;
		
		var list = "";
		var thum = "";
		for (var i = 0; i < timeList.length; i++) {
			var obj = timeList[i];
			if (obj.MovieDetail.length > 0){
				list += '<ul>';
				list += '	<ul class="mvTimeLine">';
				thum += '<h5 class="thum-tit">' + obj.ScreenNm + '/' + obj.ScreeningInfo + '</h5>';
				thum += '<ul>';
				for (var j = 0; j < obj.MovieDetail.length; j++) {
					list += '	<li' + (obj.MovieDetail[j].ScreenCd == $("#ScreenCd").val() && obj.MovieDetail[j].ShowSeq == $("#ShowSeq").val() ? ' class="check"' : '') + '>';
					list += '		<button type="button" class="btnTime" data-cd="' + obj.MovieDetail[j].ScreenCd + '" data-seq="' + obj.MovieDetail[j].ShowSeq + '">';
					list += '			<div class="loc">' + obj.ScreenNm + '/' + obj.ScreeningInfo + '</div>';
					list += '			<div class="info">';
					list += '				<p class="time">' + obj.MovieDetail[j].StartTime + '<span>~' + obj.MovieDetail[j].EndTime + '</span></p>';
					list += '				<p class="num">' + fnParseInt(obj.MovieDetail[j].RemainSeatCnt) + '/<span>' + fnParseInt(obj.MovieDetail[j].TotalSeatCnt) + '석</span></p>';
					list += '			</div>';
					list += '		</button>';
					list += '	</li>';
					
					thum += '	<li' + (obj.MovieDetail[j].ScreenCd == $("#ScreenCd").val() && obj.MovieDetail[j].ShowSeq == $("#ShowSeq").val() ? ' class="check"' : '') + '>';
					thum += '		<button type="button" class="btnTime" data-cd="' + obj.MovieDetail[j].ScreenCd + '" data-seq="' + obj.MovieDetail[j].ShowSeq + '">';
					thum += '			<strong>' + obj.MovieDetail[j].StartTime + '<span>~' + obj.MovieDetail[j].EndTime + '</span></strong>';
					thum += '			<p>' + fnParseInt(obj.MovieDetail[j].RemainSeatCnt) + '/<span>' + fnParseInt(obj.MovieDetail[j].TotalSeatCnt) + '석</span></p>';
					thum += '		</button>';
					thum += '	</li>';
					cnt++;
				}
				list += '</ul>';
				thum += '</ul>';
			}
		}
		
		if (cnt > 0) {
			rst += '<div class="list-type"' + ($(".btn-thum").hasClass("active") ? ' style="display: none"' : '') + '>' + list + '</div>';
			rst += '<div class="thum-type"' + ($(".btn-list").hasClass("active") ? ' style="display: none"' : '') + '>' + thum + '</div>';
		} else {
			rst = '<div class="none"><div class="desc">영화, 영화관 , 날짜를<br>선택해주세요</div></div>';
		}
		
		$("#timeList").html(rst);
		
		$("#timeList .btnTime").eq(0).focus();
		$("#timeList li.check .btnTime").focus();
	}
	
	// 영화 선택
	function setMovie() {
		var cd = $("#MovieCd").val();
		
		if (cd == "all") {
			$(".info .img img").remove();
			$(".info .mvNm").html("&nbsp;");
			$(".info .rtNm").text("");
			
			$("#HidRating").val("");
			$("#HidMovieUrl").val("");
			$("#HidTicketRate").val("");
			$("#HidReleaseDT").val("");
		} else {
			var obj = $('.btnMvItem[data-cd="' + cd + '"]');

			$(".info .img img").remove();
			$(".info .img").append('<img src="' + obj.data("url") + '">');
			$(".info .mvNm").text(obj.attr("title"));
			$(".info .rtNm").text(getRatingTxt(obj.data("rat")));

			$("#HidRating").val(obj.data("rat"));
			$("#HidMovieUrl").val(obj.data('url'));
			$("#HidTicketRate").val(obj.data('trt'));
			$("#HidReleaseDT").val(obj.data('rdt'));
		}
	}
	
	// 극장 선택
	function setCinema() {
		var cd = $("#CinemaCd").val();
		
		if (cd == "all") {
			$(".cnNm").text("");
		} else {
			var obj = $('.btnCnItem[data-cd="' + cd + '"]');
			$(".cnNm").text(obj.attr('title'));
		}
	}
	
	// 날짜 선택
	function setPlayDT() {
		var date = $("#PlaySDT").val();
		
		if (date == "all") {
			$(".plDt").text("");
		} else {
			$(".plDt").text($.datepicker.formatDate('yy-mm-dd(D)', new Date(date)));
		}
	}
	
	// 시간 선택
	function setTime() {
		var cd = $("#ScreenCd").val();
		var seq = $("#ShowSeq").val();
		
		var time = null;
		if (cd != "" && seq != "") {
			for (var i = 0; i < timeList.length && !time; i++) {
				for (var j = 0; j < timeList[i].MovieDetail.length; j++) {
					if (timeList[i].MovieDetail[j].ScreenCd == cd && timeList[i].MovieDetail[j].ShowSeq == seq){
						time = timeList[i].MovieDetail[j];
						break;
					}
				}
			}
		}
		
		if (time != null) {
			$("#BrandCd").val(time.BrandCd);
			$("#MovieKindCd").val(time.MovieKindCd);
			$("#MovieNm").val(time.MovieNm);
			$("#CinemaNm").val(time.CinemaNm);
			$("#PlayTimeType").val(time.PlayTimeType);
			$("#PlayTimeTypeNm").val(time.PlayTimeTypeNm);
			$("#StartTime").val(time.StartTime);
			$("#EndTime").val(time.EndTime);
			$("#ScreenNm").val(time.ScreenNm);
			$("#ScreenType").val(time.ScreenType);
			$("#ScreenTypeNm").val(time.ScreenTypeNm);
			$("#ScreeningInfo").val(time.ScreeningInfo);
			
			$(".scNm").text(time.ScreenNm + " " + time.ScreeningInfo + "");
			$(".tiNm").text(time.StartTime + "~" + time.EndTime);
		} else {
			$("#ScreenCd").val("");
			$("#ShowSeq").val("");
			$("#BrandCd").val($("#TabBrandCd").val());
			$("#MovieKindCd").val("");
			$("#MovieNm").val("");
			$("#CinemaNm").val("");
			$("#PlayTimeType").val("");
			$("#PlayTimeTypeNm").val("");
			$("#StartTime").val("");
			$("#EndTime").val("");
			$("#ScreenNm").val("");
			$("#ScreenType").val("");
			$("#ScreenTypeNm").val("");
			$("#ScreeningInfo").val("");
			
			$(".scNm").text("");
			$(".tiNm").text("");
		}
	}

	// 선호영화관 조회
	function getFavoriteCinema() {
		$.ajax({
			type: "GET",
			url: "/reserve/favorite_cinema.do",
			async: false,
			data: $("#dataForm").serialize(),
			cache: false,
			dataType: 'json',
			success: function(res) {
				for (var i = 1; i <= 3; i++) {
					if (fnParseStr(eval("res.CinemaCd" + i)) != ""){
						var favorite = [];
						favorite.CinemaCd = fnParseStr(eval("res.CinemaCd" + i));
						favorite.CinemaNm = fnParseStr(eval("res.CinemaNm" + i));
						favorite.RegionCd = fnParseStr(eval("res.RegionCd" + i));
						favoriteCinema.push(favorite);
					}
				}
			}
		});
	}
	
	// 선호영화관 등록
	function setFavoriteCinema() {
		var cinemaCd1 = favoriteCinema[0] !== undefined ? fnParseStr(favoriteCinema[0].CinemaCd) : "";
		var cinemaCd2 = favoriteCinema[1] !== undefined ? fnParseStr(favoriteCinema[1].CinemaCd) : "";
		var cinemaCd3 = favoriteCinema[2] !== undefined ? fnParseStr(favoriteCinema[2].CinemaCd) : "";
		
		$.ajax({
			type: "POST",
			url: "/reserve/favorite_cinema.do",
			async: false,
			data: { CinemaCd1: cinemaCd1, CinemaCd2: cinemaCd2, CinemaCd3: cinemaCd3, ssid: sessionStorage.getItem("ssid"), tokn: sessionStorage.getItem("tokn"), hold: sessionStorage.getItem("hold") },
			cache: false,
			dataType: 'json',
			success: function(res) {
			},
			error: function(request, status, error){
				console.log('code: '+request.status+'\n'+'message: '+request.responseText+'\n'+'error: '+error);
			}
		});
	}
	
	$(document).on("click", ".btn-star", function(e) {
		e.preventDefault();
		
		$("#login").modal();
		
	});
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