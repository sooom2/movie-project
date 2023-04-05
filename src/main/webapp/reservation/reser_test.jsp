<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../css/rsv.css">
	<link rel="stylesheet" href="../css/rsv2.css">
	<link rel="stylesheet" href="../css/rsv3.css">
<!-- 	<script src="../js/jquery-3.6.4.js"></script> -->
<!-- 	<script type="text/javascript" src="/resources/js/jquery-1.11.3.min.js"></script> -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
	<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../js/jquery.number.min.js"></script>
	<script type="text/javascript" src="../js/js.cookie.min.js"></script>
	<script type="text/javascript" src="../js/jquery.scrollbar.js"></script>
	<script type="text/javascript" src="../js/swiper.js"></script>
<!-- 	<script type="text/javascript" src="../js/front.js?v=1680630044964"></script> -->
	<script type="text/javascript" src="../js/app.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header" class="pc">
		<div class="inner">
			<h1><a href="javascript:goLink('/main.do');">dtryx</a></h1>
			<div class="menus">
				<div id="gnb">
					<nav>
						<ul>
							<li class="active"><a href="javascript:goLink('/reserve/movie.do');"><span>예매</span></a></li>
							<li><a href="javascript:goLink('/movie/list.do');"><span>영화</span></a></li>
							<li><a href="javascript:goLink('/cinema/list.do');"><span>영화관</span></a></li>
							<li><a href="javascript:goLink('/support/guide.do');"><span>고객지원</span></a></li>
							<li><a href="javascript:goLink('/mypage/tran_now.do');"><span>마이페이지</span></a></li>
						</ul>
					</nav>
				</div>
				
				<div class="etc">
					<a href="javascript:goLink('/member/login.do');">로그인</a>
						<a href="javascript:goLink('/member/join.do');">회원가입</a>
					</div>
				<a href="javascript:goLink('/reserve/movie.do');" class="btn-reser">빠른예매</a>
			</div>
			
			</div>
	</div>		
	
	<div id="m-header" class="mobile">
		<div class="inner">
			<h2>영화예매</h2>
			<a href="javascript:goLink('/main.do');" class="btn-prev"></a>
			<div class="m-menu">
				<a href="javascript:goLink('/reserve/movie.do');" class="btn-refresh">초기화</a>
			</div>
		</div>
	</div>

	<div class="content">
			<div class="inner2">
	<form id="dataForm" method="post" action="/member/login.do">
				<input type="hidden" id="cgid" name="cgid" value="FE8EF4D2-F22D-4802-A39A-D58F23A29C1E">
				<input type="hidden" id="ssid" name="ssid" value="">
				<input type="hidden" id="tokn" name="tokn" value="">
				<input type="hidden" id="hold" name="hold" value="">

				<input type="hidden" id="BrandCd" name="BrandCd" value="dtryx">
				<input type="hidden" id="CinemaCd" name="CinemaCd" value="000093">
				<input type="hidden" id="MovieCd" name="MovieCd" value="021864">
				<input type="hidden" id="PlaySDT" name="PlaySDT" value="2023-04-05">
				<input type="hidden" id="Sort" name="Sort" value="boxoffice">
				<input type="hidden" id="ScreenCd" name="ScreenCd" value="">
				<input type="hidden" id="ShowSeq" name="ShowSeq" value="">
				
				<input type="hidden" id="TabBrandCd" name="TabBrandCd" value="dtryx">
				<input type="hidden" id="TabRegionCd" name="TabRegionCd" value="all">
				<input type="hidden" id="TabMovieType" name="TabMovieType" value="all">
				
				<input type="hidden" id="MovieKindCd" name="MovieKindCd" value="">
				<input type="hidden" id="MovieNm" name="MovieNm" value="">
				<input type="hidden" id="CinemaNm" name="CinemaNm" value="">
				<input type="hidden" id="PlayTimeType" name="PlayTimeType" value="">
				<input type="hidden" id="PlayTimeTypeNm" name="PlayTimeTypeNm" value="">
				<input type="hidden" id="StartTime" name="StartTime" value="">
				<input type="hidden" id="EndTime" name="EndTime" value="">
				<input type="hidden" id="ScreenNm" name="ScreenNm" value="">
				<input type="hidden" id="ScreenType" name="ScreenType" value="">
				<input type="hidden" id="ScreenTypeNm" name="ScreenTypeNm" value="">
				<input type="hidden" id="ScreeningInfo" name="ScreeningInfo" value="">

				<input type="hidden" id="HidMovieUrl" name="HidMovieUrl" value="https://img.dtryx.com/poster/2023/02/7363A612-6112-4B4A-8150-345A88C2E9FA.small.jpg">
				<input type="hidden" id="HidRating" name="HidRating" value="12">
				<input type="hidden" id="HidTicketRate" name="HidTicketRate" value="15.55">
				<input type="hidden" id="HidReleaseDT" name="HidReleaseDT" value="2023-03-08">
			
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
										<div class="tab">
												<div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div id="brandList" class="scrollbar-inner scroll-content scroll-scrollx_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 30px;"><a href="#" class="btnBrandTab active" data-cd="dtryx">전체</a><a href="#" class="btnBrandTab" data-cd="scinema">작은영화관</a><a href="#" class="btnBrandTab" data-cd="monoplex">모노플렉스</a><a href="#" class="btnBrandTab" data-cd="etc">기타영화관</a><a href="#" class="btnBrandTab disabled" data-cd="indieart">인디앤아트시네마</a><a href="#" class="btnBrandTab disabled" data-cd="cinecube">씨네큐브</a><a href="#" class="btnBrandTab disabled" data-cd="spacedog">스페이스독</a></div><div class="scroll-element scroll-x scroll-scrollx_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 216px; left: 0px;"></div></div></div><div class="scroll-element scroll-y scroll-scrollx_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 85px;"></div></div></div></div>
											</div>
										<div class="list">
											<div class="step1">
												<div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div class="scrollbar-inner scroll-content scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 533px;">
													<ul id="regionList"><li><button type="button" class="btnTheater" title="즐겨찾는 영화관" data-cd="favorite">즐겨찾는 영화관 <span>(0)</span></button></li><li class="active"><button type="button" class="btnTheater" title="전체" data-cd="all">전체 (79)</button></li><li><button type="button" class="btnTheater" title="서울" data-cd="KR-11">서울 (15)</button></li><li><button type="button" class="btnTheater" title="경기" data-cd="KR-41">경기 (11)</button></li><li><button type="button" class="btnTheater" title="인천" data-cd="KR-28">인천 (4)</button></li><li><button type="button" class="btnTheater" title="강원" data-cd="KR-42">강원 (12)</button></li><li><button type="button" class="btnTheater" title="대전" data-cd="KR-30">대전 (1)</button></li><li><button type="button" class="btnTheater" title="충남" data-cd="KR-44">충남 (6)</button></li><li><button type="button" class="btnTheater" title="충북" data-cd="KR-43">충북 (2)</button></li><li><button type="button" class="btnTheater" title="대구" data-cd="KR-27">대구 (2)</button></li><li><button type="button" class="btnTheater" title="경북" data-cd="KR-47">경북 (7)</button></li><li><button type="button" class="btnTheater" title="부산" data-cd="KR-26">부산 (2)</button></li><li><button type="button" class="btnTheater" title="경남" data-cd="KR-48">경남 (5)</button></li><li><button type="button" class="btnTheater" title="전북" data-cd="KR-45">전북 (2)</button></li><li><button type="button" class="btnTheater" title="광주" data-cd="KR-29">광주 (3)</button></li><li><button type="button" class="btnTheater" title="전남" data-cd="KR-46">전남 (3)</button></li><li><button type="button" class="btnTheater" title="제주" data-cd="KR-49">제주 (1)</button></li></ul>
												</div><div class="scroll-element scroll-x scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 88px;"></div></div></div><div class="scroll-element scroll-y scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 334px; top: 0px;"></div></div></div></div>
											</div>
											<div class="step2">
												<div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div id="cinemaList" class="scrollbar-inner scroll-content scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 533px;"><ul class="subTheater" data-cd="favorite" style="display:none"></ul><ul class="subTheater" data-cd="all" style="display: block;"><li class="check"><a href="#" class="btn-star" data-cd="000093" data-nm="1939시네마" data-rg="KR-41"></a><button type="button" class="btnCnItem" data-cd="000093" title="1939시네마">1939시네마</button></li><li><a href="#" class="btn-star" data-cd="000005" data-nm="강화작은영화관" data-rg="KR-28"></a><button type="button" class="btnCnItem" data-cd="000005" title="강화작은영화관">강화작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000024" data-nm="고령 대가야시네마" data-rg="KR-47"></a><button type="button" class="btnCnItem" data-cd="000024" title="고령 대가야시네마">고령 대가야시네마</button></li><li><a href="#" class="btn-star" data-cd="000091" data-nm="고성 달홀영화관" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000091" title="고성 달홀영화관">고성 달홀영화관</button></li><li><a href="#" class="btn-star" data-cd="000011" data-nm="고한시네마" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000011" title="고한시네마">고한시네마</button></li><li><a href="#" class="btn-star" data-cd="000107" data-nm="금성시네마" data-rg="KR-44"></a><button type="button" class="btnCnItem" data-cd="000107" title="금성시네마">금성시네마</button></li><li><a href="#" class="btn-star" data-cd="000025" data-nm="남해 보물섬시네마" data-rg="KR-48"></a><button type="button" class="btnCnItem" data-cd="000025" title="남해 보물섬시네마">남해 보물섬시네마</button></li><li><a href="#" class="btn-star" data-cd="000092" data-nm="밀양시네마" data-rg="KR-48"></a><button type="button" class="btnCnItem" data-cd="000092" title="밀양시네마">밀양시네마</button></li><li><a href="#" class="btn-star" data-cd="000085" data-nm="산청군 작은영화관" data-rg="KR-48"></a><button type="button" class="btnCnItem" data-cd="000085" title="산청군 작은영화관">산청군 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000105" data-nm="설성시네마" data-rg="KR-43"></a><button type="button" class="btnCnItem" data-cd="000105" title="설성시네마">설성시네마</button></li><li><a href="#" class="btn-star" data-cd="000118" data-nm="성주 별고을시네마" data-rg="KR-47"></a><button type="button" class="btnCnItem" data-cd="000118" title="성주 별고을시네마">성주 별고을시네마</button></li><li><a href="#" class="btn-star" data-cd="000086" data-nm="스타박스" data-rg="KR-44"></a><button type="button" class="btnCnItem" data-cd="000086" title="스타박스">스타박스</button></li><li><a href="#" class="btn-star" data-cd="000088" data-nm="아리랑시네센터" data-rg="KR-11"></a><button type="button" class="btnCnItem" data-cd="000088" title="아리랑시네센터">아리랑시네센터</button></li><li><a href="#" class="btn-star" data-cd="000030" data-nm="아리아리 정선시네마" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000030" title="아리아리 정선시네마">아리아리 정선시네마</button></li><li><a href="#" class="btn-star" data-cd="000099" data-nm="안영채 X 모노플렉스" data-rg="KR-41"></a><button type="button" class="btnCnItem" data-cd="000099" title="안영채 X 모노플렉스">안영채 X 모노플렉스</button></li><li><a href="#" class="btn-star" data-cd="000100" data-nm="애관극장" data-rg="KR-28"></a><button type="button" class="btnCnItem" data-cd="000100" title="애관극장">애관극장</button></li><li><a href="#" class="btn-star" data-cd="000034" data-nm="양구 정중앙시네마" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000034" title="양구 정중앙시네마">양구 정중앙시네마</button></li><li><a href="#" class="btn-star" data-cd="000013" data-nm="양양 작은영화관" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000013" title="양양 작은영화관">양양 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000074" data-nm="영광작은영화관" data-rg="KR-46"></a><button type="button" class="btnCnItem" data-cd="000074" title="영광작은영화관">영광작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000020" data-nm="영월시네마" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000020" title="영월시네마">영월시네마</button></li><li><a href="#" class="btn-star" data-cd="000038" data-nm="옥천 향수시네마" data-rg="KR-43"></a><button type="button" class="btnCnItem" data-cd="000038" title="옥천 향수시네마">옥천 향수시네마</button></li><li><a href="#" class="btn-star" data-cd="000029" data-nm="완도 빙그레시네마" data-rg="KR-46"></a><button type="button" class="btnCnItem" data-cd="000029" title="완도 빙그레시네마">완도 빙그레시네마</button></li><li><a href="#" class="btn-star" data-cd="000037" data-nm="울진 작은영화관" data-rg="KR-47"></a><button type="button" class="btnCnItem" data-cd="000037" title="울진 작은영화관">울진 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000027" data-nm="철원 작은영화관" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000027" title="철원 작은영화관">철원 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000033" data-nm="청양시네마" data-rg="KR-44"></a><button type="button" class="btnCnItem" data-cd="000033" title="청양시네마">청양시네마</button></li><li><a href="#" class="btn-star" data-cd="000112" data-nm="케이트리호텔 X 모노플렉스" data-rg="KR-41"></a><button type="button" class="btnCnItem" data-cd="000112" title="케이트리호텔 X 모노플렉스">케이트리호텔 X 모노플렉스</button></li><li><a href="#" class="btn-star" data-cd="000047" data-nm="포천클라우드시네마" data-rg="KR-41"></a><button type="button" class="btnCnItem" data-cd="000047" title="포천클라우드시네마">포천클라우드시네마</button></li><li><a href="#" class="btn-star" data-cd="000111" data-nm="한국민속촌 자동차극장" data-rg="KR-41"></a><button type="button" class="btnCnItem" data-cd="000111" title="한국민속촌 자동차극장">한국민속촌 자동차극장</button></li><li><a href="#" class="btn-star" data-cd="000080" data-nm="해남시네마" data-rg="KR-46"></a><button type="button" class="btnCnItem" data-cd="000080" title="해남시네마">해남시네마</button></li><li><a href="#" class="btn-star" data-cd="000004" data-nm="홍천시네마" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000004" title="홍천시네마">홍천시네마</button></li><li><a href="#" class="btn-star" data-cd="000018" data-nm="화천군 작은영화관" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000018" title="화천군 작은영화관">화천군 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000023" data-nm="HAPPY700 평창시네마" data-rg="KR-42"></a><button type="button" class="btnCnItem" data-cd="000023" title="HAPPY700 평창시네마">HAPPY700 평창시네마</button></li><li><a href="#" class="btn-star" data-cd="000089" data-nm="KT&amp;G 상상마당 시네마" data-rg="KR-11"></a><button type="button" class="btnCnItem" data-cd="000089" title="KT&amp;G 상상마당 시네마">KT&amp;G 상상마당 시네마</button></li><li><a href="#" class="btn-star" data-cd="000087" data-nm="NH 시네마" data-rg="KR-45"></a><button type="button" class="btnCnItem" data-cd="000087" title="NH 시네마">NH 시네마</button></li><li><a href="#" class="btn-star" data-cd="000108" data-nm="광안리 SEA네마" data-rg="KR-26"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000108" title="광안리 SEA네마">광안리 SEA네마</button></li><li><a href="#" class="btn-star" data-cd="000066" data-nm="광주극장" data-rg="KR-29"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000066" title="광주극장">광주극장</button></li><li><a href="#" class="btn-star" data-cd="000054" data-nm="광주독립영화관" data-rg="KR-29"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000054" title="광주독립영화관">광주독립영화관</button></li><li><a href="#" class="btn-star" data-cd="000084" data-nm="광주자동차극장" data-rg="KR-29"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000084" title="광주자동차극장">광주자동차극장</button></li><li><a href="#" class="btn-star" data-cd="000106" data-nm="금산시네마" data-rg="KR-44"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000106" title="금산시네마">금산시네마</button></li><li><a href="#" class="btn-star" data-cd="000090" data-nm="김해문화의전당" data-rg="KR-48"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000090" title="김해문화의전당">김해문화의전당</button></li><li><a href="#" class="btn-star" data-cd="000113" data-nm="낭만극장" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000113" title="낭만극장">낭만극장</button></li><li><a href="#" class="btn-star" data-cd="000065" data-nm="더숲아트시네마" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000065" title="더숲아트시네마">더숲아트시네마</button></li><li><a href="#" class="btn-star" data-cd="000082" data-nm="더플래츠 바이 모노플렉스" data-rg="KR-41"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000082" title="더플래츠 바이 모노플렉스">더플래츠 바이 모노플렉스</button></li><li><a href="#" class="btn-star" data-cd="000060" data-nm="동성아트홀" data-rg="KR-27"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000060" title="동성아트홀">동성아트홀</button></li><li><a href="#" class="btn-star" data-cd="000001" data-nm="디트릭스" data-rg=""></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000001" title="디트릭스">디트릭스</button></li><li><a href="#" class="btn-star" data-cd="000072" data-nm="라이카시네마" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000072" title="라이카시네마">라이카시네마</button></li><li><a href="#" class="btn-star" data-cd="000116" data-nm="명화극장" data-rg="KR-41"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000116" title="명화극장">명화극장</button></li><li><a href="#" class="btn-star" data-cd="000064" data-nm="모노플렉스 성수" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000064" title="모노플렉스 성수">모노플렉스 성수</button></li><li><a href="#" class="btn-star" data-cd="000097" data-nm="모퉁이극장" data-rg="KR-26"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000097" title="모퉁이극장">모퉁이극장</button></li><li><a href="#" class="btn-star" data-cd="000062" data-nm="밀크북 바이 모노플렉스" data-rg="KR-41"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000062" title="밀크북 바이 모노플렉스">밀크북 바이 모노플렉스</button></li><li><a href="#" class="btn-star" data-cd="000026" data-nm="삼척영화관" data-rg="KR-42"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000026" title="삼척영화관">삼척영화관</button></li><li><a href="#" class="btn-star" data-cd="000053" data-nm="씨네아트 리좀" data-rg="KR-48"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000053" title="씨네아트 리좀">씨네아트 리좀</button></li><li><a href="#" class="btn-star" data-cd="000098" data-nm="씨네인디U" data-rg="KR-30"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000098" title="씨네인디U">씨네인디U</button></li><li><a href="#" class="btn-star" data-cd="000003" data-nm="씨네큐브광화문" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000003" title="씨네큐브광화문">씨네큐브광화문</button></li><li><a href="#" class="btn-star" data-cd="000067" data-nm="아트하우스모모" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000067" title="아트하우스모모">아트하우스모모</button></li><li><a href="#" class="btn-star" data-cd="000051" data-nm="안동중앙시네마" data-rg="KR-47"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000051" title="안동중앙시네마">안동중앙시네마</button></li><li><a href="#" class="btn-star" data-cd="000069" data-nm="에무시네마" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000069" title="에무시네마">에무시네마</button></li><li><a href="#" class="btn-star" data-cd="000012" data-nm="영양 작은영화관" data-rg="KR-47"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000012" title="영양 작은영화관">영양 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000094" data-nm="영화공간주안" data-rg="KR-28"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000094" title="영화공간주안">영화공간주안</button></li><li><a href="#" class="btn-star" data-cd="000104" data-nm="오르페오 룸 앳 트레바리 강남" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000104" title="오르페오 룸 앳 트레바리 강남">오르페오 룸 앳 트레바리 강남</button></li><li><a href="#" class="btn-star" data-cd="000096" data-nm="오르페오 한남" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000096" title="오르페오 한남">오르페오 한남</button></li><li><a href="#" class="btn-star" data-cd="000101" data-nm="오르페오 해운대" data-rg="KR-26"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000101" title="오르페오 해운대">오르페오 해운대</button></li><li><a href="#" class="btn-star" data-cd="000059" data-nm="오오극장" data-rg="KR-27"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000059" title="오오극장">오오극장</button></li><li><a href="#" class="btn-star" data-cd="000075" data-nm="의성 작은영화관" data-rg="KR-47"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000075" title="의성 작은영화관">의성 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000095" data-nm="이봄씨어터" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000095" title="이봄씨어터">이봄씨어터</button></li><li><a href="#" class="btn-star" data-cd="000057" data-nm="인디플러스 포항" data-rg="KR-47"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000057" title="인디플러스 포항">인디플러스 포항</button></li><li><a href="#" class="btn-star" data-cd="000068" data-nm="인디플러스천안" data-rg="KR-44"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000068" title="인디플러스천안">인디플러스천안</button></li><li><a href="#" class="btn-star" data-cd="000052" data-nm="인천미림극장" data-rg="KR-28"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000052" title="인천미림극장">인천미림극장</button></li><li><a href="#" class="btn-star" data-cd="000117" data-nm="자유로자동차극장" data-rg="KR-41"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000117" title="자유로자동차극장">자유로자동차극장</button></li><li><a href="#" class="btn-star" data-cd="000061" data-nm="전주디지털독립영화관" data-rg="KR-45"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000061" title="전주디지털독립영화관">전주디지털독립영화관</button></li><li><a href="#" class="btn-star" data-cd="000083" data-nm="천안인생극장" data-rg="KR-44"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000083" title="천안인생극장">천안인생극장</button></li><li><a href="#" class="btn-star" data-cd="000114" data-nm="청춘극장" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000114" title="청춘극장">청춘극장</button></li><li><a href="#" class="btn-star" data-cd="000110" data-nm="태백시네마" data-rg="KR-42"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000110" title="태백시네마">태백시네마</button></li><li><a href="#" class="btn-star" data-cd="000056" data-nm="판타스틱큐브" data-rg="KR-41"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000056" title="판타스틱큐브">판타스틱큐브</button></li><li><a href="#" class="btn-star" data-cd="000070" data-nm="필름포럼" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000070" title="필름포럼">필름포럼</button></li><li><a href="#" class="btn-star" data-cd="000045" data-nm="한림작은영화관" data-rg="KR-49"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000045" title="한림작은영화관">한림작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000115" data-nm="허리우드클래식" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000115" title="허리우드클래식">허리우드클래식</button></li><li><a href="#" class="btn-star" data-cd="000071" data-nm="헤이리시네마" data-rg="KR-41"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000071" title="헤이리시네마">헤이리시네마</button></li><li><a href="#" class="btn-star" data-cd="000102" data-nm="KU시네마테크" data-rg="KR-11"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000102" title="KU시네마테크">KU시네마테크</button></li></ul><ul class="subTheater" data-cd="KR-11" style="display:none"><li><a href="#" class="btn-star" data-cd="000088" data-nm="아리랑시네센터" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000088" title="아리랑시네센터">아리랑시네센터</button></li><li><a href="#" class="btn-star" data-cd="000089" data-nm="KT&amp;G 상상마당 시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000089" title="KT&amp;G 상상마당 시네마">KT&amp;G 상상마당 시네마</button></li><li><a href="#" class="btn-star" data-cd="000113" data-nm="낭만극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000113" title="낭만극장">낭만극장</button></li><li><a href="#" class="btn-star" data-cd="000065" data-nm="더숲아트시네마" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000065" title="더숲아트시네마">더숲아트시네마</button></li><li><a href="#" class="btn-star" data-cd="000072" data-nm="라이카시네마" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000072" title="라이카시네마">라이카시네마</button></li><li><a href="#" class="btn-star" data-cd="000003" data-nm="씨네큐브광화문" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000003" title="씨네큐브광화문">씨네큐브광화문</button></li><li><a href="#" class="btn-star" data-cd="000067" data-nm="아트하우스모모" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000067" title="아트하우스모모">아트하우스모모</button></li><li><a href="#" class="btn-star" data-cd="000069" data-nm="에무시네마" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000069" title="에무시네마">에무시네마</button></li><li><a href="#" class="btn-star" data-cd="000104" data-nm="오르페오 룸 앳 트레바리 강남" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000104" title="오르페오 룸 앳 트레바리 강남">오르페오 룸 앳 트레바리 강남</button></li><li><a href="#" class="btn-star" data-cd="000096" data-nm="오르페오 한남" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000096" title="오르페오 한남">오르페오 한남</button></li><li><a href="#" class="btn-star" data-cd="000095" data-nm="이봄씨어터" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000095" title="이봄씨어터">이봄씨어터</button></li><li><a href="#" class="btn-star" data-cd="000114" data-nm="청춘극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000114" title="청춘극장">청춘극장</button></li><li><a href="#" class="btn-star" data-cd="000070" data-nm="필름포럼" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000070" title="필름포럼">필름포럼</button></li><li><a href="#" class="btn-star" data-cd="000115" data-nm="허리우드클래식" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000115" title="허리우드클래식">허리우드클래식</button></li><li><a href="#" class="btn-star" data-cd="000102" data-nm="KU시네마테크" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000102" title="KU시네마테크">KU시네마테크</button></li></ul><ul class="subTheater" data-cd="KR-41" style="display:none"><li class="check"><a href="#" class="btn-star" data-cd="000093" data-nm="1939시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000093" title="1939시네마">1939시네마</button></li><li><a href="#" class="btn-star" data-cd="000099" data-nm="안영채 X 모노플렉스" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000099" title="안영채 X 모노플렉스">안영채 X 모노플렉스</button></li><li><a href="#" class="btn-star" data-cd="000112" data-nm="케이트리호텔 X 모노플렉스" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000112" title="케이트리호텔 X 모노플렉스">케이트리호텔 X 모노플렉스</button></li><li><a href="#" class="btn-star" data-cd="000047" data-nm="포천클라우드시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000047" title="포천클라우드시네마">포천클라우드시네마</button></li><li><a href="#" class="btn-star" data-cd="000111" data-nm="한국민속촌 자동차극장" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000111" title="한국민속촌 자동차극장">한국민속촌 자동차극장</button></li><li><a href="#" class="btn-star" data-cd="000082" data-nm="더플래츠 바이 모노플렉스" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000082" title="더플래츠 바이 모노플렉스">더플래츠 바이 모노플렉스</button></li><li><a href="#" class="btn-star" data-cd="000116" data-nm="명화극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000116" title="명화극장">명화극장</button></li><li><a href="#" class="btn-star" data-cd="000062" data-nm="밀크북 바이 모노플렉스" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000062" title="밀크북 바이 모노플렉스">밀크북 바이 모노플렉스</button></li><li><a href="#" class="btn-star" data-cd="000117" data-nm="자유로자동차극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000117" title="자유로자동차극장">자유로자동차극장</button></li><li><a href="#" class="btn-star" data-cd="000056" data-nm="판타스틱큐브" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000056" title="판타스틱큐브">판타스틱큐브</button></li><li><a href="#" class="btn-star" data-cd="000071" data-nm="헤이리시네마" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000071" title="헤이리시네마">헤이리시네마</button></li></ul><ul class="subTheater" data-cd="KR-28" style="display:none"><li><a href="#" class="btn-star" data-cd="000005" data-nm="강화작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000005" title="강화작은영화관">강화작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000100" data-nm="애관극장" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000100" title="애관극장">애관극장</button></li><li><a href="#" class="btn-star" data-cd="000094" data-nm="영화공간주안" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000094" title="영화공간주안">영화공간주안</button></li><li><a href="#" class="btn-star" data-cd="000052" data-nm="인천미림극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000052" title="인천미림극장">인천미림극장</button></li></ul><ul class="subTheater" data-cd="KR-42" style="display:none"><li><a href="#" class="btn-star" data-cd="000091" data-nm="고성 달홀영화관" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000091" title="고성 달홀영화관">고성 달홀영화관</button></li><li><a href="#" class="btn-star" data-cd="000011" data-nm="고한시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000011" title="고한시네마">고한시네마</button></li><li><a href="#" class="btn-star" data-cd="000030" data-nm="아리아리 정선시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000030" title="아리아리 정선시네마">아리아리 정선시네마</button></li><li><a href="#" class="btn-star" data-cd="000034" data-nm="양구 정중앙시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000034" title="양구 정중앙시네마">양구 정중앙시네마</button></li><li><a href="#" class="btn-star" data-cd="000013" data-nm="양양 작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000013" title="양양 작은영화관">양양 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000020" data-nm="영월시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000020" title="영월시네마">영월시네마</button></li><li><a href="#" class="btn-star" data-cd="000027" data-nm="철원 작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000027" title="철원 작은영화관">철원 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000004" data-nm="홍천시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000004" title="홍천시네마">홍천시네마</button></li><li><a href="#" class="btn-star" data-cd="000018" data-nm="화천군 작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000018" title="화천군 작은영화관">화천군 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000023" data-nm="HAPPY700 평창시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000023" title="HAPPY700 평창시네마">HAPPY700 평창시네마</button></li><li><a href="#" class="btn-star" data-cd="000026" data-nm="삼척영화관" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000026" title="삼척영화관">삼척영화관</button></li><li><a href="#" class="btn-star" data-cd="000110" data-nm="태백시네마" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000110" title="태백시네마">태백시네마</button></li></ul><ul class="subTheater" data-cd="KR-30" style="display:none"><li><a href="#" class="btn-star" data-cd="000098" data-nm="씨네인디U" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000098" title="씨네인디U">씨네인디U</button></li></ul><ul class="subTheater" data-cd="KR-44" style="display:none"><li><a href="#" class="btn-star" data-cd="000107" data-nm="금성시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000107" title="금성시네마">금성시네마</button></li><li><a href="#" class="btn-star" data-cd="000086" data-nm="스타박스" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000086" title="스타박스">스타박스</button></li><li><a href="#" class="btn-star" data-cd="000033" data-nm="청양시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000033" title="청양시네마">청양시네마</button></li><li><a href="#" class="btn-star" data-cd="000106" data-nm="금산시네마" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000106" title="금산시네마">금산시네마</button></li><li><a href="#" class="btn-star" data-cd="000068" data-nm="인디플러스천안" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000068" title="인디플러스천안">인디플러스천안</button></li><li><a href="#" class="btn-star" data-cd="000083" data-nm="천안인생극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000083" title="천안인생극장">천안인생극장</button></li></ul><ul class="subTheater" data-cd="KR-43" style="display:none"><li><a href="#" class="btn-star" data-cd="000105" data-nm="설성시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000105" title="설성시네마">설성시네마</button></li><li><a href="#" class="btn-star" data-cd="000038" data-nm="옥천 향수시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000038" title="옥천 향수시네마">옥천 향수시네마</button></li></ul><ul class="subTheater" data-cd="KR-27" style="display:none"><li><a href="#" class="btn-star" data-cd="000060" data-nm="동성아트홀" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000060" title="동성아트홀">동성아트홀</button></li><li><a href="#" class="btn-star" data-cd="000059" data-nm="오오극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000059" title="오오극장">오오극장</button></li></ul><ul class="subTheater" data-cd="KR-47" style="display:none"><li><a href="#" class="btn-star" data-cd="000024" data-nm="고령 대가야시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000024" title="고령 대가야시네마">고령 대가야시네마</button></li><li><a href="#" class="btn-star" data-cd="000118" data-nm="성주 별고을시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000118" title="성주 별고을시네마">성주 별고을시네마</button></li><li><a href="#" class="btn-star" data-cd="000037" data-nm="울진 작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000037" title="울진 작은영화관">울진 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000051" data-nm="안동중앙시네마" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000051" title="안동중앙시네마">안동중앙시네마</button></li><li><a href="#" class="btn-star" data-cd="000012" data-nm="영양 작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000012" title="영양 작은영화관">영양 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000075" data-nm="의성 작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000075" title="의성 작은영화관">의성 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000057" data-nm="인디플러스 포항" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000057" title="인디플러스 포항">인디플러스 포항</button></li></ul><ul class="subTheater" data-cd="KR-26" style="display:none"><li><a href="#" class="btn-star" data-cd="000097" data-nm="모퉁이극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000097" title="모퉁이극장">모퉁이극장</button></li><li><a href="#" class="btn-star" data-cd="000101" data-nm="오르페오 해운대" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000101" title="오르페오 해운대">오르페오 해운대</button></li></ul><ul class="subTheater" data-cd="KR-48" style="display:none"><li><a href="#" class="btn-star" data-cd="000025" data-nm="남해 보물섬시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000025" title="남해 보물섬시네마">남해 보물섬시네마</button></li><li><a href="#" class="btn-star" data-cd="000092" data-nm="밀양시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000092" title="밀양시네마">밀양시네마</button></li><li><a href="#" class="btn-star" data-cd="000085" data-nm="산청군 작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000085" title="산청군 작은영화관">산청군 작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000090" data-nm="김해문화의전당" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000090" title="김해문화의전당">김해문화의전당</button></li><li><a href="#" class="btn-star" data-cd="000053" data-nm="씨네아트 리좀" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000053" title="씨네아트 리좀">씨네아트 리좀</button></li></ul><ul class="subTheater" data-cd="KR-45" style="display:none"><li><a href="#" class="btn-star" data-cd="000087" data-nm="NH 시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000087" title="NH 시네마">NH 시네마</button></li><li><a href="#" class="btn-star" data-cd="000061" data-nm="전주디지털독립영화관" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000061" title="전주디지털독립영화관">전주디지털독립영화관</button></li></ul><ul class="subTheater" data-cd="KR-29" style="display:none"><li><a href="#" class="btn-star" data-cd="000066" data-nm="광주극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000066" title="광주극장">광주극장</button></li><li><a href="#" class="btn-star" data-cd="000054" data-nm="광주독립영화관" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000054" title="광주독립영화관">광주독립영화관</button></li><li><a href="#" class="btn-star" data-cd="000084" data-nm="광주자동차극장" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000084" title="광주자동차극장">광주자동차극장</button></li></ul><ul class="subTheater" data-cd="KR-46" style="display:none"><li><a href="#" class="btn-star" data-cd="000074" data-nm="영광작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000074" title="영광작은영화관">영광작은영화관</button></li><li><a href="#" class="btn-star" data-cd="000029" data-nm="완도 빙그레시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000029" title="완도 빙그레시네마">완도 빙그레시네마</button></li><li><a href="#" class="btn-star" data-cd="000080" data-nm="해남시네마" data-rg="undefined"></a><button type="button" class="btnCnItem" data-cd="000080" title="해남시네마">해남시네마</button></li></ul><ul class="subTheater" data-cd="KR-49" style="display:none"><li><a href="#" class="btn-star" data-cd="000045" data-nm="한림작은영화관" data-rg="undefined"></a><button type="button" class="btnCnItem disabled" disabled="" data-cd="000045" title="한림작은영화관">한림작은영화관</button></li></ul></div><div class="scroll-element scroll-x scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 88px;"></div></div></div><div class="scroll-element scroll-y scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 69px; top: 0px;"></div></div></div></div>
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
										<div class="tab">
												<a href="#" class="btnMovieType active" data-type="all">전체</a>
												<a href="#" class="btnMovieType" data-type="normal">일반영화</a>
												<a href="#" class="btnMovieType" data-type="indieArt">독립·예술영화</a>
											</div>
										<div class="tab2">
											<a href="#" class="btnMovieTab active" data-tab="boxoffice">예매율 순</a>
											<a href="#" class="btnMovieTab" data-tab="name">가나다 순</a>
										</div>
										<div class="list">
											<div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div class="scrollbar-inner scroll-content scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 492px;">
												<ul id="movieList"><li class="check">	<button type="button" class="btnMvItem" data-cd="021864" data-url="https://img.dtryx.com/poster/2023/02/7363A612-6112-4B4A-8150-345A88C2E9FA.small.jpg" data-rat="12" data-trt="15.55" data-rdt="2023-03-08" title="스즈메의 문단속">		<i class="age12"></i>		스즈메의 문단속	</button></li><li>	<button type="button" class="btnMvItem" data-cd="022016" data-url="https://img.dtryx.com/poster/2023/03/7D0185AF-8AA5-4911-A6CE-7171F88D3E56.small.png" data-rat="12" data-trt="7.68" data-rdt="2023-04-05" title="리바운드">		<i class="age12"></i>		리바운드	</button></li><li>	<button type="button" class="btnMvItem" data-cd="021991" data-url="https://img.dtryx.com/poster/2023/03/F47AB621-ECBF-45AD-A2E2-1A92EFCC18DF.small.jpg" data-rat="15" data-trt="2.61" data-rdt="2023-03-22" title="웅남이">		<i class="age15"></i>		웅남이	</button></li><li>	<button type="button" class="btnMvItem" data-cd="021990" data-url="https://img.dtryx.com/poster/2023/03/393A918A-FC73-4F3F-9019-50511E971A8E.small.jpg" data-rat="12" data-trt="1.95" data-rdt="2023-03-29" title="던전 앤 드래곤: 도적들의 명예">		<i class="age12"></i>		던전 앤 드래곤: 도적들의 명예	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021989" data-url="https://img.dtryx.com/poster/2023/03/2D2C7516-D68F-4875-AF1E-45C50BDF8D1F.small.jpg" data-rat="15" data-trt="13.13" data-rdt="2023-04-12" title="사랑의 고고학">		<i class="age15"></i>		사랑의 고고학	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019476" data-url="https://img.dtryx.com/poster/2022/03/07F44F77-F93A-44D0-8A9E-8E88E42E722D.small.jpg" data-rat="15" data-trt="5.83" data-rdt="2017-03-30" title="패왕별희 디 오리지널">		<i class="age15"></i>		패왕별희 디 오리지널	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022096" data-url="https://img.dtryx.com/poster/2023/03/9891BB81-5EA1-4C5A-AEEE-89D5B0C8C813.small.jpg" data-rat="15" data-trt="4.87" data-rdt="2023-04-19" title="라이스보이 슬립스">		<i class="age15"></i>		라이스보이 슬립스	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021873" data-url="https://img.dtryx.com/poster/2023/02/172B39F7-D09B-4FF3-9286-C541FE394A88.small.jpg" data-rat="15" data-trt="4.14" data-rdt="2023-03-01" title="더 웨일">		<i class="age15"></i>		더 웨일	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021968" data-url="https://img.dtryx.com/poster/2023/03/13CDA3AF-04FD-4634-86BF-5C8F032ED915.small.jpg" data-rat="12" data-trt="3.87" data-rdt="2023-03-22" title="파벨만스">		<i class="age12"></i>		파벨만스	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019844" data-url="https://img.dtryx.com/poster/2022/05/4397D3CA-37C5-412E-B883-03781EDA8366.small.jpg" data-rat="15" data-trt="3.30" data-rdt="1998-08-22" title="해피 투게더">		<i class="age15"></i>		해피 투게더	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021728" data-url="https://img.dtryx.com/poster/2023/01/9E4D4FF5-3C3D-407C-8D44-5EB30AD99CDC.small.jpg" data-rat="12" data-trt="3.26" data-rdt="2023-02-01" title="애프터썬">		<i class="age12"></i>		애프터썬	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021930" data-url="https://img.dtryx.com/poster/2023/02/096B0010-7F83-462B-9B25-8C2132D910E8.small.jpg" data-rat="15" data-trt="3.22" data-rdt="2023-03-15" title="이니셰린의 밴시">		<i class="age15"></i>		이니셰린의 밴시	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020950" data-url="" data-rat="15" data-trt="2.34" data-rdt="2022-10-01" title="[청춘극장] 청춘가요무대 ">		<i class="age15"></i>		[청춘극장] 청춘가요무대 	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021964" data-url="https://img.dtryx.com/poster/2023/03/6E435F4D-0294-4131-8870-C27B70FA5C8C.small.jpg" data-rat="15" data-trt="1.99" data-rdt="2023-03-22" title="모나리자와 블러드 문">		<i class="age15"></i>		모나리자와 블러드 문	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021485" data-url="https://img.dtryx.com/poster/2023/03/4F15C715-E3D8-4E14-A6C5-F98E850111B6.small.jpg" data-rat="12" data-trt="1.92" data-rdt="2023-03-29" title="흐르다">		<i class="age12"></i>		흐르다	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021794" data-url="https://img.dtryx.com/poster/2023/01/033879D9-5CF7-4B9F-8482-A8531B2BAEAA.small.jpg" data-rat="15" data-trt="1.72" data-rdt="2023-02-22" title="TAR 타르">		<i class="age15"></i>		TAR 타르	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021829" data-url="https://img.dtryx.com/poster/2023/02/F165E512-2453-41FF-8124-136DC27DA9FE.small.jpg" data-rat="15" data-trt="1.49" data-rdt="2023-03-08" title="6번 칸">		<i class="age15"></i>		6번 칸	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022066" data-url="https://img.dtryx.com/poster/2023/03/399710A5-5646-4525-8515-3D356BEED547.small.jpg" data-rat="15" data-trt="1.19" data-rdt="2023-04-05" title="에어">		<i class="age15"></i>		에어	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020739" data-url="https://img.dtryx.com/poster/2023/03/2AD2611D-CF32-48CF-B804-1BBF2983FB47.small.jpg" data-rat="15" data-trt="1.15" data-rdt="2022-10-12" title="에브리씽 에브리웨어 올 앳 원스">		<i class="age15"></i>		에브리씽 에브리웨어 올 앳 원스	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021219" data-url="https://img.dtryx.com/poster/2023/03/B06319F5-846C-4171-BF58-9FE548C50A17.small.jpg" data-rat="12" data-trt="1.11" data-rdt="2023-03-29" title="여섯 개의 밤">		<i class="age12"></i>		여섯 개의 밤	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022033" data-url="https://img.dtryx.com/poster/2023/03/FEE2D5B5-B7B8-4847-AD60-671A2641FA16.small.jpg" data-rat="12" data-trt="1.07" data-rdt="2023-04-05" title="장기자랑">		<i class="age12"></i>		장기자랑	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021995" data-url="https://img.dtryx.com/poster/2023/03/461EBC67-20FF-46FD-8B30-65D4D5B54692.small.jpg" data-rat="00" data-trt="1.07" data-rdt="2023-04-06" title="오글리스: 웰컴 투 냄새 마을">		<i class="ageall"></i>		오글리스: 웰컴 투 냄새 마을	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021972" data-url="https://img.dtryx.com/poster/2023/03/71AA049B-2BB9-485C-BC48-3DB43453DD1A.small.jpg" data-rat="12" data-trt="0.80" data-rdt="2023-03-29" title="오토라는 남자">		<i class="age12"></i>		오토라는 남자	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021890" data-url="https://img.dtryx.com/poster/2023/02/09F1A84B-86DF-45B5-8E7F-AF3B6567FC5B.small.jpg" data-rat="15" data-trt="0.49" data-rdt="2023-03-01" title="에브리씽 에브리웨어 올 앳 원스+">		<i class="age15"></i>		에브리씽 에브리웨어 올 앳 원스+	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021675" data-url="https://img.dtryx.com/poster/2023/01/97709FB8-035E-4F40-9452-48CFC3622559.small.jpg" data-rat="18" data-trt="0.46" data-rdt="2023-02-01" title="바빌론">		<i class="age19"></i>		바빌론	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022032" data-url="https://img.dtryx.com/poster/2023/03/56F0DEE8-7DB3-4E84-B120-927547A4241C.small.jpg" data-rat="15" data-trt="0.38" data-rdt="2023-03-29" title="나의 연인에게">		<i class="age15"></i>		나의 연인에게	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021996" data-url="https://img.dtryx.com/poster/2023/03/B1B04581-EA70-4704-9DFF-D75BFD97669D.small.jpg" data-rat="18" data-trt="0.34" data-rdt="1995-10-14" title="사랑에 관한 짧은 필름">		<i class="age19"></i>		사랑에 관한 짧은 필름	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021734" data-url="https://img.dtryx.com/poster/2023/01/D3B6992D-1971-42BB-9835-3A78B4DDD36A.small.jpg" data-rat="15" data-trt="0.30" data-rdt="2023-02-08" title="다음 소희">		<i class="age15"></i>		다음 소희	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022072" data-url="https://img.dtryx.com/poster/2023/03/DA56ACBD-B473-43F2-8E04-292F1CF34930.small.jpg" data-rat="12" data-trt="0.26" data-rdt="2023-04-12" title="물안에서">		<i class="age12"></i>		물안에서	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021501" data-url="https://img.dtryx.com/poster/2022/12/8353A7F3-2EB2-4711-BB5F-76732FCCD9DD.small.jpg" data-rat="12" data-trt="0.26" data-rdt="2021-01-01" title="희수">		<i class="age12"></i>		희수	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021811" data-url="https://img.dtryx.com/poster/2023/02/6384EF8E-685C-4CAE-B694-CB2917EA2D5A.small.jpg" data-rat="00" data-trt="0.19" data-rdt="2023-02-23" title="바다 탐험대 옥토넛 육지수호 대작전 : 열대우림을 지켜라!">		<i class="ageall"></i>		바다 탐험대 옥토넛 육지수호 대작전 : 열대우림을 지켜라!	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019428" data-url="https://img.dtryx.com/poster/2022/03/36B3305B-FC41-4E00-A88D-9DB764DFF3C3.small.jpg" data-rat="12" data-trt="0.15" data-rdt="2022-02-16" title="소설가의 영화">		<i class="age12"></i>		소설가의 영화	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021997" data-url="https://img.dtryx.com/poster/2023/03/0CBB0116-7E57-487F-A76A-FC4FF420DBF7.small.jpg" data-rat="18" data-trt="0.15" data-rdt="1997-07-05" title="살인에 관한 짧은 필름">		<i class="age19"></i>		살인에 관한 짧은 필름	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021938" data-url="https://img.dtryx.com/poster/2023/02/72790CFC-E0BB-493B-8745-12AD45CDBF7A.small.jpg" data-rat="12" data-trt="0.11" data-rdt="2023-03-15" title="어떤 영웅">		<i class="age12"></i>		어떤 영웅	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022073" data-url="https://img.dtryx.com/poster/2023/03/094DC779-B2B5-445C-A2F5-6C7AD838CA2E.small.jpg" data-rat="12" data-trt="0.11" data-rdt="2023-04-05" title="오늘 출가합니다">		<i class="age12"></i>		오늘 출가합니다	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022121" data-url="https://img.dtryx.com/poster/2023/04/5482697F-1A5E-4D74-8D58-80618858B8ED.small.jpg" data-rat="12" data-trt="0.07" data-rdt="2015-02-12" title="리틀 포레스트: 여름과 가을">		<i class="age12"></i>		리틀 포레스트: 여름과 가을	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021405" data-url="https://img.dtryx.com/poster/2023/03/81C6C0CF-4EAA-4C9D-81B7-4D54772AFB0F.small.jpg" data-rat="12" data-trt="0.07" data-rdt="2023-03-08" title="콜 제인">		<i class="age12"></i>		콜 제인	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022105" data-url="https://img.dtryx.com/poster/2023/03/ABB2AC8D-4160-49C8-B01C-C9D9FED112CE.small.jpg" data-rat="15" data-trt="0.07" data-rdt="2023-04-05" title="불멸의 여자">		<i class="age15"></i>		불멸의 여자	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021807" data-url="https://img.dtryx.com/poster/2023/02/A1B972E6-F7A4-4178-A1F0-D61AA24418BE.small.jpg" data-rat="12" data-trt="0.07" data-rdt="2023-02-23" title="컨버세이션">		<i class="age12"></i>		컨버세이션	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021971" data-url="https://img.dtryx.com/poster/2023/03/3E01E072-3FEB-4296-9226-4E2BBE1D0713.small.jpg" data-rat="00" data-trt="0.07" data-rdt="2023-03-22" title="차별">		<i class="ageall"></i>		차별	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022100" data-url="https://img.dtryx.com/poster/2023/03/BA738528-07A5-4EFA-9B7D-B02744878F9A.small.jpg" data-rat="18" data-trt="0.03" data-rdt="2023-04-12" title="존 윅 4">		<i class="age19"></i>		존 윅 4	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022084" data-url="https://img.dtryx.com/poster/2023/03/E1992E85-AFE1-4628-8D73-A83D1BDED9DB.small.jpg" data-rat="12" data-trt="0.03" data-rdt="2023-04-12" title="거울 속 외딴 성">		<i class="age12"></i>		거울 속 외딴 성	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022031" data-url="https://img.dtryx.com/poster/2023/03/FE7739F5-4C9B-4147-999D-8582811D4B6F.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1950-01-01" title="시라노 (1950)">		<i class="age12"></i>		시라노 (1950)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020660" data-url="https://img.dtryx.com/poster/2022/11/E89162E8-10F1-4AE4-A548-60D344A98BCC.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2022-11-24" title="우수">		<i class="age12"></i>		우수	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021951" data-url="https://img.dtryx.com/poster/2023/03/A0E0BBE3-5F03-4DDD-BB5D-28C6DF2314F1.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1956-01-01" title="아나스타샤 (1956)">		<i class="age15"></i>		아나스타샤 (1956)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020842" data-url="https://img.dtryx.com/poster/2023/03/AE85D7C5-4DE0-4288-B484-13C696A3389D.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2023-10-01" title="왕중왕 (1961)">		<i class="ageall"></i>		왕중왕 (1961)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021064" data-url="https://img.dtryx.com/poster/2022/10/CF1ED156-E4A1-45C7-ADBA-1AF4DCBEA8AE.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2022-12-01" title="은술잔 (1954)">		<i class="age12"></i>		은술잔 (1954)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021931" data-url="https://img.dtryx.com/poster/2023/02/92136EA0-ACA5-4030-9D05-CF8AB465658B.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2023-03-22" title="틸">		<i class="age12"></i>		틸	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021628" data-url="https://img.dtryx.com/poster/2022/12/E800902B-D348-439A-8D39-4E12DCDB3610.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1953-01-01" title="형제는 용감하였다 (1953)">		<i class="age12"></i>		형제는 용감하였다 (1953)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021104" data-url="https://img.dtryx.com/poster/2022/10/B66F4B97-0988-4E20-A3F3-F508891D3D1B.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2022-11-03" title="탑">		<i class="age15"></i>		탑	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021582" data-url="https://img.dtryx.com/poster/2022/12/BBFCC595-227C-4733-854D-D68026558CE5.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2022-12-29" title="이태석">		<i class="ageall"></i>		이태석	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021741" data-url="https://img.dtryx.com/poster/2023/01/48D6EC45-E15B-4D21-9E4D-F0C168A983BC.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2023-02-08" title="어쩌면 우린 헤어졌는지 모른다">		<i class="age12"></i>		어쩌면 우린 헤어졌는지 모른다	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020299" data-url="https://img.dtryx.com/poster/2022/11/370202B3-097C-4723-8E97-F2F730C221C2.small.png" data-rat="15" data-trt="0.00" data-rdt="1961-09-20" title="상록수 (1961)">		<i class="age15"></i>		상록수 (1961)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019924" data-url="https://img.dtryx.com/poster/2022/06/FFA18E42-29B6-4D4A-AB5B-FF27565E76C6.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2022-06-16" title="그대라는기억 연숙씨">		<i class="ageall"></i>		그대라는기억 연숙씨	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021899" data-url="https://img.dtryx.com/poster/2023/02/41F7BFA0-CC59-428A-BC73-9E07CBA0D7BD.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1971-09-21" title="엘 시드 (1961)">		<i class="age12"></i>		엘 시드 (1961)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022113" data-url="https://img.dtryx.com/poster/2023/03/D318B9F5-D203-4D48-8D85-0D5FB7CC3FF9.small.PNG" data-rat="18" data-trt="0.00" data-rdt="2023-04-19" title="오디션">		<i class="age19"></i>		오디션	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022034" data-url="https://img.dtryx.com/poster/2023/03/CF309353-069E-44F7-83E1-F5357EF43757.small.jpg" data-rat="00" data-trt="0.00" data-rdt="1942-01-01" title="미니버 부인 (1942)">		<i class="ageall"></i>		미니버 부인 (1942)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021451" data-url="https://img.dtryx.com/poster/2022/11/EF52C405-BD75-4525-9D9A-36E08692B6AB.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1938-01-01" title="우리들의 낙원 (1938)">		<i class="age15"></i>		우리들의 낙원 (1938)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021865" data-url="https://img.dtryx.com/poster/2023/03/AEC588BB-08BB-4A8A-8A07-3D177FC4CCF3.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2023-03-15" title="소울메이트">		<i class="age12"></i>		소울메이트	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022029" data-url="https://img.dtryx.com/poster/2023/03/A24E0592-CAEE-4FD3-964D-2B2EEE5FBE6B.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1976-08-12" title="사랑의 스잔나 (1976)">		<i class="age12"></i>		사랑의 스잔나 (1976)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019342" data-url="https://img.dtryx.com/poster/2022/03/D5101230-3A87-4FCE-830A-7018FB26D0F6.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1961-01-28" title="성춘향">		<i class="age15"></i>		성춘향	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022093" data-url="https://img.dtryx.com/poster/2023/03/CFD1CBEE-8B46-4B92-8859-B398E8AD1634.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1954-01-01" title="홉슨의 사위 고르기 (1954)">		<i class="age12"></i>		홉슨의 사위 고르기 (1954)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022041" data-url="https://img.dtryx.com/poster/2023/03/DE24A10D-B134-4B2F-8D5A-8479D9DAC7A1.small.jpg" data-rat="18" data-trt="0.00" data-rdt="1981-06-13" title="자유부인 '81 (1981)">		<i class="age19"></i>		자유부인 '81 (1981)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022068" data-url="https://img.dtryx.com/poster/2023/03/D4D2F348-D211-48B2-A6A1-386DC144E1D2.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2023-04-14" title="킬링 로맨스">		<i class="age15"></i>		킬링 로맨스	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022094" data-url="https://img.dtryx.com/poster/2023/03/BB8A3920-2093-42A3-BE97-0B81DF7BBD94.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1955-01-01" title="영 앳 하트 (1955)">		<i class="age12"></i>		영 앳 하트 (1955)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021155" data-url="https://img.dtryx.com/poster/2022/10/87CB4765-CAF8-45B6-A427-00588466E797.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2023-11-01" title="천국의 열쇠 (1944)">		<i class="age15"></i>		천국의 열쇠 (1944)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019465" data-url="https://img.dtryx.com/poster/2022/03/8FAEF1FD-D936-411B-80C2-1B74367E6BE9.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1959-01-01" title="잊혀진 전쟁 (1959)">		<i class="age12"></i>		잊혀진 전쟁 (1959)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021354" data-url="https://img.dtryx.com/poster/2022/11/06703883-9B7E-402F-B356-B1C407101055.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2022-12-15" title="페르시아어 수업">		<i class="age15"></i>		페르시아어 수업	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022043" data-url="https://img.dtryx.com/poster/2023/03/6C553216-3235-43CD-AAC7-7DE38DBBF44F.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1959-01-01" title="축복 (1959)">		<i class="age15"></i>		축복 (1959)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021506" data-url="https://img.dtryx.com/poster/2022/12/9D361979-641B-46B8-91A0-EDABD19DF98A.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2022-12-21" title="영웅">		<i class="age12"></i>		영웅	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022036" data-url="https://img.dtryx.com/poster/2023/03/23291784-B3FE-4275-A47C-8E2ADE0DDEE9.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1954-01-01" title="로미오와 줄리엣 (1954)">		<i class="age15"></i>		로미오와 줄리엣 (1954)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021061" data-url="https://img.dtryx.com/poster/2022/10/DE79EA80-90D6-48E5-B81F-35F4D2A87332.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2022-12-01" title="성 메리의 종 (1945)">		<i class="age15"></i>		성 메리의 종 (1945)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022091" data-url="https://img.dtryx.com/poster/2023/03/548BD69A-6F9B-429A-A538-AE158052DC75.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1953-01-01" title="백만장자와 결혼하는 법 (1953)">		<i class="age12"></i>		백만장자와 결혼하는 법 (1953)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021962" data-url="https://img.dtryx.com/poster/2023/03/F6D3D7A2-EE7F-41CB-9C58-0D377C1FAF12.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2023-03-18" title="치킨래빗: 잃어버린 보물을 찾아서">		<i class="ageall"></i>		치킨래빗: 잃어버린 보물을 찾아서	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020681" data-url="https://img.dtryx.com/poster/2022/09/9F035DE4-5BAB-4A18-ACEA-C0D4FAE378B4.small.png" data-rat="15" data-trt="0.00" data-rdt="1960-01-01" title="버터필드 8 (1960)">		<i class="age15"></i>		버터필드 8 (1960)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021781" data-url="https://img.dtryx.com/poster/2023/01/DE2ACE21-F6D0-404C-82AF-F2C7DCB34E0F.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2023-02-15" title="피터 본 칸트">		<i class="age15"></i>		피터 본 칸트	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022085" data-url="https://img.dtryx.com/poster/2023/03/DA62C1E9-6EA4-435B-A2CD-E9745A581111.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2023-04-06" title="카구야 님은 고백받고 싶어 -첫 키스는 끝나지 않아-">		<i class="age12"></i>		카구야 님은 고백받고 싶어 -첫 키스는 끝나지 않아-	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019830" data-url="https://img.dtryx.com/poster/2022/05/4335C91F-5ED5-40AF-9A65-A0D133EEFC96.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2022-06-01" title="카시오페아">		<i class="age12"></i>		카시오페아	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021790" data-url="https://img.dtryx.com/poster/2023/01/4B530A97-2502-4781-881F-61BE86328C4A.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1962-01-01" title="암행어사 박문수 (1962)">		<i class="age15"></i>		암행어사 박문수 (1962)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022123" data-url="" data-rat="00" data-trt="0.00" data-rdt="2023-04-01" title="(한림작은영화관) BIAF2023 기획상영 '오늘봄'">		<i class="ageall"></i>		(한림작은영화관) BIAF2023 기획상영 '오늘봄'	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019643" data-url="https://img.dtryx.com/poster/2022/04/4A2F0F2E-6D08-4EF5-A90F-868059251515.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1953-04-22" title="모감보 (1953)">		<i class="age15"></i>		모감보 (1953)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019988" data-url="https://img.dtryx.com/poster/2022/06/3F9F431A-1503-4CB1-A35C-F33E8AF32FF4.small.jpg" data-rat="00" data-trt="0.00" data-rdt="1953-01-01" title="로마의 휴일 (1953)">		<i class="ageall"></i>		로마의 휴일 (1953)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020435" data-url="https://img.dtryx.com/poster/2022/08/CCDA7AD9-CB27-407E-820A-E3A9312C8696.small.png" data-rat="15" data-trt="0.00" data-rdt="2022-08-10" title="기적(1959)">		<i class="age15"></i>		기적(1959)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019646" data-url="https://img.dtryx.com/poster/2022/04/364829AC-C7CF-4538-8333-2CA450A0B9C4.small.jpeg" data-rat="15" data-trt="0.00" data-rdt="1961-04-22" title="마부 (1961)">		<i class="age15"></i>		마부 (1961)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021443" data-url="https://img.dtryx.com/poster/2022/12/F8F94184-223D-4212-8BF7-E8B01C7DD2A4.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2023-01-11" title="나는 마을 방과후 교사입니다">		<i class="ageall"></i>		나는 마을 방과후 교사입니다	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021630" data-url="https://img.dtryx.com/poster/2022/12/D6FB1282-ADA7-4181-A83C-06CC06289B91.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2023-01-18" title="겨울 이야기">		<i class="ageall"></i>		겨울 이야기	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022061" data-url="https://img.dtryx.com/poster/2023/03/D6450E70-67F2-42D3-8B21-2398CA27CA65.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1931-01-01" title="마타하리 (1931)">		<i class="age15"></i>		마타하리 (1931)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022062" data-url="https://img.dtryx.com/poster/2023/03/9E6BAE2F-845E-41F3-9B91-D66B820864BD.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1933-01-01" title="킹콩 (1933)">		<i class="age15"></i>		킹콩 (1933)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021394" data-url="https://img.dtryx.com/poster/2022/11/6D2DC3FD-FFBF-48DA-B418-4CE872E3BA25.small.jpg" data-rat="18" data-trt="0.00" data-rdt="1972-11-24" title="솔로몬과 시바의 여왕 (1959)">		<i class="age19"></i>		솔로몬과 시바의 여왕 (1959)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020524" data-url="https://img.dtryx.com/poster/2022/08/D40E04B9-A2FB-4C1B-BA64-E5BCF9124EA4.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1940-01-01" title="분노의 포도 (1940)">		<i class="age15"></i>		분노의 포도 (1940)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020304" data-url="https://img.dtryx.com/poster/2022/07/0E92D166-0CC3-43CA-B669-4E99E18CB7C7.small.jpg" data-rat="00" data-trt="0.00" data-rdt="1973-06-16" title="십계 (1956)">		<i class="ageall"></i>		십계 (1956)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022112" data-url="https://img.dtryx.com/poster/2023/03/8372824F-787A-4B7A-B9FB-9D5754DDBD75.small.jpg" data-rat="18" data-trt="0.00" data-rdt="2001-01-27" title="동경의 주먹">		<i class="age19"></i>		동경의 주먹	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019639" data-url="https://img.dtryx.com/poster/2022/04/0E2864C2-55CE-4116-8B18-04DA50DF4DFD.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1977-02-18" title="데미트리아스 (1954)">		<i class="age15"></i>		데미트리아스 (1954)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020556" data-url="https://img.dtryx.com/poster/2022/08/335651B2-0821-40FB-BEE6-D787BA683B59.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2006-12-21" title="수면의 과학">		<i class="age15"></i>		수면의 과학	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022045" data-url="https://img.dtryx.com/poster/2023/03/BA3CBA79-027A-4120-AEC6-AFF091E1E2F9.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1958-01-01" title="사랑의 비약 (1958)">		<i class="age12"></i>		사랑의 비약 (1958)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021444" data-url="https://img.dtryx.com/poster/2022/11/535B3B70-0E42-4755-8C13-ABAA32C3D8D4.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1953-01-01" title="원탁의 기사 (1953)">		<i class="age15"></i>		원탁의 기사 (1953)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022095" data-url="https://img.dtryx.com/poster/2023/03/333E3DAC-5D01-42B3-9CBA-6BF4E751468C.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2018-06-21" title="아일라">		<i class="age15"></i>		아일라	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021952" data-url="" data-rat="15" data-trt="0.00" data-rdt="1960-01-01" title="존 휴스턴 회고전-용서받지 못할 자">		<i class="age15"></i>		존 휴스턴 회고전-용서받지 못할 자	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020527" data-url="https://img.dtryx.com/poster/2022/08/53300162-2979-485B-BC6D-9D634BB0BF20.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1960-10-05" title="박서방 (1960)">		<i class="age12"></i>		박서방 (1960)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021950" data-url="https://img.dtryx.com/poster/2023/03/C34DB8EB-F3F7-43FA-BBD6-426B5A38FC35.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1959-01-01" title="구름은 흘러도 (1959)">		<i class="age15"></i>		구름은 흘러도 (1959)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022035" data-url="https://img.dtryx.com/poster/2023/03/E085C9D4-087B-49DC-BC4F-BD6CA6060756.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1941-01-01" title="말타의 매 (1941)">		<i class="age12"></i>		말타의 매 (1941)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021742" data-url="https://img.dtryx.com/poster/2023/01/F9AD74C2-7907-4B0E-904C-24B7DDC4E31E.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2023-02-09" title="라스트 버스">		<i class="age12"></i>		라스트 버스	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021304" data-url="https://img.dtryx.com/poster/2022/11/B6274237-6C1A-430E-AC77-FB4D9E45A1B7.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2022-11-24" title="머슴바울">		<i class="ageall"></i>		머슴바울	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022060" data-url="https://img.dtryx.com/poster/2023/03/60838704-FEE0-4BD3-9742-51E94AB0372A.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2023-04-12" title="제비">		<i class="age15"></i>		제비	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021613" data-url="https://img.dtryx.com/poster/2022/12/BA3916F5-4021-4138-9DCE-40511A19307A.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1954-01-01" title="황태자의 첫사랑 (1954)">		<i class="age12"></i>		황태자의 첫사랑 (1954)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021958" data-url="https://img.dtryx.com/poster/2023/03/D4C86E46-12CA-4CE6-8B16-1014859EE6C9.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2023-03-29" title="찬란한 나의 복수">		<i class="age15"></i>		찬란한 나의 복수	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021963" data-url="https://img.dtryx.com/poster/2023/03/EA834BAB-5981-49D9-94B9-18B24C7E0726.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2023-03-23" title="꼬마돼지 베이브의 바다 대모험">		<i class="ageall"></i>		꼬마돼지 베이브의 바다 대모험	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019625" data-url="https://img.dtryx.com/poster/2022/04/4962593E-1C6E-4EAD-86EC-52664EE359CC.small.jpg" data-rat="00" data-trt="0.00" data-rdt="1972-09-07" title="벤허 (1959)">		<i class="ageall"></i>		벤허 (1959)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019736" data-url="https://img.dtryx.com/poster/2022/05/3DDCF734-D41B-48A0-9744-CE932AE5730F.small.jpg" data-rat="15" data-trt="0.00" data-rdt="1937-01-01" title="오케스트라의 소녀 (1937)">		<i class="age15"></i>		오케스트라의 소녀 (1937)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020865" data-url="https://img.dtryx.com/poster/2023/02/BC82B407-18A1-49A2-B731-D84414B85DEF.small.jpg" data-rat="12" data-trt="0.00" data-rdt="2023-03-08" title="그대 어이가리">		<i class="age12"></i>		그대 어이가리	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022092" data-url="https://img.dtryx.com/poster/2023/03/BA8269A1-045E-49A1-9E87-2872075D7B47.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1948-01-01" title="분홍신 (1948)">		<i class="age12"></i>		분홍신 (1948)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021595" data-url="https://img.dtryx.com/poster/2023/01/14022E4E-CFEB-43AE-B207-69EB6834C405.small.jpg" data-rat="15" data-trt="0.00" data-rdt="2023-01-18" title="유령">		<i class="age15"></i>		유령	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="020773" data-url="https://img.dtryx.com/poster/2022/09/26427DC5-AD0C-4D5D-9107-A0794EAECCB5.small.jpg" data-rat="00" data-trt="0.00" data-rdt="1951-11-08" title="쿼바디스 (1951)">		<i class="ageall"></i>		쿼바디스 (1951)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="022030" data-url="https://img.dtryx.com/poster/2023/03/DEFECB4C-1585-4AF5-B892-FB91B41A569D.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1954-01-01" title="라프소디 (1954)">		<i class="age12"></i>		라프소디 (1954)	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="021993" data-url="https://img.dtryx.com/poster/2023/03/9D23C853-68BC-4D38-92E5-23BFD3BDDC68.small.jpg" data-rat="00" data-trt="0.00" data-rdt="2023-03-29" title="블루 서멀, 같은 하늘을 보고 싶어">		<i class="ageall"></i>		블루 서멀, 같은 하늘을 보고 싶어	</button></li><li>	<button type="button" class="btnMvItem disabled" disabled="" data-cd="019642" data-url="https://img.dtryx.com/poster/2022/04/71E3E899-C0F7-4EB0-BE1A-75FD3FB04226.small.jpg" data-rat="12" data-trt="0.00" data-rdt="1974-04-25" title="소돔과 고모라 (1962)">		<i class="age12"></i>		소돔과 고모라 (1962)	</button></li></ul>
											</div><div class="scroll-element scroll-x scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 88px;"></div></div></div><div class="scroll-element scroll-y scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 34px; top: 0px;"></div></div></div></div>
										</div>
									</div>
									<!-- // 영화리스트 -->

									<!-- 날짜 -->
									<div class="date-list">
										<div class="list">
											<div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div class="scrollbar-inner scroll-content" style="height: 630px; margin-bottom: 0px; margin-right: 0px; max-height: none;">
												<ul id="playSdtList"><li><strong class="year">2023.4</strong></li><li class="check"><button type="button" class="btnDay" data-dt="2023-04-05">수 <strong>5</strong></button></li><li class=""><button type="button" class="btnDay" data-dt="2023-04-06">목 <strong>6</strong></button></li><li class=""><button type="button" class="btnDay" data-dt="2023-04-07">금 <strong>7</strong></button></li><li class="saturday"><button type="button" class="btnDay" data-dt="2023-04-08">토 <strong>8</strong></button></li><li class="sunday"><button type="button" class="btnDay" data-dt="2023-04-09">일 <strong>9</strong></button></li></ul>
											</div><div class="scroll-element scroll-x"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 100px;"></div></div></div><div class="scroll-element scroll-y"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 100px; top: 0px;"></div></div></div></div>
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
							<h3><span class="cnNm">1939시네마</span> <span class="scNm"></span></h3>
							<p><span class="plDt">2023-04-05(수)</span> <span class="tiNm"></span></p>
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
		
		$(".btnMovieTab").on("click", function(e) {
			e.preventDefault();
			$(".btnMovieTab").removeClass("active");
			$(this).addClass("active");
			$("#Sort").val($(this).data("tab"));
			
			getMainList();
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
		
		$("#btnNext").on("click", function(e) {
			var req = [];
			if ($("#MovieCd").val() == "all") {
				req.push("영화");
			}
			if ($("#CinemaCd").val() == "all") {
				req.push("극장");
			}
			if ($("#PlaySDT").val() == "all") {
				req.push("관람일");
			}
			if ($("#ScreenCd").val() == "") {
				req.push("관람시간");
			}

			if (req.length > 0) {
				var msg = req.join(", ") + "(를)을 선택해 주세요.";
				mAlert(msg);
				return;
			}

			$.ajax({
				type: "GET",
				url: "/reserve/movie_rating_popup.do",
				async: false,
				data: $("#dataForm").serialize(),
				cache: false,
				dataType: "json",
				success: function(res) {
					$("#viewGrade .tit").html('<i class="age' + getRating(res.MovieRate) + '"></i> ' + getRatingTxt(res.MovieRate));
					$("#viewGrade .txt").html(res.MainMsgNm + res.SubMsgNm1 + res.SubMsgNm2 + res.SubMsgNm3);
					$("#viewGrade").modal();
				}
			});
		});
		$(".btnNext").on("click", function(e) {
			$("#dataForm").submit();
		});
	});

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
	function getMainList() {
		$.ajax({
			type: "GET",
			url: "/reserve/main_list.do",
			async: false,
			data: $("#dataForm").serialize(),
			cache: false,
			dataType: 'json',
			success: function(res) {
				movieList = res.MovieList;
				movieNormalList = res.MovieNormalList;
				movieIndieArtList = res.MovieIndieArtList;
				senderBrandList = res.SenderBrandList;
				cinemaList = res.CinemaList;
				areaList = res.AreaList;
				playSdtList = res.PlaySdtList;
			}
		});
	}
	
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
	
	// 날짜 리스트 작성
	function makePlaydtList() {
	    var now = new Date();
		var tdy = $.datepicker.formatDate('yy-mm-dd', now);

		var rst = '';
		var sym = '';
		for (var i = 0; i < playSdtList.length; i++) {
			var obj = playSdtList[i];
			
			if (i == 0 || sym != obj.PlaySDT.substr(0, 7)){
				rst += '<li><strong class="year">' + $.datepicker.formatDate('yy.m', new Date(obj.PlaySDT)) + '</strong></li>';
				sym = obj.PlaySDT.substr(0, 7);
			}
			
			var fdt = $.datepicker.formatDate('D', new Date(obj.PlaySDT)); 
			var clr = "";
			if (fdt == "토")
				clr = "saturday";
			else if (fdt == "일")
				clr = "sunday";
			rst += '<li class="' + clr + (obj.PlaySDT == $("#PlaySDT").val() ? ' check' : '') + '"><button type="button" class="btnDay' + (obj.HiddenYn == "N" ? '"' : ' disabled" disabled') + ' data-dt="' + obj.PlaySDT + '">' + fdt + ' <strong>' + $.datepicker.formatDate('d', new Date(obj.PlaySDT)) + '</strong></button></li>';
		}

		$("#playSdtList").html(rst);

		$("#playSdtList .btnDay").not(":disabled").eq(0).focus();
		$("#playSdtList li.check .btnDay").focus();
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
	</script><div id="footer">
			<div class="inner">
				<div class="head">
					<div class="logo"><img src="/resources/img/common/foot_logo.png" alt="디트릭스"></div>
					<div class="etc">
						<a href="https://intro.dtryx.com/kor/index.html" target="_blank">디트릭스 회사소개 </a>
						<a href="javascript:goLink('/info/service.do');">이용약관</a>
						<a href="javascript:goLink('/info/privacy.do');"><b>개인정보처리방침</b></a>
					</div>
				</div>
			<div class="body">
				<div class="btn-box">
					<a href="#" class="btn-flip">디트릭스 사업자정보</a>
				</div>
				<div class="addr">
					(13524) 경기도 성남시 분당구 판교역로 192 번길 16<br class="mobile">( 삼평동 , 판교타워 701 호<br>
					대표자명 : 오문준<span class="pc"> |</span> <br class="mobile">사업자등록번호 : 257 88 00735 <span class="pc"> |</span> <br class="mobile"> 사업자명 : 주 디트릭스 <span class="pc"> |</span> <br class="mobile">통신판매업신고번호 : 2020 성남분당 B 0685<br>
					www.dtryx.com <span class="pc"> |</span> <br class="mobile">031 8017 8332
				</div>
				<div class="copy">COPYRIGHT © Dtryx Inc. All rights reserved</div>
			</div>
		</div>
		<!-- // footer -->
		
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

</div><div style="left: -1000px; overflow: scroll; position: absolute; top: -1000px; border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"><div style="border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"></div></div></body>
</html>