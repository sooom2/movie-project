<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
<!-- 상단 -->
<link href="${pageContext.request.contextPath }/resources/css/sub.css" rel="stylesheet">
<!-- 본문 -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<!-- <link href="resources/css/main.css" rel="stylesheet"> -->
<body>
	<jsp:include page="../nav.jsp" />

	<div class="container has-lnb">

		<div class="inner-wrap">
			<jsp:include page="lnb-area.jsp" />

			<div id="contents" class="">
				<h2 class="tit">자주 묻는 질문</h2>
				
				
				
				<!-- input-search-area -->
				<div class="input-search-area mb30">
					<div class="input-area">
						<label for="search01" class="label">빠른검색</label>

						<div class="board-search w460px">
							<%-- 검색타입목록, 검색창 추가 --%>
							<form action="faq">
							<input type="search" id="searchTxt" name="searchKeyword" title="검색어를 입력해 주세요."
								placeholder="검색어를 입력해 주세요." class="input-text" maxlength="15"
								value="${param.searchKeyword }">
							<button type="submit" class="btn-search-input" id="searchBtn">검색</button>
							</form>
						</div>
					</div>

					<div class="btn-area"></div>
				</div>
				<!--// input-search-area -->
				
				<div class="board-list-util">
					<p class="result-count">
						<strong>전체 <em class="font-gblue">${listCount }</em>건
						</strong>
					</p>
				</div>

				<div class="wrap-customer-box wrap-faq-box">
					<div class="faq-desc">자주 찾는 질문 전체가 기본으로 표시됩니다. 원하는 구분의 목록만
						보려면 아래 구분 메뉴에서 선택해주세요.</div>
					<div class="faq-cat-selector">
						<div class="wrap-select">
							<select class="faq-category">
								<option value="0">전체</option>
								<option value="1">예매</option>
								<option value="2">관람권</option>
								<option value="3">멤버십</option>
								<option value="4">할인혜택</option>
								<option value="5">영화관이용</option>
							</select>
						</div>
					</div>
					<div class="table-wrap">
					<table class="board-list">
						<caption>번호, 극장, 구분, 제목, 등록일이 들어간 공지사항 전체 리스트</caption>
						<colgroup>
							<col style="width: 72px;">
							<col style="width: 133px;">
							<col style="width: 95px;">
							<col>
							<col style="width: 116px;">
						</colgroup>
						<thead>
							<tr style="line-height: 38px">
								<th scope="col">번호</th>
								<th scope="col">구분</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="faqBoard" items="${faqBoardList }">
								<tr data-index="0">
									<td>${faqBoard.faq_code }</td>
									<td>${faqBoard.faq_group }</td>
									<td id="faq_question"><a
										href="faq_detail?faq_code=${faqBoard.faq_code }&pageNum=${pageNum }">${faqBoard.faq_question }</a>
									</td>
									<td>${faqBoard.faq_write_date }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
					======================================================
					<table class="bbs-list bbs-list-faq">
						<thead>
							<tr>
								<!--<th>번호</th>-->
<!-- 								<th class="faq_group">번호</th> -->
<!-- 								<th class="faq_group">구분</th> -->
								<th class="faq_qus">번호</th>
								<th class="faq_qus">구분</th>
								<th class="faq_group">질문</th>
								<th class="faq_qus">등록일</th>
<!-- 								<th class="faq_group">등록일</th> -->
							</tr>
						</thead>
						<tbody>
							<c:forEach var="faqBoard" items="${faqBoardList }">
								<tr data-index="0">
									<td>${faqBoard.faq_code }</td>
									<td>${faqBoard.faq_group }</td>
									<td id="faq_question"><a
										href="faq_detail?faq_code=${faqBoard.faq_code }&pageNum=${pageNum }">${faqBoard.faq_question }</a>
									</td>
									<td>${faqBoard.faq_write_date }</td>
								</tr>
							</c:forEach>
					</table>
					페이징 처리
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>