<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<link href="resources/css/sub.css" rel="stylesheet">
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript">

</script>

</head>
<body>
	<jsp:include page="../nav.jsp" />
	<div id="container">
	<div id="contents" class="">
		
		<!-- inner-wrap -->
		<div class="inner-wrap">

			<h2 class="tit">스토어</h2>
			<!--  탭메뉴 -->
			<div class="tab-list fixed">
				<ul class="tab">
					<li class="current" data-tab="tab1"><a href="#">기프트카드</a></li>
					<li data-tab="tab2"><a href="#">팝콘/음료/굿즈</a></li>
					<li data-tab="tab3"><a href="#">포인트몰</a></li>
				</ul>
			</div>
			<div id="tab1" class="tabcontent current">
				<div class="store-list mt30">
					<ul class="list">
						<li class="func"><a href="store_detail" title="메가박스 기프트카드 2만원권 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label new">N E W</div>
								<div class="img">
									<img
										id="img"
										src="resources/images/store/gift2.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">000 기프트카드 2만원권</p>
										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">000 기프트카드 2만원권</p>
									</div>
									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>20,000</em> <span>원</span>
										</p>
										<p class="ea"></p>
									</div>
								</div>
						</a></li>
						<li class=""><a href="store_detail"
							title="00 기프트카드 3만원권 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label new">NEW</div>
								<div class="img">
									<img
										src="resources/images/store/gift3.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name" >00 기프트카드 3만원권</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">00 기프트카드 3만원권</p>
									</div>

									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>30,000</em> <span>원</span>
										</p>
										<p class="ea"></p>
									</div>
								</div>
							</a>
						</li>
						<li class=""><a href="store_detail"
							title="00 기프트카드 5만원권 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label new">NEW</div>
								<div class="img">
									<img
										src="resources/images/store/gift5.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">00 기프트카드 5만원권</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">00기프트카드 5만원권</p>
									</div>

									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>50,000</em> <span>원</span>
										</p>
										<p class="ea"></p>
									</div>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
			<div id="tab2" class="tabcontent">
				<!-- store-list -->
				<div class="store-list mt30">
					<ul class="list">
						<li class=""><a href=""
							title="러브콤보 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label hot">대표상품</div>
								<div class="img">
									<img
										src="resources/images/store/pk1.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">러브콤보</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">팝콘(L) 1 + 탄산음료(R) 2</p>
									</div>

									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>10,000</em> <span>원</span>
										</p>
										<p class="ea"></p>
									</div>
								</div>
						</a></li>
						<li class=""><a href=""
							title="더블콤보 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label event">BEST</div>
								<div class="img">
									<img
										src="resources/images/store/pk2.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">더블콤보</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">팝콘(R) 2 + 탄산음료(R) 2</p>
									</div>
									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>13,000</em> <span>원</span>
										</p>
										<p class="ea"></p>
									</div>
								</div>
						</a></li>
					</ul>
				</div>
				<!--// store-list -->
			</div>
			<div id="tab3" class="tabcontent">
				<div class="store-list mt30">
					<ul class="list">
						<li class=""><a href=""
							title="[100P 럭키딜] 매일 영화 만원 관람쿠폰 (10명) 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/pk3.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">[100P 럭키딜] 매일 영화 만원 관람쿠폰 (10명)</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">매일 영화 만원 관람쿠폰 (10명)</p>
									</div>
									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>100</em> <span>Point</span>
										</p>
										<p class="ea"></p>

									</div>
								</div>
						</a></li>

						<li class=""><a href="javascript:fn_storeDetail('1891');"
							title="평일 MX 관람쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/tiketMX.png"
										alt="" onerror="noImg(this);">
								</div>

								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">평일 MX 관람쿠폰 [포인트몰3월]</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">MX 전용 예매권 (월~금, 공휴일 제외)</p>
									</div>

									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>10,900</em> <span>Point</span>
										</p>
										<p class="ea"></p>
									</div>
								</div>
						</a></li>

						<li class=""><a href="javascript:fn_storeDetail('1892');"
							title="일반 영화 4천원 할인쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>

								<div class="label"></div>

								<div class="img">
									<img
										src="resources/images/store/cu1.png"
										alt="" onerror="noImg(this);">
								</div>

								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">일반 영화 4천원 할인쿠폰 [포인트몰3월]</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">일반/컴포트/더 부티크/MX 사용 가능</p>
									</div>

									<div class="price">
										<p class="original"></p>


										<p class="sale">
											<em>2,500</em> <span>Point</span>
										</p>
										<p class="ea"></p>

									</div>
								</div>
						</a></li>
						<li class=""><a href="javascript:fn_storeDetail('1893');"
							title="일반 영화 3천원 할인쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/cu2.png"
										alt="" onerror="noImg(this);">
								</div>

								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">일반 영화 3천원 할인쿠폰 [포인트몰3월]</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">일반/컴포트/더 부티크/MX 사용 가능</p>
									</div>

									<div class="price">
										<p class="original"></p>


										<p class="sale">
											<em>2,000</em> <span>Point</span>
										</p>
										<p class="ea"></p>
									</div>
								</div>
						</a></li>
						<li class=""><a href=""
							title="일반 영화 2천원 할인쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/tiket2D.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">일반 영화 2천원 할인쿠폰 [포인트몰3월]</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">일반/컴포트/더 부티크/MX 사용 가능</p>
									</div>

									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>1,500</em> <span>Point</span>
										</p>
										<p class="ea"></p>

									</div>
								</div>
						</a></li>
						<li class=""><a href=""
							title="일반 영화 2천원 할인쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/cu3.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">일반 영화 2천원 할인쿠폰 [포인트몰3월]</p>
										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">일반/컴포트/더 부티크/MX 사용 가능</p>
									</div>
									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>1,000</em> <span>Point</span>
										</p>
										<p class="ea"></p>
									</div>
								</div>
						</a></li>


						<li class="sold-out"><a
							href="javascript:fn_storeDetail('1903');"
							title="[특가] 포대팝콘 50% 할인쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/e-food1.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">[특가] 포대팝콘 50% 할인쿠폰 [포인트몰3월]</p>
										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">3/24 오후 2시 오픈</p>
									</div>

									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>1,500</em> <span>Point</span>
										</p>
										<p class="ea">
											<span>0</span>개 남음
										</p>
									</div>
								</div>
						</a></li>
						<li class="sold-out"><a
							href="javascript:fn_storeDetail('1902');"
							title="[특가] 평일 일반/컴포트/더 부티크 관람쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/e-ti1.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">[특가] 평일 일반/컴포트/더 부티크 관람쿠폰 [포인트몰3월]</p>
										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">3/23 오후 2시 오픈</p>
									</div>
									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>7,900</em> <span>Point</span>
										</p>
										<p class="ea">
											<span>0</span>개 남음
										</p>
									</div>
								</div>
						</a></li>

						<li class="sold-out">
							<a href=""
							title="[특가] 탄산R 교환쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/e-food2.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">[특가] 탄산R 교환쿠폰 [포인트몰3월]</p>
										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">3/22 오후 2시 오픈</p>
									</div>
									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>1,000</em> <span>Point</span>
										</p>
										<p class="ea">
											<span>0</span>개 남음
										</p>

									</div>
								</div>
						</a></li>
						<li class="sold-out">
						 <a href=""
							title="[특가] 딸기음료 50% 할인쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/e-food3.png"
										alt="" onerror="noImg(this);">
								</div>
								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">[특가] 딸기음료 50% 할인쿠폰 [포인트몰3월]</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">3/21 오후 2시 오픈</p>
									</div>
									<div class="price">
										<p class="original"></p>


										<p class="sale">
											<em>1,000</em> <span>Point</span>
										</p>
										<p class="ea">
											<span>0</span>개 남음
										</p>

									</div>
								</div>
						</a></li>

						<li class="sold-out"><a
							href=""
							title="[특가] 평일 일반/컴포트/더 부티크 관람쿠폰 [포인트몰3월] 상세보기">
								<div class="soldout">SOLD OUT</div>
								<div class="label"></div>
								<div class="img">
									<img
										src="resources/images/store/e-ti2.png"
										alt="" onerror="noImg(this);">
								</div>

								<div class="info">
									<div class="tit">
										<!-- 제품명 최대 2줄 -->
										<p class="name">[특가] 평일 일반/컴포트/더 부티크 관람쿠폰 [포인트몰3월]</p>

										<!-- 제품구성 최대 2줄 -->
										<p class="bundle">3/20 오후 2시 오픈</p>
									</div>

									<div class="price">
										<p class="original"></p>
										<p class="sale">
											<em>7,900</em> <span>Point</span>
										</p>
										<p class="ea">
											<span>0</span>개 남음
										</p>
									</div>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
		</div>
	</div>
	<!-- 탭 스크립트 -->
	<script>
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});
	</script>
	
	<jsp:include page="../footer.jsp"/>
</body>
</html>