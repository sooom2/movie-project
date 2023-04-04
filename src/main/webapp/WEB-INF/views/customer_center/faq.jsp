<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<!-- 상단 -->
<link href="resources/css/sub.css" rel="stylesheet">
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
				<h2 class="tit">고객센터 홈</h2>

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
								<td class="title"><a href="javascript:load_faq_answer(62);">적립한 포인트를 다 써도 VIP가 될 수 있나요?</a></td>
							</tr>
							<tr id="ans62" class="tr-answer">
								<td colspan="3" class="answer">포인트 사용여부와 관계없이 고객님께서 적립하신
									씨네Q 구매 누적 포인트 기준으로 VIP가 산정됩니다.</td>
							</tr>
							<tr>
								<!--<td _tmplitem="179"  class="no">2</td>-->
								<td class="kind">멤버십</td>
								<td class="title"><a href="javascript:load_faq_answer(61);">포인트
										소멸은 어떻게 이루어 지나요?</a></td>
							</tr>
							<tr id="ans61" class="tr-answer">
								<td colspan="3" class="answer">멤버십 포인트는 최초 적립된 시점에서 24개월 지난
									시점의 해당 월 말일 영업종료 후 해당 기간에 사용하지 못한 잔여 포인트가 월 단위로 자동 소멸됩니다. <br>
					
							<tr>
								<!--<td _tmplitem="178"  class="no">1</td>-->
								<td class="kind">멤버십</td>
								<td class="title"><a href="javascript:load_faq_answer(62);">적립한 포인트를 다 써도 VIP가 될 수 있나요?</a></td>
							</tr>
							<tr id="ans62" class="tr-answer">
								<td colspan="3" class="answer">포인트 사용여부와 관계없이 고객님께서 적립하신
									씨네Q 구매 누적 포인트 기준으로 VIP가 산정됩니다.</td>
							</tr>
							<tr>
								<!--<td _tmplitem="178"  class="no">1</td>-->
								<td class="kind">멤버십</td>
								<td class="title"><a href="javascript:load_faq_answer(62);">적립한 포인트를 다 써도 VIP가 될 수 있나요?</a></td>
							</tr>
							<tr id="ans62" class="tr-answer">
								<td colspan="3" class="answer">포인트 사용여부와 관계없이 고객님께서 적립하신
									씨네Q 구매 누적 포인트 기준으로 VIP가 산정됩니다.</td>
							</tr>
							<tr>
								<!--<td _tmplitem="178"  class="no">1</td>-->
								<td class="kind">멤버십</td>
								<td class="title"><a href="javascript:load_faq_answer(62);">적립한 포인트를 다 써도 VIP가 될 수 있나요?</a></td>
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