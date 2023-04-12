<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/sub.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
<body>
	<jsp:include page="../nav.jsp" />

	<div class="container has-lnb">

		<div class="inner-wrap">
			<jsp:include page="lnb-area.jsp" />
			<div id="contents" class="">
				<h2 class="tit">고객센터 홈</h2>

				<!-- input-search-area -->
				<div class="input-search-area mb30">
					<div class="input-area">
						<label for="search01" class="label">빠른검색</label>

						<div class="board-search w460px">
							<input type="search" id="searchTxt" title="검색어를 입력해 주세요."
								placeholder="검색어를 입력해 주세요." class="input-text" maxlength="15">
							<button type="button" class="btn-search-input" id="searchBtn">검색</button>
						</div>
					</div>

					<div class="btn-area"></div>
				</div>
				<!--// input-search-area -->

				<div class="custo-main">
					<div class="main-block">
						<div class="block-content">
							<a href="lost_board" title="분실물 문의 페이지로 이동">
								<p>
									<strong>분실물 문의</strong> 잃어버린 물건을 접수해 주시면<br>신속히 찾아드리겠습니다.
								</p>
							</a>
						</div>
						<div class="block-content">
							<a href="oneOnOne" title="1:1 문의 페이지로 이동">
								<p>
									<strong>1:1 문의</strong> 해결되지않은 문제가 있나요?<br>1:1문의로 문의주세요
								</p>
							</a>
						</div>
						<div class="block-content">
							<a href="faq" title="자주 묻는 질문 페이지로 이동">
								<p>
									<strong>자주 묻는 질문</strong> 자주 묻는 질문<br>빠르고 간편하게 검색하세요.
								</p>
							</a>
						</div>
					</div>

					<div class="notice-wrap">
						<div class="block left">
							<div class="tit-area">
								<h3 class="tit small">자주 묻는 질문 BEST5</h3>

								<a href="" class="more" title="더보기">더보기 <i
									class="iconset ico-arr-right-gray ml07"></i></a>
							</div>
							<div class="">
								<ol class="decimal-list">

									<li><a href="" class="faqBtn" data-idx="1" title="질문 상세보기">
											<span class="font-roboto">1</span>&nbsp; <span
											class="font-gblue">[분류코드]</span> 제목 <span
											class="date">날짜</span>
									</a></li>

								</ol>
							</div>
						</div>

						<div class="block right">
							<div class="tit-area">
								<h3 class="tit small">공지사항</h3>

								<a href="" class="more" title="더보기">더보기 <i
									class="iconset ico-arr-right-gray ml07"></i></a>
							</div>

							<div class="decimal-list">
								<ol>

									<li><a href="" class="moveBtn" data-no="10813"
										title="공지사항 상세보기"> <span class="font-purple"><i
												class="iconset ico-marker"></i> [영화관이름]</span> 제목
											<span class="date">날짜</span>
									</a></li>
								</ol>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>