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
						<!-- 					<span class="arrow"></span> -->
					</div>
					======================================================
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
									<!-- 									<th scope="col">극장</th> -->
									<th scope="col">구분</th>
									<th scope="col">제목</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<!-- 									<td>상암월드컵경기장</td> -->
									<td>공지</td>
									<th><a href="#" class="moveBtn" data-no="10821"
										title="공지사항 상세보기"><span class="font-green"></span>[<span
											class="font-green"></span>상<span class="font-green"></span>암<span
											class="font-green"></span>월<span class="font-green"></span>드<span
											class="font-green"></span>컵<span class="font-green"></span>경<span
											class="font-green"></span>기<span class="font-green"></span>장<span
											class="font-green"></span>]<span class="font-green"></span> <span
											class="font-green"></span>K<span class="font-green"></span>리<span
											class="font-green"></span>그<span class="font-green"></span> <span
											class="font-green"></span>축<span class="font-green"></span>구<span
											class="font-green"></span> <span class="font-green"></span>경<span
											class="font-green"></span>기<span class="font-green"></span>로<span
											class="font-green"></span> <span class="font-green"></span>인<span
											class="font-green"></span>한<span class="font-green"></span> <span
											class="font-green"></span>주<span class="font-green"></span>차<span
											class="font-green"></span> <span class="font-green"></span>안<span
											class="font-green"></span>내<span class="font-green"></span></a></th>
									<td>2023.04.03</td>
								</tr>
							</tbody>
						</table>
					</div>
					======================================================
					<table class="bbs-list bbs-list-faq">
						<thead>
							<tr>
								<!--<th>번호</th>-->
								<th class="faq_group">구분</th>
								<th class="faq_qus">질문</th>
							</tr>
						</thead>
						<tbody>
							<script id="template-faq-list" type="text/x-jquery-tmpl">
                    <tr>
                        <!--<td class="no">${FAQNum}</td>-->
                        <td class="kind">${Cate}</td>
                        <td class="title"><a href="javascript:load_faq_answer(${FAQId});">${Title}</a></td>
                    </tr>
                    <tr id="ans${FAQId}" class="tr-answer">
                        <td colspan="3" class="answer">
                           {{html Answer}}
                        </td>
                    </tr>
                </script>
							<tr>
								<!--<td _tmplitem="178"  class="no">1</td>-->
								<td class="kind">멤버십</td>
								<td class="title"><a href="javascript:load_faq_answer(62);">적립한
										포인트를 다 써도 VIP가 될 수 있나요?</a></td>
							</tr>
							<tr id="ans62" class="tr-answer">
								<td colspan="3" class="answer">포인트 사용여부와 관계없이 고객님께서 적립하신
									씨네Q 구매 누적 포인트 기준으로 VIP가 산정됩니다.</td>
							</tr>
					</table>
					페이징 처리
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>