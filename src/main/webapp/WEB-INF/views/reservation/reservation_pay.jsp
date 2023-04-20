<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
	<script type="text/javascript" src="resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.number.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.cookie.min.js"></script>
	<script type="text/javascript" src="resources/js/scrollbar.js"></script>
	<script type="text/javascript" src="resources/js/swiper.min.js"></script>
	<script type="text/javascript" src="resources/js/front.js?v=1680673895731"></script>
	<script type="text/javascript" src="resources/js/app.js?v=1680673895731"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rsv/rsv.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rsv/rsv2.css">
	<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
<meta charset="UTF-8">
<title>좌석 선택</title>
<link rel="shortcut icon" href="resources/images/rsv/res_test.png" type="image/x-icon" />
</head>

<body>
	<jsp:include page="../nav.jsp"></jsp:include>	

<div class="content">
			<div class="inner2">
	<form id="dataForm" method="post">
<!-- 				<input type="hidden" id="cgid" name="cgid" value="FE8EF4D2-F22D-4802-A39A-D58F23A29C1E"> -->
<!-- 				<input type="hidden" id="ssid" name="ssid" value="91A730C3-E453-4B5C-9CC4-A08E11451665"> -->
<!-- 				<input type="hidden" id="tokn" name="tokn" value="41524707"> -->
<!-- 				<input type="hidden" id="hold" name="hold" value="scinema+000005+4468fe4b-3a89-43a8-a5ef-e76039398f67"> -->

				<input type="hidden" id="BrandCd" name="BrandCd" value="scinema">
				<input type="hidden" id="CinemaCd" name="CinemaCd" value="000005">
				<input type="hidden" id="MovieCd" name="MovieCd" value="021864">
				<input type="hidden" id="PlaySDT" name="PlaySDT" value="2023-04-23">
				<input type="hidden" id="Sort" name="Sort" value="boxoffice">
				<input type="hidden" id="ScreenCd" name="ScreenCd" value="01">
				<input type="hidden" id="ShowSeq" name="ShowSeq" value="3">
				
				<input type="hidden" id="TabBrandCd" name="TabBrandCd" value="dtryx">
				<input type="hidden" id="TabRegionCd" name="TabRegionCd" value="all">
				<input type="hidden" id="TabMovieType" name="TabMovieType" value="all">
				
				<input type="hidden" id="MovieKindCd" name="MovieKindCd" value="001">
				<input type="hidden" id="MovieNm" name="MovieNm" value="스즈메의 문단속">
				<input type="hidden" id="CinemaNm" name="CinemaNm" value="강화작은영화관">
				<input type="hidden" id="PlayTimeType" name="PlayTimeType" value="normal">
				<input type="hidden" id="PlayTimeTypeNm" name="PlayTimeTypeNm" value="일반">
				<input type="hidden" id="StartTime" name="StartTime" value="13:50">
				<input type="hidden" id="EndTime" name="EndTime" value="15:52">
				<input type="hidden" id="ScreenNm" name="ScreenNm" value="1관">
				<input type="hidden" id="ScreenType" name="ScreenType" value="normal">
				<input type="hidden" id="ScreenTypeNm" name="ScreenTypeNm" value="일반">
				<input type="hidden" id="ScreeningInfo" name="ScreeningInfo" value="2D(자막)">
					
				<input type="hidden" id="HidMovieUrl" name="HidMovieUrl" value="https://img.dtryx.com/poster/2023/02/7363A612-6112-4B4A-8150-345A88C2E9FA.small.jpg">
				<input type="hidden" id="HidRating" name="HidRating" value="12">
				<input type="hidden" id="HidTicketRate" name="HidTicketRate" value="13.32">
				<input type="hidden" id="HidReleaseDT" name="HidReleaseDT" value="2023-03-08">
				
				<input type="hidden" id="TicketCd" name="TicketCd" value="000060|000060" data-org="000060|000060">
				<input type="hidden" id="TicketNm" name="TicketNm" value="성인|성인">
				<input type="hidden" id="TicketAmt" name="TicketAmt" value="6000.0000|6000.0000" data-org="6000.0000|6000.0000">
				<input type="hidden" id="TicketTotalCnt" name="TicketTotalCnt" value="2">
				<input type="hidden" id="TicketTotalAmt" name="TicketTotalAmt" value="12000">
				<input type="hidden" id="TicketInfo" name="TicketInfo" value="성인 2명">
						
				<input type="hidden" id="SeatInfo" name="SeatInfo" value="C3, C4">
				<input type="hidden" id="TicketList" name="TicketList" value="normal,normal,,000060,6000,C,3;normal,normal,,000060,6000,C,4;">
				<input type="hidden" id="SeatType" name="SeatType" value="normal">
				<input type="hidden" id="SeatZone" name="SeatZone" value="">
				<input type="hidden" id="SeatString" name="SeatString" value="C;3;1;/C;4;1;/">
				<input type="hidden" id="SelectedSeatList" name="SelectedSeatList" value="26,C,3;27,C,3;">
				
				<input type="hidden" id="TicketCategory" name="TicketCategory" value="adult|adult">
				<input type="hidden" id="AddTicketAmt" name="AddTicketAmt" value="0|0">
				<input type="hidden" id="TotalTicketAmt" name="TotalTicketAmt" value="6000|6000">
				<input type="hidden" id="TicketPropertyNo" name="TicketPropertyNo" value="72|72">
						
				<input type="hidden" id="PayInfoNat" name="PayInfoNat" value="티켓금액(2매)|*|12,000원|**|성인 (6,000원 x 2명)|*|12,000원" data-org="티켓금액(2매)|*|12,000원|**|성인 (6,000원 x 2명)|*|12,000원">
				<input type="hidden" id="HoldGuID" name="HoldGuID" value="4468fe4b-3a89-43a8-a5ef-e76039398f67">

				<input type="hidden" id="TotalAmt" name="TotalAmt" value="12000" data-org="12000">
				<input type="hidden" id="PaymentCd" name="PaymentCd" value="kakaopay">
				
				<input type="hidden" id="CatID" name="CatID" value="">
				<input type="hidden" id="SimplePayOrdNo" name="SimplePayOrdNo" value="">
				<input type="hidden" id="SimplePayBizNo" name="SimplePayBizNo" value="">
				<input type="hidden" id="TaxCd" name="TaxCd" value="">
				<input type="hidden" id="Installment" name="Installment" value="">
				
				<input type="hidden" id="NaverPayId" name="NaverPayId" value="">
				
				<input type="hidden" id="KSPayId" name="KSPayId" value="">
				
				<input type="hidden" id="KakaoPayCID" name="KakaoPayCID" value="">
				<input type="hidden" id="KakaoPayTID" name="KakaoPayTID" value="">
				<input type="hidden" id="KakaoPgToken" name="KakaoPgToken" value="">
				
				<input type="hidden" id="PaycoPccode" name="PaycoPccode" value="">
				<input type="hidden" id="PaycoPcnumb" name="PaycoPcnumb" value="">
				<input type="hidden" id="PaycoReqtr" name="PaycoReqtr" value="">
				<input type="hidden" id="PaycoRpytr" name="PaycoRpytr" value="">
				<input type="hidden" id="PaycoSellerKey" name="PaycoSellerKey" value="">
				<input type="hidden" id="PaycoWtrno" name="PaycoWtrno" value="">
				
				<input type="hidden" id="KeyinKindCd" name="KeyinKindCd" value="">
				<input type="hidden" id="KeyinKindSubCd" name="KeyinKindSubCd" value="">
				<input type="hidden" id="KeyinPaymentCd" name="KeyinPaymentCd" value="">
				<input type="hidden" id="KeyinPaymentSubCd" name="KeyinPaymentSubCd" value="">
				<input type="hidden" id="KeyinCardNo" name="KeyinCardNo" value="">
				<input type="hidden" id="KeyinValidThru" name="KeyinValidThru" value="">
				<input type="hidden" id="KeyinPassword" name="KeyinPassword" value="">
				<input type="hidden" id="KeyinIdentityNo" name="KeyinIdentityNo" value="">
				<input type="hidden" id="KeyinGuId" name="KeyinGuId" value="">
		
				
			
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
										<a href="reservation" class="btn-refresh">예매다시하기</a>
									</div>
								</div>
								<!-- // head -->

								<div class="body">
									<!-- 예매정보 -->
									<div class="pay-box1">
										<div class="head-pay">
											<h3>예매정보</h3>
										</div>
										<div class="cont">
											<div class="pay-mv">
												<div class="img"><img src="https://img.dtryx.com/poster/2023/02/7363A612-6112-4B4A-8150-345A88C2E9FA.small.jpg"><i class="age age12"></i></div>
												<h4>스즈메의 문단속</h4>
												<div class="info">
													<p>2023-03-08 개봉</p>
												</div>
												<dl>
													<dt>장르</dt>
													<dd>장르장르</dd>
												</dl>
												<dl>
													<dt>극장</dt>
													<dd>강화작은영화관</dd>
												</dl>
												<dl>
													<dt>날짜</dt>
													<dd>2023-04-23(일)</dd>
												</dl>
												<dl>
													<dt>인원</dt>
													<dd>성인 2명</dd>
												</dl>
												<dl>
													<dt>상영관</dt>
													<dd>1관</dd>
												</dl>
												<dl>
													<dt>시간</dt>
													<dd>13:50~15:52</dd>
												</dl>
												<dl>
													<dt>좌석</dt>
													<dd>C3, C4</dd>
												</dl>
											</div>
										</div>
									</div>
									<!-- // 예매정보 -->
									
									<!-- 할인적용 -->
									<div class="pay-box2">
										
											
										<div class="head-pay">
												<h3>결제수단 선택</h3>
											</div>
											<div class="cont">
												<div class="pay-kinds">
													<ul>
														<li><button type="button" class="btn-payks active" data-cd="card" data-msg=""><img src="https://img.dtryx.com/payment/2022/01/cardkeyin.small.png">카드(번호입력)</button></li>
														<li><button type="button" class="btn-payks" data-cd="cardlink" data-msg=""><img src="https://img.dtryx.com/payment/2022/01/cardlink1.small.png">카드(간편결제)</button></li>
														<li><button type="button" class="btn-payks" data-cd="naverpay" data-msg=""><img src="https://img.dtryx.com/payment/2022/01/npay1.small.png">네이버페이</button></li>
														<li><button type="button" class="btn-payks" data-cd="kakaopay" data-msg=""><img src="https://img.dtryx.com/payment/2022/01/kakaopay.small.png">카카오페이</button></li>
														<li><button type="button" class="btn-payks" data-cd="payco" data-msg=""><img src="https://img.dtryx.com/payment/2022/01/payco.small.png">페이코</button></li>
														</ul>
												</div>
												<div class="desc1">
													<ul>
<!-- 														<li>디트릭스 영화예매의 신용카드 결제서비스는 ㈜케이에스넷에서 제공합니다.</li> -->
														<li>네이버페이 이용시 안내 사항
															<ol>
																<li>주문 변경 시 카드사 혜택 및 할부 적용 여부는 해당 카드사 정책에 따라 변경될 수 있습니다.</li>
																<li>네이버페이는 네이버ID로 별도 앱 설치 없이 신용카드 또는 은행계좌 정보를 등록하여 네이버페이 비밀번호로 결제할 수 있는 간편결제 서비스입니다.</li>
																<li>결제 가능한 신용카드:신한,삼성,현대, BC,국민,하나,롯데,NH농협,씨티,카카오뱅크</li>
																<li>결제 가능한은행<br>KB국민,IBK기업,NH농협,신한,씨티,SC제일,우리,카카오뱅크,케이뱅크,토스뱅크,하나,경남,광주,대구,부산,KDB산업,수협,우체국,전북,제주,새마을금고,신협,SBI저축,저축,미래에셋,삼성,신한금융투자,SK,유안타,유진투자,한국투자</li>
																<li>네이버페이 카드 간편결제는 네이버페이에서 제공하는 카드사 별 무이자,청구할인 혜택을 받을 수 있습니다.</li>
															</ol>
														</li>
													</ul>
													<br>
													<strong class="black f14">이용/취소/환불규정</strong><br>
													<strong>온라인 영화 예매 후 취소가능시간 내에 취소하시면 전액 환불됩니다.</strong><br>
		
													1. 신용카드 : 결제일과 취소일이 다를 경우 영업일 기준 3~5일 소요됩니다.<br>
													2. 네이버페이 : 네이버페이 포인트를 사용하신 경우 포인트로 재적립 됩니다. <br>
													카드결제를 한 경우 카드사 정책에 따라 승인 취소가 진행되며, 3일 이후 매입 취소 시 영업일 기준 3~10일 소요됩니다.<br>
													3. 카카오페이 : 카카오페이머니를 사용하신 경우 카카오페이머니 잔액으로 원복 됩니다. <br>
													카드결제를 한 경우 카드사 정책에 따라 승인취소가 진행되며, 3일 이후 매입 취소 시 영업일 기준 3~10일 소요됩니다.<br>
													4. 페이코 : PAYCO 포인트를 사용하신 경우 포인트로 재적립 됩니다. <br>
													카드결제를 한 경우 카드사 정책에 따라 승인취소가 진행되며, 3일 이후 매입 취소 시 영업일 기준 3~10일 소요됩니다.<br><br>
													
													<span class="red2">※ 예매내용을 변경할 때는, 취소가능시간 내에 취소하고 다시 예매해 주시기 바랍니다.<br>
													※ 예매내역은 12개월 이내 예매하신 내역만 제공됩니다.</span>
												</div>
											</div>
										</div>
									<!-- // 할인적용 -->
									
									<!-- 최종결제 -->
									<div class="pay-box3">
										<div class="head-pay">
											<h3>최종결제</h3>
										</div>
										<div class="cont">
											<dl class="price1">
												<dt>티켓금액(2매)</dt>
												<dd>12,000원</dd>
											</dl>
											<dl class="price2">
															<dt>성인 (6,000원 x 2명)</dt>
															<dd>12,000원</dd>
														</dl>
													<div class="discounts" style="display: none;">
													<hr class="hr3">
		
													<dl class="price1">
														<dt>할인금액</dt>
														<dd class="red discountAmt">-0원</dd>
													</dl>
													
													<dl class="price2 moviediscountcoupon" style="display: none;">
															<dt>할인쿠폰</dt>
															<dd class="red">-0원</dd>
														</dl>
													</div>
											<hr class="hr3">
											
											<dl class="price3">
												<dt>총 결제금액</dt>
												<dd class="totalAmt">12,000원</dd>
											</dl>
											<div class="btn-box">
												<button type="button" class="prev btn-prev" onclick="history.back();">이전</button>
												<button type="button" class="next btnPayment">결제</button>
											</div>
										</div>
									</div>
									<!-- // 최종결제 -->
								</div>
								<!-- // body -->
							</div>
						</div>
					</div>
				</div>
				<!-- // PC 전용 -->
			</form>
			
			<div class="bg-layer" style="display: none;"></div>
			<div class="reservation-pc" id="modalDiscount" style="display: none;"></div>
	</div>
		</div>
			
			<div class="bg-layer" style="display: none;"></div>
			<div class="reservation-pc" id="modalDiscount" style="display: none;"></div>
	<form id="payForm" name="payForm" method="post" target="popup_pay"></form>
	
	<div class="fav-wrap" style="display: none">
		</div>

	<script type="text/javascript">
	var ticketList = [];
	var ctypeList = [];
	$(function () {
		
		$(".btn-prev").on("click", function(e) {
			e.preventDefault();
			$("#TicketCd").val($("#TicketCd").data("org"));
			$("#TicketAmt").val($("#TicketAmt").data("org"));
			$("#PayInfoNat").val($("#PayInfoNat").data("org"));
			
			$("#dataForm").attr("action", "seat");
			$("#dataForm").submit();
		});

		
		
		// 결제수단 css
		$(".btn-payks").on("click", function(e) {
			if ($(this).data("msg") != "") {
				mAlert($(this).data("msg"));
			}
			
			$(".btn-payks").removeClass("active");
			$(this).addClass("active");
			$("#PaymentCd").val($(this).data("cd"));
		});
		
		//결제하기
		$(".btnPayment").on("click", function() {
			if ($("#TotalAmt").val() == 0) {
				$(".fav-wrap").show();
				payResult();
				return;
			}
			
			var cd = $("#PaymentCd").val();
			if (cd == "") {
				mAlert("결제수단을 선택해주세요.");
				return;
			}
			
		});
		
		
		
		
	});
	
	


</script>
<jsp:include page="../footer.jsp"></jsp:include>	
</body>
</html>
