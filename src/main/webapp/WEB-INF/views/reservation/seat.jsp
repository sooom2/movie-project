<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="../css/rsv.css">
	<link rel="stylesheet" href="resources/css/rsv.css">
	<link href="resources/css/common.css" rel="stylesheet">
	<link href="resources/css/inc.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.number.min.js"></script>
	<script type="text/javascript" src="/resources/js/jquery.cookie.min.js"></script>
	<script type="text/javascript" src="/resources/js/scrollbar.js"></script>
	<script type="text/javascript" src="/resources/js/swiper.min.js"></script>
	<script type="text/javascript" src="/resources/js/front.js?v=1680673895731"></script>
	<script type="text/javascript" src="/resources/js/app.js?v=1680673895731"></script>
<meta charset="UTF-8">
<title>좌석 선택</title>
<link rel="shortcut icon" href="resources/images/rsv/res_test.png" type="image/x-icon" />
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
	
	<div id="m-header" class="mobile">
		<div class="inner">
			<h2>영화예매</h2>
			<a href="#" class="btn-prev"></a>
			<div class="m-menu">
				<a href="javascript:goLink('/reserve/movie.do');" class="btn-refresh">초기화</a>
			</div>
		</div>
	</div>

	<div class="content">
			<div class="inner2">
	<form id="dataForm" method="post" action="/reserve/payment.do">
				<input type="hidden" id="cgid" name="cgid" value="FE8EF4D2-F22D-4802-A39A-D58F23A29C1E">
				<input type="hidden" id="ssid" name="ssid" value="34E69C51-18C4-4605-A9F3-BEA9129FCF05">
				<input type="hidden" id="tokn" name="tokn" value="47387814">
				<input type="hidden" id="hold" name="hold" value="">

				<input type="hidden" id="BrandCd" name="BrandCd" value="scinema">
				<input type="hidden" id="CinemaCd" name="CinemaCd" value="000093">
				<input type="hidden" id="MovieCd" name="MovieCd" value="021864">
				<input type="hidden" id="PlaySDT" name="PlaySDT" value="2023-04-05">
				<input type="hidden" id="Sort" name="Sort" value="boxoffice">
				<input type="hidden" id="ScreenCd" name="ScreenCd" value="02">
				<input type="hidden" id="ShowSeq" name="ShowSeq" value="3">
				
				<input type="hidden" id="TabBrandCd" name="TabBrandCd" value="dtryx">
				<input type="hidden" id="TabRegionCd" name="TabRegionCd" value="all">
				<input type="hidden" id="TabMovieType" name="TabMovieType" value="all">
				
				<input type="hidden" id="MovieKindCd" name="MovieKindCd" value="001">
				<input type="hidden" id="MovieNm" name="MovieNm" value="스즈메의 문단속">
				<input type="hidden" id="CinemaNm" name="CinemaNm" value="1939시네마">
				<input type="hidden" id="PlayTimeType" name="PlayTimeType" value="normal">
				<input type="hidden" id="PlayTimeTypeNm" name="PlayTimeTypeNm" value="일반">
				<input type="hidden" id="StartTime" name="StartTime" value="14:30">
				<input type="hidden" id="EndTime" name="EndTime" value="16:32">
				<input type="hidden" id="ScreenNm" name="ScreenNm" value="2관">
				<input type="hidden" id="ScreenType" name="ScreenType" value="normal">
				<input type="hidden" id="ScreenTypeNm" name="ScreenTypeNm" value="일반">
				<input type="hidden" id="ScreeningInfo" name="ScreeningInfo" value="2D(자막)">
					
				<input type="hidden" id="HidMovieUrl" name="HidMovieUrl" value="https://img.dtryx.com/poster/2023/02/7363A612-6112-4B4A-8150-345A88C2E9FA.small.jpg">
				<input type="hidden" id="HidRating" name="HidRating" value="12">
				<input type="hidden" id="HidTicketRate" name="HidTicketRate" value="15.55">
				<input type="hidden" id="HidReleaseDT" name="HidReleaseDT" value="2023-03-08">
				
				<input type="hidden" id="TicketCd" name="TicketCd" value="">
				<input type="hidden" id="TicketNm" name="TicketNm" value="">
				<input type="hidden" id="TicketAmt" name="TicketAmt" value="">
				<input type="hidden" id="TicketTotalCnt" name="TicketTotalCnt" value="">
				<input type="hidden" id="TicketTotalAmt" name="TicketTotalAmt" value="">
				<input type="hidden" id="TicketInfo" name="TicketInfo" value="">
				
				<input type="hidden" id="SeatInfo" name="SeatInfo" value="">
				<input type="hidden" id="TicketList" name="TicketList" value="">
				<input type="hidden" id="SeatType" name="SeatType" value="">
				<input type="hidden" id="SeatZone" name="SeatZone" value="">
				<input type="hidden" id="SeatString" name="SeatString" value="">
				<input type="hidden" id="SelectedSeatList" name="SelectedSeatList" value="">
				
				<input type="hidden" id="TicketCategory" name="TicketCategory" value="">
				<input type="hidden" id="AddTicketAmt" name="AddTicketAmt" value="">
				<input type="hidden" id="TotalTicketAmt" name="TotalTicketAmt" value="">
				<input type="hidden" id="TicketPropertyNo" name="TicketPropertyNo" value="">
				
				<input type="hidden" id="PayInfoNat" name="PayInfoNat" value="">
				<input type="hidden" id="HoldGuID" name="HoldGuID" value="">
								
				
				<!-- PC 전용 -->
				<div class="reservation-pc single page-type">
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
									<div class="r-choice">
										<dl>
											<dt>인원선택</dt>
											<dd>최대 8까지 선택 가능</dd>
										</dl>
										<div class="scroll-choice">
											<div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div class="scrollbar-inner scroll-content scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 480px;">
												<div id="priceList"><div class="t1">성인</div><div class="list"><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="0" data-no="0" checked="">	<span>0</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="1" data-no="0">	<span>1</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="2" data-no="0">	<span>2</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="3" data-no="0">	<span>3</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="4" data-no="0">	<span>4</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="5" data-no="0">	<span>5</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="6" data-no="0">	<span>6</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="7" data-no="0">	<span>7</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001294" value="8" data-no="0">	<span>8</span></label></div><div class="t1">어르신</div><div class="list"><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="0" data-no="1" checked="">	<span>0</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="1" data-no="1">	<span>1</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="2" data-no="1">	<span>2</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="3" data-no="1">	<span>3</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="4" data-no="1">	<span>4</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="5" data-no="1">	<span>5</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="6" data-no="1">	<span>6</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="7" data-no="1">	<span>7</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001297" value="8" data-no="1">	<span>8</span></label></div><div class="t1">청소년</div><div class="list"><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="0" data-no="2" checked="">	<span>0</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="1" data-no="2">	<span>1</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="2" data-no="2">	<span>2</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="3" data-no="2">	<span>3</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="4" data-no="2">	<span>4</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="5" data-no="2">	<span>5</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="6" data-no="2">	<span>6</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="7" data-no="2">	<span>7</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001287" value="8" data-no="2">	<span>8</span></label></div><div class="t1">군인</div><div class="list"><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="0" data-no="3" checked="">	<span>0</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="1" data-no="3">	<span>1</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="2" data-no="3">	<span>2</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="3" data-no="3">	<span>3</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="4" data-no="3">	<span>4</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="5" data-no="3">	<span>5</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="6" data-no="3">	<span>6</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="7" data-no="3">	<span>7</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001288" value="8" data-no="3">	<span>8</span></label></div><div class="t1">장애인</div><div class="list"><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="0" data-no="4" checked="">	<span>0</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="1" data-no="4">	<span>1</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="2" data-no="4">	<span>2</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="3" data-no="4">	<span>3</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="4" data-no="4">	<span>4</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="5" data-no="4">	<span>5</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="6" data-no="4">	<span>6</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="7" data-no="4">	<span>7</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001290" value="8" data-no="4">	<span>8</span></label></div><div class="t1">기초생활수급자</div><div class="list"><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="0" data-no="5" checked="">	<span>0</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="1" data-no="5">	<span>1</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="2" data-no="5">	<span>2</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="3" data-no="5">	<span>3</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="4" data-no="5">	<span>4</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="5" data-no="5">	<span>5</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="6" data-no="5">	<span>6</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="7" data-no="5">	<span>7</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001291" value="8" data-no="5">	<span>8</span></label></div><div class="t1">경기도우수봉사자</div><div class="list"><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="0" data-no="6" checked="">	<span>0</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="1" data-no="6">	<span>1</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="2" data-no="6">	<span>2</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="3" data-no="6">	<span>3</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="4" data-no="6">	<span>4</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="5" data-no="6">	<span>5</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="6" data-no="6">	<span>6</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="7" data-no="6">	<span>7</span></label><label class="">	<input type="radio" class="c-radio rdoTicket" name="T001293" value="8" data-no="6">	<span>8</span></label></div></div>
											</div><div class="scroll-element scroll-x scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 88px;"></div></div></div><div class="scroll-element scroll-y scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 421px; top: 0px;"></div></div></div></div>
										</div>
										<div class="btn-area">
											<button type="button" class="btn-prev">영화 선택</button>
										</div>
									</div>
									<div class="r-select">
										<div class="r-wrap">
											<div class="tit1">좌석선택</div>
											<div class="tit2">SCREEN</div>
											<div class="scroll-wrapper scrollbar-inner" style="position: relative;"><div class="scrollbar-inner scroll-content scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px; max-height: 270px;">
												<div class="r-box">
													<!-- // 좌석 start -->
													<div class="seatBox">
														<div id="ssSeat" class="seatWrap">
															<div class="seatSelectWrapper">
																<div class="seatSelectContainer">
																	<div class="seatMap" id="seatMap" style="width: 576px; height: 324px;"><div class="child" style="top:36px;left:0px">A</div><div class="child" style="top:72px;left:0px">B</div><div class="child" style="top:108px;left:0px">C</div><div class="child" style="top:144px;left:0px">D</div><div class="child" style="top:180px;left:0px">E</div><div class="child" style="top:216px;left:0px">F</div><div class="child" style="top:252px;left:0px">G</div><button type="button" data-id="0" class="seat available" style="top:36px;left:144px;background-color:#C8C8C8">A1</button><button type="button" data-id="1" class="seat available" style="top:36px;left:180px;background-color:#C8C8C8">A2</button><button type="button" data-id="2" class="seat available" style="top:36px;left:216px;background-color:#C8C8C8">A3</button><button type="button" data-id="3" class="seat available" style="top:36px;left:252px;background-color:#C8C8C8">A4</button><button type="button" data-id="4" class="seat available" style="top:36px;left:288px;background-color:#C8C8C8">A5</button><button type="button" data-id="5" class="seat available" style="top:36px;left:324px;background-color:#C8C8C8">A6</button><button type="button" data-id="6" class="seat available" style="top:36px;left:360px;background-color:#C8C8C8">A7</button><button type="button" data-id="7" class="seat available" style="top:72px;left:144px;background-color:#C8C8C8">B1</button><button type="button" data-id="8" class="seat available" style="top:72px;left:180px;background-color:#C8C8C8">B2</button><button type="button" data-id="9" class="seat available" style="top:72px;left:216px;background-color:#C8C8C8">B3</button><button type="button" data-id="10" class="seat available" style="top:72px;left:252px;background-color:#C8C8C8">B4</button><button type="button" data-id="11" class="seat available" style="top:72px;left:288px;background-color:#C8C8C8">B5</button><button type="button" data-id="12" class="seat available" style="top:72px;left:324px;background-color:#C8C8C8">B6</button><button type="button" data-id="13" class="seat available" style="top:72px;left:360px;background-color:#C8C8C8">B7</button><button type="button" data-id="14" class="seat available" style="top:108px;left:144px;background-color:#C8C8C8">C1</button><button type="button" data-id="15" class="seat available" style="top:108px;left:180px;background-color:#C8C8C8">C2</button><button type="button" data-id="16" class="seat available" style="top:108px;left:216px;background-color:#C8C8C8">C3</button><button type="button" data-id="17" class="seat available" style="top:108px;left:252px;background-color:#C8C8C8">C4</button><button type="button" data-id="18" class="seat available" style="top:108px;left:288px;background-color:#C8C8C8">C5</button><button type="button" data-id="19" class="seat available" style="top:108px;left:324px;background-color:#C8C8C8">C6</button><button type="button" data-id="20" class="seat available" style="top:108px;left:360px;background-color:#C8C8C8">C7</button><button type="button" data-id="21" class="seat available" style="top:144px;left:144px;background-color:#C8C8C8">D1</button><button type="button" data-id="22" class="seat available" style="top:144px;left:180px;background-color:#C8C8C8">D2</button><button type="button" data-id="23" class="seat available" style="top:144px;left:216px;background-color:#C8C8C8">D3</button><button type="button" data-id="24" class="seat available" style="top:144px;left:252px;background-color:#C8C8C8">D4</button><button type="button" data-id="25" class="seat available" style="top:144px;left:288px;background-color:#C8C8C8">D5</button><button type="button" data-id="26" class="seat available" style="top:144px;left:324px;background-color:#C8C8C8">D6</button><button type="button" data-id="27" class="seat available" style="top:144px;left:360px;background-color:#C8C8C8">D7</button><button type="button" data-id="28" class="seat available" style="top:180px;left:144px;background-color:#C8C8C8">E1</button><button type="button" data-id="29" class="seat available" style="top:180px;left:180px;background-color:#C8C8C8">E2</button><button type="button" data-id="30" class="seat available" style="top:180px;left:216px;background-color:#C8C8C8">E3</button><button type="button" data-id="31" class="seat available" style="top:180px;left:252px;background-color:#C8C8C8">E4</button><button type="button" data-id="32" class="seat available" style="top:180px;left:288px;background-color:#C8C8C8">E5</button><button type="button" data-id="33" class="seat available" style="top:180px;left:324px;background-color:#C8C8C8">E6</button><button type="button" data-id="34" class="seat available" style="top:180px;left:360px;background-color:#C8C8C8">E7</button><button type="button" data-id="35" class="seat available" style="top:216px;left:144px;background-color:#C8C8C8">F1</button><button type="button" data-id="36" class="seat available" style="top:216px;left:180px;background-color:#C8C8C8">F2</button><button type="button" data-id="37" class="seat available" style="top:216px;left:216px;background-color:#C8C8C8">F3</button><button type="button" data-id="38" class="seat available" style="top:216px;left:252px;background-color:#C8C8C8">F4</button><button type="button" data-id="39" class="seat available" style="top:216px;left:288px;background-color:#C8C8C8">F5</button><button type="button" data-id="40" class="seat available" style="top:216px;left:324px;background-color:#C8C8C8">F6</button><button type="button" data-id="41" class="seat available" style="top:216px;left:360px;background-color:#C8C8C8">F7</button><button type="button" data-id="42" class="seat available" style="top:252px;left:144px;background-color:#C8C8C8">G1</button><button type="button" data-id="43" class="seat available" style="top:252px;left:180px;background-color:#C8C8C8">G2</button><button type="button" data-id="44" class="seat soldout" style="top:252px;left:216px;background-color:#3D3F51" disabled="">G3</button><button type="button" data-id="45" class="seat soldout" style="top:252px;left:252px;background-color:#3D3F51" disabled="">G4</button><button type="button" data-id="46" class="seat available" style="top:252px;left:288px;background-color:#C8C8C8">G5</button></div>
																</div>
															</div>
														</div>
													</div>
													<!-- 좌석 end // -->
												</div>
											</div><div class="scroll-element scroll-x scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="width: 88px;"></div></div></div><div class="scroll-element scroll-y scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="height: 225px; top: 0px;"></div></div></div></div>
	
											<div id="seatLegendList" class="labels"><span><em class="available" style="background:#C8C8C8;outline-color:#"></em>일반석</span><span><em class="nowselecting" style="background:#CC73E1;outline-color:#"></em>현재선택</span><span><em class="selected" style="background:#605DA0;outline-color:#"></em>판매중</span><span><em class="soldout" style="background:#3D3F51;outline-color:#"></em>판매완료</span></div>
										</div>
										<div class="choice-list">
											<strong>선택 좌석</strong>
											<ul id="choiceList">
												<li>-</li>
												<li>-</li>
												<li>-</li>
												<li>-</li>
												<li>-</li>
												<li>-</li>
												<li>-</li>
												<li>-</li>
											</ul>
										</div>
										<div class="bottom">
											<strong class="totalAmt">총 0원</strong>
											<button type="button" class="btn-pay btnNext">결제하기</button>
										</div>
	
										<div class="before">
											<p>관람하실 인원을 선택해 주세요.</p>
										</div>
									</div>
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
	<script type="text/javascript">
 	var priceList = [];
	var seatInfo = [];
	var seatList = [];
	var seatExitList = [];
	var seatCaptionList = [];
	var seatLegendList = [];
 	
	$(function() {
		getSeatAllList();
		makeTicketList();
		makeSeatAllList();
		
		if ($("#TicketInfo").val() != "")
			setTicket();
		
		$(".btn-prev").on("click", function(e) {
			e.preventDefault();
			$("#dataForm").attr("action", "/reserve/movie.do");
			$("#dataForm").submit();
		});
		
		$(".rdoTicket").on("change", function(e) {
			var n = $(this).data("no");
			
			if (fnParseInt($(this).val()) > 0) {
				var total = 0;
				$('.rdoTicket:checked').each(function(){
					total += fnParseInt($(this).val());
				});
				
				if (total > 8){
					mAlert("인원선택은 총 8명까지 선택할 수 있습니다.");
					$('.rdoTicket[data-no="' + n + '"]').prop("checked", false);
					$('.rdoTicket[data-no="' + n + '"]').eq(0).prop("checked", true);
					return;
				}
				
				if (total > fnParseInt(seatInfo[0].RemainSeatCnt)){
					mAlert("선택 가능한 좌석 수를 초과 하였습니다.<br>인원을 다시 선택해 주십시요.");
					$('.rdoTicket[data-no="' + n + '"]').prop("checked", false);
					$('.rdoTicket[data-no="' + n + '"]').eq(0).prop("checked", true);
					return;
				}
				
				if (priceList[n].PopUpMsgYn.toUpperCase() == "Y") {
					mAlert(priceList[n].PopUpMsg);
				}
			}
			
			setTicket();
		});
		

		$(".btnNext").on("click", function(e) {
			if (fnParseInt($("#TicketTotalCnt").val()) == 0) {
				mAlert("관람인원을 선택해 주세요.");
				return;
			}
			
			// 선택인원과 좌석선택인원 동일한지 체크
			if ($("#TicketTotalCnt").val() != selectedSeatCnt) {
				mAlert("관람인원과 선택 좌석 수가 동일하지 않습니다.");
				return;
			}
			
			var ticketCd = $("#TicketCd").val().split('|');
			var ticketNm = $("#TicketNm").val().split('|');
			var totalTicketAmt = $("#TotalTicketAmt").val().split('|');
			
			var payInfo = [];
			var tmpCd = "", tmpNm = "", tmpAmt = "", ticketCnt = 0;
			payInfo.push("티켓금액(" + $("#TicketTotalCnt").val() + "매)|*|" + $.number($("#TicketTotalAmt").val()) + "원");
			for (var i = 0; i < ticketCd.length; i++){
				if (tmpCd == ticketCd[i] && tmpAmt == totalTicketAmt[i]) {
					ticketCnt++;
				} else {
					if (tmpCd != "")
						payInfo.push(tmpNm + " (" + $.number(tmpAmt) + "원 x " + ticketCnt + "명)|*|" + $.number(tmpAmt * ticketCnt) + "원");
					tmpCd = ticketCd[i];
					tmpNm = ticketNm[i];
					tmpAmt = totalTicketAmt[i];
					ticketCnt = 1;
				}
			}
			payInfo.push(tmpNm + " (" + $.number(tmpAmt) + "원 x " + ticketCnt + "명)|*|" + $.number(tmpAmt * ticketCnt) + "원");
			$("#PayInfoNat").val(payInfo.join("|**|"));
			
			// 좌석 선점처리
			$.ajax({
				type: "GET",
				url: "/reserve/seat_selected.do",
				async: false,
				data: $("#dataForm").serialize(),
				cache: false,
				dataType: 'json',
				success: function(res) {
					if (res.RetCode == "success") {
						$("#HoldGuID").val(res.HoldGuID);
						$("#hold").val(res.HoldData);
						sessionStorage.setItem("hold", res.HoldData);
						
						$("#dataForm").submit();
					} else {
						mAlert(res.RetMsg);
					}
				}
			});
		});
	});
	
	// 좌석 및 요금 리스트
	function getSeatAllList() {
		$.ajax({
			type: "GET",
			url: "/reserve/seat_all_list.do",
			async: false,
			data: $("#dataForm").serialize(),
			cache: false,
			dataType: 'json',
			success: function(res) {
				priceList = res.TicketList;
				seatInfo = res.SeatInfo;
				seatList = res.SeatList;
				seatExitList = res.SeatExitList;
				seatCaptionList = res.SeatCaptionList;
				seatLegendList = res.SeatLegendList;
			}
		});
	}
	
	// 요금 리스트 작성
	function makeTicketList(){
		var ticketInfo = $("#TicketInfo").val().split("|");
		var ticketNm = [];
		var ticketCnt = [];
		for (var i = 0; i < ticketInfo.length; i++) {
			ticketNm.push(ticketInfo[i].substr(0, ticketInfo[i].length - 3));
			ticketCnt.push(fnParseInt(ticketInfo[i].substr(-2)));
		}

		var rst = "";
		for (var i = 0; i < priceList.length; i++) {
			var obj = priceList[i];
			rst += '<div class="t1">' + obj.TicketNm + '</div>';
			rst += '<div class="list">';
			
			var checked = 0;
		   	for (var k = 0; k < ticketNm.length; k++) {
				if (obj.TicketNm == ticketNm[k]){
					checked = fnParseInt(ticketCnt[k]);
					break;
				}
			}
			
			for (var j = 0; j <= 8; j++) {
			   	var disabled = "";
			   	if (j > 0 && obj.FixCnt > 0 && j != obj.FixCnt) {
					disabled = " disabled";
			   	}
		   	
			   	rst += '<label class="' + disabled + '">';
			   	rst += '	<input type="radio" class="c-radio rdoTicket" name="T' + obj.TicketCd + '" value="' + j + '" data-no="' + i + '"' + disabled + (checked == j ? ' checked' : '') + '>';
			   	rst += '	<span>' + j + '</span>';
			   	rst += '</label>';
			}

			rst += '</div>';
		}
		
		$("#priceList").html(rst);
	}
	
	// 인원 선택
	function setTicket() {
		var ticketCd = [];
		var ticketNm = [];
		var ticketAmt = [];
		
		var ticketTotalCnt = 0;
		var ticketTotalAmt = 0;
		var ticketInfo = [];
		
		$(".rdoTicket:checked").each(function(){
			var n = $(this).data("no");
			var cnt = $(this).val();
			if (cnt > 0) {
				for (var i = 0; i < cnt; i++) {
					ticketCd.push(priceList[n].TicketCd);
					ticketNm.push(priceList[n].TicketNm);
					ticketAmt.push(priceList[n].TicketAmt);
				}
				ticketTotalCnt += fnParseInt(cnt);
				ticketTotalAmt += (priceList[n].TicketAmt * cnt);
				ticketInfo.push(priceList[n].TicketNm + " " + cnt + "명");
			}
		});
		
		if ($("#TicketTotalCnt").val() != ticketTotalCnt) {
			$('#SeatInfo').val("");
			$('#TicketList').val("");
			
			$('#SeatType').val("");
			$('#SeatZone').val("");
			$('#SeatString').val("");
			$('#SelectedSeatList').val("");

			$('#choiceList li').removeClass("on").text("-");
			$(".totalAmt").html('총 0원');
		}
		
		if (ticketInfo.length > 0) {
			$("#TicketCd").val(ticketCd.join("|"));
			$("#TicketNm").val(ticketNm.join("|"));
			$("#TicketAmt").val(ticketAmt.join("|"));
			
			$("#TicketTotalCnt").val(ticketTotalCnt);
			$("#TicketTotalAmt").val(ticketTotalAmt);
			$("#TicketInfo").val(ticketInfo.join("|"));
			
			$('.before').fadeOut(300);
		} else {
			$("#TicketCd").val("");
			$("#TicketNm").val("");
			$("#TicketAmt").val("");
			
			$("#TicketTotalCnt").val("0");
			$("#TicketTotalAmt").val("0");
			$("#TicketInfo").val("");
			
			$('.before').fadeIn(300);
		}
		
		selectedSeatList = [];
		selectedSeatCnt = 0;
		
		$("#seatMap").empty();
		$("#seatLegendList").empty();

		getSeatAllList();
		makeSeatAllList();
		makeSelectedSeatList();

		onHandleSalesSeat();
		
		setSeat();
		resetSeat();
	}

	// 좌석 작성
	function makeSeatAllList() {
		$("#seatMap").css({
			width: (fnParseInt(seatInfo[0].ScreenColCnt) + 2) * 36,
			height: (fnParseInt(seatInfo[0].ScreenRowCnt) + 2) * 36,
		});
		
		seatCaptionList.sort(function (a, b) {
			return a.Caption < b.Caption ? -1 : a.Caption > b.Caption ? 1 : 0;
		});
		
		var captionHtml = "";
		$.each(seatCaptionList, function (idx, row) {
			captionHtml += '<div class="child" style="top:' + row.LocationRow * 36 + 'px;left:' + row.LocationCol * 36 + 'px">' + row.Caption + '</div>';
		});
		$("#seatMap").append(captionHtml);
		
		var seatHtml = "";
		$.each(seatList, function (idx, row) {
			seatHtml +=
				'<button type="button" data-id="' + idx + '" class="seat ' + row.SeatStatus + '"' + 
				' style="top:' + row.LocationRow * 36 + 'px;left:' + row.LocationCol * 36 + 'px;background-color:#' + row.ColorHEX + '"' + 
				(row.SeatStatus == 'dis' || row.SeatStatus == 'soldout' ? ' disabled' : '') +
				'>' + row.SeatGroup + row.SeatNo + '</button>';
			//좌석정보 세팅처리
			seatList[idx].Idx = idx;
			seatList[idx].IsSelectable = row.SeatStatus.toUpperCase() == 'AVAILABLE' ? true : false;
		});
		$("#seatMap").append(seatHtml);
		
		// 상영관 출구 목록
		var exitHtml = "";
		$.each(seatExitList, function (idx, row) {
			exitHtml += '<div class="exit ' + row.Direction + '" style="top:' + row.LocationRow * 36 + 'px;left:' + row.LocationCol * 36 + 'px">출구</div>';
		});
		$("#seatMap").append(exitHtml);
		
		// 범례 정보
		var seatLegendHtml = "";
		$.each(seatLegendList, function (idx, row) {
			seatLegendHtml += '<span><em class="' + row.SeatStatus + '" style="background:#' + row.ColorHEX + ';outline-color:#' + row.OutLineColorHEX + '"></em>' + row.LegendNm + '</span>';
		});
		$("#seatLegendList").html(seatLegendHtml);
	}
	
	function makeSelectedSeatList(){
		var seatSelectedList = $("#SelectedSeatList").val();
		
		if (seatSelectedList != "") {
			var selectedList = seatSelectedList.split(";");

			var togetherSeatGroup = "";
			var togetherSeatNo = "";
			for (var i = selectedList.length - 1; i >= 0; i--) {
				if (selectedList[i] != "") {
					var selectedSeat = selectedList[i].split(",");
					if (togetherSeatGroup != selectedSeat[1] || togetherSeatNo != selectedSeat[2])
						$('.seat[data-id="' + selectedSeat[0] + '"]').click();
					
					togetherSeatGroup = selectedSeat[1];
					togetherSeatNo = selectedSeat[2];
				}
			}
		}
	}

	// 선택좌석세팅
	function setSeat() {
		$('#SeatInfo').val("");
		$('#TicketList').val("");
		
		$('#SeatType').val("");
		$('#SeatZone').val("");
		$('#SeatString').val("");
		$('#SelectedSeatList').val("");

		$('#choiceList li').removeClass("on").text("-");
		$(".totalAmt").html('총 0원');
		
		selectedSeatList.sort(function (a, b) {
			return a.AgentSeatGroup+a.AgentSeatNo < b.AgentSeatGroup+b.AgentSeatNo ? -1 : (a.AgentSeatGroup+a.AgentSeatNo > b.AgentSeatGroup+b.AgentSeatNo ? 1 : 0);
		});
		
		if (selectedSeatList.length > 0) {
			var ticketCd = $("#TicketCd").val().split('|');
			var ticketNm = $("#TicketNm").val().split('|');
			var ticketAmt = $("#TicketAmt").val().split('|');
			
			var seatInfo = [];
			var ticketList = "";
			var seatType = "";
			var seatZone = "";
			var seatString = "";
			var seatSelectedList = "";
			for (var i = 0; i < selectedSeatList.length; i++) {
				var seat = selectedSeatList[i];
				seatInfo.push(seat.SeatGroup + seat.SeatNo);
				ticketList += $("#ScreenType").val() + "," + seat.SeatType + "," + seat.SeatZone + "," + ticketCd[i] + "," + fnParseInt(ticketAmt[i]) + "," + encodeURIComponent(seat.SeatGroup) + "," + seat.SeatNo + ";";
								
				seatType = seat.SeatType;
				seatZone = seat.SeatZone;
				seatString += seat.SeatGroup + ";" + seat.SeatNo + ";1;/";
				seatSelectedList += seat.Idx + "," + seat.TogetherSeatGroup + "," + seat.TogetherSeatNo + ";";
				
				$('#choiceList li').eq(i).addClass("on").text(seat.SeatGroup + seat.SeatNo);
			}
			$('#SeatInfo').val(seatInfo.join(", "));
			$('#TicketList').val(ticketList);
			$('#SeatType').val(seatType);
			$('#SeatZone').val(seatZone);
			$('#SeatString').val(seatString);
			$('#SelectedSeatList').val(seatSelectedList);
			
			// 추가 요금 산정
			var ticketCategory = [];
			var addTicketAmt = [];
			var totalTicketAmt = [];
			var ticketPropertyNo = [];
			var ticketTotalAmt = 0;
			
			$.ajax({
				type: "GET",
				url: "/reserve/ticket_amount_add_get_list.do",
				async: false,
				data: $("#dataForm").serialize(),
				cache: false,
				dataType: 'json',
				success: function(res) {
					if (res.RetCode == "success") {
						$.each(res.Recordset, function (i, obj) {
							ticketCategory.push(obj.TicketCategory);
							addTicketAmt.push(fnParseInt(obj.AddTicketAmt));
							totalTicketAmt.push(fnParseInt(obj.TotalTicketAmt));
							ticketPropertyNo.push(obj.TicketPropertyNo);
							ticketTotalAmt += fnParseInt(obj.TotalTicketAmt);
						});
						
						$("#TicketCategory").val(ticketCategory.join("|"));
						$("#AddTicketAmt").val(addTicketAmt.join("|"));
						$("#TotalTicketAmt").val(totalTicketAmt.join("|"));
						$("#TicketPropertyNo").val(ticketPropertyNo.join("|"));
						$("#TicketTotalAmt").val(ticketTotalAmt);
					
						$(".totalAmt").html('총 ' + $.number(ticketTotalAmt) + '원');
					} else {
						mAlert(res.RetMsg);
					}
				}
			});
		}
	}
	// 좌석상태 갱신
	function resetSeat() {
		$.each(seatList, function (idx, row) {
			if (row.IsSelectable == false) {
				$('.seat[data-id="' + idx + '"]').addClass('soldout');	
			} else {
				$('.seat[data-id="' + idx + '"]').removeClass('soldout');	
			}
		});
	}


	var selectedSeatCnt = 0;          /*선택좌석총개수*/
	var selectedSeatType = "";        /*선택좌석타입정보*/
	var selectedSeatList = [];
	
	// 좌석 마우스오버처리함수
	$(document).on("mouseover", ".seat", function(e) {
		var id = $(this).data("id");
		var selectableSeatCnt = fnParseInt($("#TicketTotalCnt").val()) - fnParseInt(selectedSeatCnt);

		if (selectableSeatCnt > 0) {
			var seat = seatList[id];

			if (seat.SeatStatus.toUpperCase() == 'AVAILABLE' && seat.IsSelectable == true) {
				// 장애인석여부
				if (seat.SeatType.toUpperCase() == 'DISABLED') {
					$('.seat[data-id="' + id + '"]').css('background-color', '#FE223C');
				} else {
					// 커플석,3인소파,4인소파
					if (fnParseInt(seat.DefaultUnitCnt) > 1) {
						var ableList = seatList.filter(function (s) {
							return s.AgentSeatGroup == seat.AgentSeatGroup && s.AgentSeatNo == seat.AgentSeatNo;
						});

						for (var i = 0; i < ableList.length; i++) {
							var item = ableList[i];
							$('.seat[data-id="' + id + '"]').css('background-color', '#FE223C');
							$('.seat[data-id="' + item.Idx + '"]').css('background-color', '#FE223C');
						}
					} else {
						// 선택선수가 2명이상일경우
						if (selectableSeatCnt > 1) {
							var seatIdx = 1,
								togetherIdx = -1,
								areaCnt = fnParseInt(seat.AreaCnt),
								ableList = seatList.filter(function (s) {
									return s.Area == seat.Area && s.AgentSeatGroup == seat.AgentSeatGroup && s.AreaCnt == seat.AreaCnt;
								});

							for (var i = 0; i < ableList.length; i++) {
								var item = ableList[i];

								if (item.Idx == seat.Idx) {
									// 첫번째 좌석여부체크
									if (seatIdx == 1) {
										if (areaCnt > 1) {
											if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
												togetherIdx = fnParseInt(ableList[i + 1].Idx);
											}
										}
									} else {
										// 마지막좌석 여부 체크
										if (i == ableList.length - 1) {
											if (areaCnt > 1) {
												if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i - 1].Idx);
												}
											}
										} else {
											// 좌석 선택 좌->우 선택기준
											if (seatIdx % 2 == 1) {
												if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i + 1].Idx);
												} else {
													if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
														togetherIdx = fnParseInt(ableList[i - 1].Idx);
													}
												}
											}
											// 좌석 선택 우->좌 선택기준
											else {
												if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i - 1].Idx);
												} else {
													if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
														togetherIdx = fnParseInt(ableList[i + 1].Idx);
													}
												}
											}
										}
									}
								} else {
									if (item.IsSelectable) {
										seatIdx++;
									} else {
										areaCnt = areaCnt - seatIdx;
										seatIdx = 1;
									}
								}
							}

							$('.seat[data-id="' + id + '"]').css('background-color', '#FE223C');
							$('.seat[data-id="' + togetherIdx + '"]').css('background-color', '#FE223C');
						} else {
							$('.seat[data-id="' + id + '"]').css('background-color', '#FE223C');
						}
					}
				}
			}
		}
	});

	// 좌석 마우스아웃처리함수
	$(document).on("mouseout", ".seat", function(e) {
		var id = $(this).data("id");
		var selectableSeatCnt = fnParseInt($("#TicketTotalCnt").val()) - fnParseInt(selectedSeatCnt);
		
		if (selectableSeatCnt > 0) {
			var seat = seatList[id];

			if (seat.SeatStatus.toUpperCase() == 'AVAILABLE' && seat.IsSelectable == true) {
				var legendItem = seatLegendList.filter(function (seatlegend) {
					return seatlegend.SeatType == seat.SeatType;
				})[0];
				
				// 장애인석여부
				if (seat.SeatType.toUpperCase() == 'DISABLED') {
					$('.seat[data-id="' + id + '"]').css('background-color', '#' + legendItem.ColorHEX);
				} else {
					// 커플석,3인소파,4인소파
					if (fnParseInt(seat.DefaultUnitCnt) > 1) {
						var ableList = seatList.filter(function (s) {
							return s.AgentSeatGroup == seat.AgentSeatGroup && s.AgentSeatNo == seat.AgentSeatNo;
						});

						for (var i = 0; i < ableList.length; i++) {
							var item = ableList[i];
							$('.seat[data-id="' + item.Idx + '"]').css('background-color', '#' + legendItem.ColorHEX);
						}
					} else {
						// 선택선수가 2명이상일경우
						if (selectableSeatCnt > 1) {
							var seatIdx = 1,
								togetherIdx = -1,
								areaCnt = fnParseInt(seat.AreaCnt),
								ableList = seatList.filter(function (s) {
									return s.Area == seat.Area && s.AgentSeatGroup == seat.AgentSeatGroup && s.AreaCnt == seat.AreaCnt;
								});

							for (var i = 0; i < ableList.length; i++) {
								var item = ableList[i];

								if (item.Idx == seat.Idx) {
									// 첫번째 좌석여부체크
									if (seatIdx == 1) {
										if (areaCnt > 1) {
											if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
												togetherIdx = fnParseInt(ableList[i + 1].Idx);
											}
										}
									} else {
										// 마지막좌석 여부 체크
										if (i == ableList.length - 1) {
											if (areaCnt > 1) {
												if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i - 1].Idx);
												}
											}
										} else {
											// 좌석 선택 좌->우 선택기준
											if (seatIdx % 2 == 1) {
												if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i + 1].Idx);
												} else {
													if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
														togetherIdx = fnParseInt(ableList[i - 1].Idx);
													}
												}
											}
											// 좌석 선택 우->좌 선택기준
											else {
												if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i - 1].Idx);
												} else {
													if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
														togetherIdx = fnParseInt(ableList[i + 1].Idx);
													}
												}
											}
										}
									}
								} else {
									if (item.IsSelectable) {
										seatIdx++;
									} else {
										areaCnt = areaCnt - seatIdx;
										seatIdx = 1;
									}
								}
							}

							$('.seat[data-id="' + id + '"]').css('background-color', '#' + legendItem.ColorHEX);
							$('.seat[data-id="' + togetherIdx + '"]').css('background-color', '#' + legendItem.ColorHEX);
						} else {
							$('.seat[data-id="' + id + '"]').css('background-color', '#' + legendItem.ColorHEX);
						}
					}
				}
			}
		}
	});
	
	/*좌석 선택처리함수*/
	$(document).on("click", ".seat", function(e) {
		var id = $(this).data("id");
		var seat = seatList[id];

		// 선택좌석이 있는지여부 체크
		if (seat.SeatStatus == 'SELECTED') {
			// 선택좌석체크
			var seledtedList = selectedSeatList.filter(function (s) {
				return s.AgentSeatGroup == seat.AgentSeatGroup && s.AgentSeatNo == seat.AgentSeatNo;
			});

			if (seledtedList.length > 0) {
				var togetherList = selectedSeatList.filter(function (s) {
					return s.TogetherSeatGroup == seledtedList[0].TogetherSeatGroup && s.TogetherSeatNo == seledtedList[0].TogetherSeatNo;
				});

				if (togetherList.length > 0) {
					for (var i = 0; i < togetherList.length; i++) {
						var together = togetherList[i];
						seatList[fnParseInt(together.Idx)].SeatStatus = 'AVAILABLE';
						$('.seat[data-id="' + together.Idx + '"]').css('background-color', '#' + together.ColorHEX);

						var idx = selectedSeatList.indexOf(together);
						if (idx != -1) {
							selectedSeatList.splice(idx, 1);
						}
					}

					selectedSeatCnt = selectedSeatList.length;

					// 좌석재설정
					onHandleSalesSeat();
				}
			}
		} else {
			// 선택좌석정보조회
			var togetherSeatList = onSeatTogetherCheck(id);

			var initIdx = 0;

			if (togetherSeatList.length > 0) {
				for (var i = 0; i < togetherSeatList.length; i++) {
					var idx = fnParseInt(togetherSeatList[i].Idx);

					if (i == 0) {
						initIdx = idx;
					}

					seatList[idx].SeatStatus = 'SELECTED';
					selectedSeatList.push({
						Idx: seatList[idx].Idx,
						LocationCol: seatList[idx].LocationCol,
						LocationRow: seatList[idx].LocationRow,
						SeatGroup: seatList[idx].SeatGroup,
						SeatNo: seatList[idx].SeatNo,
						Area: seatList[idx].Area,
						AreaCnt: seatList[idx].AreaCnt,
						SeatStatus: seatList[idx].SeatStatus,
						SeatType: seatList[idx].SeatType,
						SeatZone: seatList[idx].SeatZone,
						SeatSaleType: seatList[idx].SeatSaleType,
						LogicSeatGroup: seatList[idx].LogicSeatGroup,
						LogicSeatNo: seatList[idx].LogicSeatNo,
						AgentSeatGroup: seatList[idx].AgentSeatGroup,
						AgentSeatNo: seatList[idx].AgentSeatNo,
						UnitType: seatList[idx].UnitType,
						DefaultUnitCnt: seatList[idx].DefaultUnitCnt,
						UnitCntIncrease: seatList[idx].UnitCntIncrease,
						SeatColor: seatList[idx].SeatColor,
						Mark: seatList[idx].Mark,
						ColorR: seatList[idx].ColorR,
						ColorG: seatList[idx].ColorG,
						ColorB: seatList[idx].ColorB,
						ColorHEX: seatList[idx].ColorHEX,
						OutLineColorR: seatList[idx].OutLineColorR,
						OutLineColorG: seatList[idx].OutLineColorG,
						OutLineColorB: seatList[idx].OutLineColorB,
						OutLineColorHEX: seatList[idx].OutLineColorHEX,
						TogetherSeatGroup: seatList[initIdx].SeatGroup,
						TogetherSeatNo: seatList[initIdx].SeatNo,
					});
					//$('.seat[data-id="' + idx + '"]').addClass("selected");
					$('.seat[data-id="' + idx + '"]').css('background-color', '#32C8BD');
				}
				// 데이터처리
				selectedSeatCnt = selectedSeatList.length;
				// 좌석재설정
				onHandleSalesSeat();
			}
		}
		
		$('.seat[data-id="' + id + '"]').mouseout();
		
		setSeat();
		resetSeat();
	});

	// 선택좌석정보 조회함수
	function onSeatTogetherCheck(id) {
		var togetherSeatList = [];
		var selectableSeatCnt = fnParseInt($("#TicketTotalCnt").val()) - fnParseInt(selectedSeatCnt);

		if (selectableSeatCnt > 0) {
			var seat = seatList[id];

			if (seat.SeatStatus.toUpperCase() == 'AVAILABLE' && seat.IsSelectable == true) {
				// 장애인석여부
				if (seat.SeatType.toUpperCase() == 'DISABLED') {
					togetherSeatList.push({
						SeatGroup: seat.SeatGroup,
						SeatNo: seat.SeatNo,
						Idx: seat.Idx
					});
				} else {
					// 커플석,3인소파,4인소파
					if (fnParseInt(seat.DefaultUnitCnt) > 1) {
						var ableList = seatList.filter(function (s) {
							return s.AgentSeatGroup == seat.AgentSeatGroup && s.AgentSeatNo == seat.AgentSeatNo;
						});

						for (var i = 0; i < ableList.length; i++) {
							var item = ableList[i];
							togetherSeatList.push({
								SeatGroup: item.SeatGroup,
								SeatNo: item.SeatNo,
								Idx: item.Idx
							});
						}
					} else {
						// 선택선수가 2명이상일경우
						if (selectableSeatCnt > 1) {
							var seatIdx = 1,
								togetherIdx = -1,
								areaCnt = fnParseInt(seat.AreaCnt),
								ableList = seatList.filter(function (s) {
									return s.Area == seat.Area && s.AgentSeatGroup == seat.AgentSeatGroup && s.AreaCnt == seat.AreaCnt;
								});

							for (var i = 0; i < ableList.length; i++) {
								var item = ableList[i];

								if (item.Idx == seat.Idx) {
									// 첫번째 좌석여부체크
									if (seatIdx == 1) {
										//if(i != (ableList.length-1)){
										if (areaCnt > 1) {
											if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
												togetherIdx = fnParseInt(ableList[i + 1].Idx);
											}
										}
									} else {
										// 마지막좌석 여부 체크
										if (i == ableList.length - 1) {
											if (areaCnt > 1) {
												if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i - 1].Idx);
												}
											}
										} else {
											if (seatIdx % 2 == 1) { // 좌석 선택 좌->우 선택기준
												if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i + 1].Idx);
												} else {
													if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
														togetherIdx = fnParseInt(ableList[i - 1].Idx);
													}
												}
											} else { // 좌석 선택 우->좌 선택기준
												if (ableList[i - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i - 1].IsSelectable == true) {
													togetherIdx = fnParseInt(ableList[i - 1].Idx);
												} else {
													if (ableList[i + 1].SeatStatus.toUpperCase() == 'AVAILABLE' && ableList[i + 1].IsSelectable == true) {
														togetherIdx = fnParseInt(ableList[i + 1].Idx);
													}
												}
											}
										}
									}
								} else {
									if (item.IsSelectable) {
										seatIdx++;
									} else {
										areaCnt = areaCnt - seatIdx;
										seatIdx = 1;
									}
								}
							}

							togetherSeatList.push({
								SeatGroup: seat.SeatGroup,
								SeatNo: seat.SeatNo,
								Idx: seat.Idx
							});

							if (togetherIdx > -1) {
								togetherSeatList.push({
									SeatGroup: seatList[togetherIdx].SeatGroup,
									SeatNo: seatList[togetherIdx].SeatNo,
									Idx: seatList[togetherIdx].Idx
								});
							}
						} else {
							togetherSeatList.push({
								SeatGroup: seat.SeatGroup,
								SeatNo: seat.SeatNo,
								Idx: seat.Idx
							});
						}
					}
				}
			}
		}

		return togetherSeatList;
	}

	// 좌석알고리즘함수
	function onHandleSalesSeat() {
		// 선택좌석 선택좌석타입 : 동일좌석타입만 선택가능하게함. 공백일 경우 선택가능
		selectableSeatCnt = fnParseInt($("#TicketTotalCnt").val()) - fnParseInt(selectedSeatCnt);

		// 선택한 좌석 타입 체크
		selectedSeatType = '';
		if (selectedSeatList.length > 0) {
			selectedSeatType = selectedSeatList[0].SeatType;
		}

		// 좌석타입이 장애인석일경우 일반석으로 변환처리
		if (selectedSeatType.toUpperCase() == 'DISABLED') {
			selectedSeatType = 'normal';
		}

		// 선택가능 좌석이 없을 경우 선택불가처리
		if (selectableSeatCnt == 0) {
			var ableList = seatList.filter(function (s) {
				return s.SeatStatus.toUpperCase() == 'AVAILABLE';
			});

			for (var i = 0; i < ableList.length; i++) {
				var idx = fnParseInt(ableList[i].Idx);
				seatList[idx].IsSelectable = false; //true이면 활성화처리
			}
		} else {
			// 판매 가능한 좌석 초기화처리
			var ableList = seatList.filter(function (s) {
				return s.SeatStatus.toUpperCase() == 'AVAILABLE';
			});

			for (var i = 0; i < ableList.length; i++) {
				var idx = fnParseInt(ableList[i].Idx);

				// 이미선택된 좌석과 동일 좌석타입여부 체크
				if (selectedSeatType != '' && selectedSeatType != seatList[idx].SeatType) {
					// 장애인석이고 이미 선택타입이 일반일경우 선택가능하게 처리
					if (selectedSeatType.toUpperCase() == 'NORMAL' && seatList[idx].SeatType.toUpperCase() == 'DISABLED') {
						seatList[idx].IsSelectable = true;
					} else {
						seatList[idx].IsSelectable = false;
					}
				} else {
					seatList[idx].IsSelectable = true;
				}

			}

			/*1. 판매불가처리
				1) 판매된 좌석
				2) 잔여좌석보다 DefaultUnitCnt가 큰 좌석
				3) 선택가능 좌석수 체크 (seatPaxCountCheck)
			*/
			var unableList = seatList.filter(function (s) {
				return s.SeatStatus.toUpperCase() != 'AVAILABLE';
			});

			for (var i = 0; i < unableList.length; i++) {
				var idx = fnParseInt(unableList[i].Idx);
				// 이미선택된 좌석은 제외
				if (unableList[i].SeatStatus.toUpperCase() != 'SELECTED') {
					seatList[idx].IsSelectable = false;
				}
			}

			// 판매 가능한 좌석이고 선택가능한 좌석수보다 좌석기본수가 큰좌석정보 조회
			var ableList = seatList.filter(function (s) {
				return s.SeatStatus.toUpperCase() == 'AVAILABLE' && selectableSeatCnt < fnParseInt(s.DefaultUnitCnt);
			});

			for (var i = 0; i < ableList.length; i++) {
				var idx = fnParseInt(ableList[i].Idx);
				// 이미선택된 좌석은 제외
				if (seatList[idx].SeatStatus.toUpperCase() != 'SELECTED') {
					seatList[idx].IsSelectable = false;
				}
			}

			// 1인,장애인석에 대한 정보
			var aloneList = seatList.filter(function (s) {
				return fnParseInt(s.DefaultUnitCnt) < 2;
			});

			for (var i = 0; i < aloneList.length; i++) {
				var seatItem = aloneList[i];
				var seatGroupIdx = fnParseInt(seatItem.AreaCnt) + i;
				var areaCnt = fnParseInt(seatItem.AreaCnt);
				var seatIdx = 1;

				for (var j = i; j < seatGroupIdx; j++) {
					if (j == aloneList.length) {
						break;
					}

					var item = aloneList[j];
					var idx = fnParseInt(item.Idx);
					var isSelectable = false;

					// 선택잔여석이 2개이상이면, 모두 선택가능하게 적용
					if (selectableSeatCnt > 1) {
						
					} else {
						// 선택 가능한 좌석 알고리즘 적용
						if (item.SeatStatus.toUpperCase() == 'AVAILABLE') {
							// 장애인석일경우 사석방지 안들어감
							if (fnParseInt(item.UnitCntIncrease) == 1) {
								// 이미선택된 좌석과 동일 좌석타입여부 체크(장애인석은 일반석일경우에만 선택가능하게 조정)
								if (selectedSeatType == '' || selectedSeatType.toUpperCase() == 'NORMAL') {
									isSelectable = true;
									seatIdx++;
								} else {
									isSelectable = false;
									areaCnt = areaCnt - seatIdx;
									seatIdx = 1;
								}
								seatList[idx].IsSelectable = isSelectable;
							} else {
								// 이미 선택된 좌석과 동일 좌석타입여부 체크
								if (selectedSeatType != '' && selectedSeatType != item.SeatType) {
									areaCnt = areaCnt - seatIdx;
									seatIdx = 1;
									seatList[idx].IsSelectable = false;
								} else {
									if (areaCnt <= 2) {
										isSelectable = true;
										seatIdx++;
										seatList[idx].IsSelectable = isSelectable;
									} else {
										// 첫번째 좌석일경우 선택가능
										if (seatIdx == 1) {
											isSelectable = true;
											seatIdx++;
											seatList[idx].IsSelectable = isSelectable;
										} else {
											// 마지막좌석일경우
											if (seatIdx == areaCnt) {
												isSelectable = true;
												seatIdx++;
												seatList[idx].IsSelectable = isSelectable;
											} else {
												if (seatIdx + 1 != areaCnt) {
													if (seatIdx % 2 == 1) {
														isSelectable = true;
													} else {
														if (seatIdx > 2) {
															isSelectable = true;
														} else {
															// 해당 좌석 옆 선택좌석일 경우 선택 활성화 처리
															if (seatIdx + 1 < areaCnt && selectableSeatCnt == 1 && aloneList[j + 1] != undefined && aloneList[j + 1].SeatStatus.toUpperCase() == 'SELECTED') {
																isSelectable = true;
															} else {
																isSelectable = false;
															}
														}
													}

													seatIdx++;
													seatList[idx].IsSelectable = isSelectable;
												} else {
													isSelectable = false;
													seatIdx++;
													seatList[idx].IsSelectable = isSelectable;
												}
											}
										}
									}
								}
							}
						} else {
							// 선택불가 좌석처리부분
							if (item.SeatStatus.toUpperCase() != 'SELECTED') {
								seatList[idx].IsSelectable = isSelectable;
							}

							areaCnt = areaCnt - seatIdx;
							/*
								1. 우->왼 사석방지처리
								2. 뒤에 잔여좌석이 있고(판매불가좌석이 AreaCnt중간에 있을경우)
								3. 판매가능좌석이 2개이상일경우
								4. 판매불가 좌석 앞좌석이 판매가능일경우
								5. 장애인석제외
							*/
							if (areaCnt > 0 && seatIdx > 1 && seatList[idx - 1].IsSelectable != undefined && seatList[idx - 1].IsSelectable == true && seatList[idx - 1].SeatStatus.toUpperCase() == 'AVAILABLE' && item.SeatType.toUpperCase() != 'DISABLED') {
								if (idx > 1 && seatList[idx - 2].IsSelectable != undefined && seatList[idx - 2].IsSelectable == true && seatList[idx - 2].SeatStatus.toUpperCase() == 'AVAILABLE') {
									seatList[idx - 2].IsSelectable = false;
								}
							}

							seatIdx = 1;
						}
					}
				}

				i = seatGroupIdx - 1;
			}
			/*
				************************************************************
				** 사석방지 알고리즘
				************************************************************
				1. 선택 좌석이 동일할 좌석타입인지 여부 체크
				2. 선택 가능 잔여석이 DefaultUnitCnt 보다 큰좌석
				3. 선택 가능 잔여석이 2보다 작은지 여부 체크
				4.
			*/
		}
	}
	</script>
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

</div><div style="left: -1000px; overflow: scroll; position: absolute; top: -1000px; border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"><div style="border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"></div></div></body>
</html>