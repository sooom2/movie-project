<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="../css/movie.css" rel="stylesheet">
<link href="../css/store.css" rel="stylesheet">
<body>
	<jsp:include page="../nav.jsp" />
	
	<div class="container has-lnb">
<!-- 		<div class="page-util"> -->
<!-- 			<div class="inner-wrap"> -->
<!-- 				<div class="location"> -->
<!-- 					<span>Home</span> -->
<!-- 					<a href="/support" title="고객센터 페이지로 이동">고객센터</a> -->
<!-- 					<a href="/support" title="고객센터 페이지로 이동">고객센터 홈</a> -->
<!-- 				</div> -->

<!-- 			</div> -->
<!-- 		</div> -->

		<div class="inner-wrap">
			<div class="lnb-area addchat">
				<nav id="lnb" class="ty2">
					<p class="tit"><a href="" title="고객센터">고객센터</a></p>
					<ul>
						<li class="on"><a href="" title="고객센터 홈">고객센터 홈</a></li>
						<li><a href="" title="자주 묻는 질문">자주 묻는 질문</a></li>
						<li><a href="" title="공지사항">공지사항</a></li>
						<li><a href="" title="1:1문의">1:1문의</a></li>
<!-- 						여기서 필요없는 부분 -->
<!-- 						<li><a href="/support/rent" title="단체관람 및 대관문의">단체관람 및 대관문의</a></li> -->
<!-- 						<li><a href="/support/lost" title="분실물 문의">분실물 문의</a></li> -->
						
<!-- 							<li><a href="/support/nonMember-inq/check" title="비회원 문의내역">비회원 문의내역</a></li> -->
						
<!-- 						<li><a href="/support/terms" title="이용약관">이용약관</a></li> -->
<!-- 						<li><a href="/support/lcinfo" title="위치기반서비스이용약관">위치기반서비스이용약관</a></li> -->
<!-- 						<li><a href="/support/privacy" title="개인정보처리방침">개인정보처리방침</a></li> -->
<!-- 						<li><a href="/support/screenrule" style="border-radius: 0 0 10px 10px;" title="스크린배정수에관한기준">스크린배정수에관한기준</a></li> -->
					</ul>

					<!-- 고객센터 메뉴일때만 출력 -->
					<div class="left-customer-info">
						<p class="tit">
							See네마 고객센터
<!-- 							<span>Dream center</span> -->
						</p>
						<p class="time"><i class="iconset ico-clock"></i> 10:00~19:00</p>
					</div>
				</nav>
				<h3>여기에 나중에 영화 광고 하나 넣자</h3>
			</div>

			<div id="contents" class="">
				<h2 class="tit">고객센터 홈</h2>

				<!-- input-search-area -->
				<div class="input-search-area mb30">
					<div class="input-area">
						<label for="search01" class="label">빠른검색</label>

						<div class="board-search w460px">
							<input type="search" id="searchTxt" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요." class="input-text" maxlength="15">
							<button type="button" class="btn-search-input" id="searchBtn">검색</button>
						</div>
					</div>

					<div class="btn-area">
						
					</div>
				</div>
				<!--// input-search-area -->

				<div class="custo-main">
					<div class="main-block">
						<div class="block-content">
							<a href="" title="분실물 문의 페이지로 이동">
								<p>
									<strong>분실물 문의</strong>
									잃어버린 물건을 접수해 주시면<br>신속히 찾아드리겠습니다.
								</p>
							</a>
						</div>
						<div class="block-content">
							<a href="" title="1:1 문의 페이지로 이동">
								<p>
									<strong>1:1 문의</strong>
									해결되지않은 문제가 있나요?<br>1:1문의로 문의주세요
								</p>
							</a>
						</div>
						<div class="block-content">
							<a href="" title="자주 묻는 질문 페이지로 이동">
								<p>
									<strong>자주 묻는 질문</strong>
									자주 묻는 질문<br>빠르고 간편하게 검색하세요.
								</p>
							</a>
						</div>
					</div>

					<div class="notice-wrap">
						<div class="block left">
							<div class="tit-area">
								<h3 class="tit small">자주 묻는 질문 BEST5</h3>

								<a href="" class="more" title="더보기">더보기 <i class="iconset ico-arr-right-gray ml07"></i></a>
							</div>
							<div class="">
								<ol class="decimal-list">
									
										<li>
											<a href="" class="faqBtn" data-idx="1" title="질문 상세보기">
												<span class="font-roboto">1</span>&nbsp;
												<span class="font-gblue">[영화예매]</span> 인터넷 예매시 부분환불/교환이 가능한가요?
												<span class="date">2020.01.16</span>
											</a>
										</li>
									
										<li>
											<a href="" class="faqBtn" data-idx="2" title="질문 상세보기">
												<span class="font-roboto">2</span>&nbsp;
												<span class="font-gblue">[극장]</span> ARS 이용안내
												<span class="date">2023.01.04</span>
											</a>
										</li>
									
										<li>
											<a href="" class="faqBtn" data-idx="3" title="질문 상세보기">
												<span class="font-roboto">3</span>&nbsp;
												<span class="font-gblue">[홈페이지/모바일]</span> 이름을 개명했는데 어디서 바꾸나요?
												<span class="date">2020.03.12</span>
											</a>
										</li>
									
										<li>
											<a href="" class="faqBtn" data-idx="4" title="질문 상세보기">
												<span class="font-roboto">4</span>&nbsp;
												<span class="font-gblue">[VIP]</span> 회원 등급 조정 기간 동안의 관람 실적은 어떻게 반영되나요?
												<span class="date">2023.03.07</span>
											</a>
										</li>
									
										<li>
											<a href="" class="faqBtn" data-idx="5" title="질문 상세보기">
												<span class="font-roboto">5</span>&nbsp;
												<span class="font-gblue">[영화예매]</span> 국가유공자 혜택은 어떻게 되나요?
												<span class="date">2022.05.30</span>
											</a>
										</li>
									
								</ol>
							</div>
						</div>

						<div class="block right">
							<div class="tit-area">
								<h3 class="tit small">공지사항</h3>

								<a href="" class="more" title="더보기">더보기 <i class="iconset ico-arr-right-gray ml07"></i></a>
							</div>

							<div class="decimal-list">
								<ol>
									
										<li>
											<a href="" class="moveBtn" data-no="10813" title="공지사항 상세보기">
												
													
													
														<span class="font-purple"><i class="iconset ico-marker"></i> [전대(광주)]</span>
													
												
												[전대(광주)] 관람요금 변경 안내 (4/17부터~)
												<span class="date">2023.03.28</span>
											</a>
										</li>
									
										<li>
											<a href="" class="moveBtn" data-no="10812" title="공지사항 상세보기">
												
													
													
														<span class="font-purple"><i class="iconset ico-marker"></i> [원주]</span>
													
												
												[원주] 운영시간 변경 공지
												<span class="date">2023.03.28</span>
											</a>
										</li>
									
										<li>
											<a href="" class="moveBtn" data-no="10811" title="공지사항 상세보기">
												
													
													
														<span class="font-purple"><i class="iconset ico-marker"></i> [상암월드컵경기장]</span>
													
												
												[상암월드컵경기장]3월 28일(화) 축구 국가대표 평가전에 따른 주차안내
												<span class="date">2023.03.28</span>
											</a>
										</li>
									
										<li>
											<a href="" class="moveBtn" data-no="10809" title="공지사항 상세보기">
												
													
													
														<span class="font-purple"><i class="iconset ico-marker"></i> [원주센트럴]</span>
													
												
												[원주센트럴] 운영시간 변경 안내 (3/27부터~ 별도 공지까지)
												<span class="date">2023.03.22</span>
											</a>
										</li>
									
										<li>
											<a href="" class="moveBtn" data-no="10808" title="공지사항 상세보기">
												
													
													
														<span class="font-purple"><i class="iconset ico-marker"></i> [전주객사]</span>
													
												
												[전주객사] 2023년 03월 17일 신규 OPEN! (이벤트 안내)
												<span class="date">2023.03.17</span>
											</a>
										</li>
									
								</ol>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
</body>
</html>