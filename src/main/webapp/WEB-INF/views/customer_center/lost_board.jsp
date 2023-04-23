<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link
	href="${pageContext.request.contextPath }/resources/css/common.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc.css"
	rel="stylesheet">
<!-- 상단 -->
<link href="${pageContext.request.contextPath }/resources/css/sub.css"
	rel="stylesheet">
<!-- 본문 -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/main.css"
	rel="stylesheet">
<body>
	<jsp:include page="../nav.jsp" />
	<div class="container has-lnb">
		<div class="inner-wrap">
			<jsp:include page="lnb-area.jsp" />
			<div id="contents">
				<h2 class="tit">분실물 문의</h2>

				<div class="clearfix">
					<ul class="dot-list">
						<li>메가박스에서 잃어버린 물건이 있다면 ‘분실물 문의/접수’를 통해 접수해주세요. 
							<button onclick='location.href="lost_form"' class="button" style="margin-left: 190px;">
							분실물 문의
							</button> 
<!-- 								<a href="lost_form" class="button float-r" title="분실물 문의 등록하기">분실물 문의</a> -->
						</li>
						<li>접수하신 글은 비밀글로 등록되어 작성자와 관리자만 확인 가능합니다.</li>
					</ul>
				</div>

				<div class="board-list-util">
					<p class="result-count">
						<strong>전체 <span id="totalCnt" class="font-gblue">${listCount }</span>건
						</strong>
					</p>

					<!-- ===================================================================================== -->
					<!-- 					<script type="text/javascript"> -->
					<!--  							$("#selectBox").on("change", function() { -->
					<!--  					 			alert($("#selectBox").val() + " 선택됨!"); -->
					<!--  								location.href = "MemberList.me?level=" + $("#selectBox").val(); -->
					<!--  							}); -->
					<!-- 					</script> -->
					<!-- 					<td colspan="3"> -->
					<!-- 						<select id="selectBox" name="level"> -->
					<!-- 							<option value="전체">전체</option> -->
					<!-- 							<option value="VIP">VIP</option> -->
					<!-- 							<option value="일반">일반</option> -->
					<!-- 						</select> -->
					<!-- 					</td> -->
					<!-- ===================================================================================== -->
					<div class="board-list-util">

						<div class="">
							<div>
								<div>
									<select name="cinema_name" onchange="selectCinema()">
										<option value="none" selected="selected" disabled>극장
											선택</option>
										<option value="none" disabled>=======================</option>
										<c:forEach var="cinema" items="${cinemaList }">
											<option value="${cinema.get('cinema_name') }">${cinema.get("cinema_name")}</option>
										</c:forEach>
									</select> <select id="selectBox">
										<option class="bs-title-option" value="접수상태 선택">접수상태
											선택</option>
										<option value="미답변">미답변</option>
										<option value="답변완료">답변완료</option>
									</select>
									<div class="board-search">
										<input type="text" id="searchTxt" title="검색어를 입력해 주세요."
											placeholder="검색어를 입력해 주세요." class="input-text" value="">
										<button type="button" id="searchBtn" class="btn-search-input">검색</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="table-wrap">
						<table class="board-list">
							<caption>번호, 극장, 구분, 제목, 등록일이 들어간 공지사항 전체 리스트</caption>
							<colgroup>
								<col style="width: 72px;">
								<col style="width: 133px;">
								<col>
								<col style="width: 100px;">
								<col style="width: 116px;">
							</colgroup>
							<thead>
								<tr style="line-height: 38px; text-align: center;">
									<th scope="col">번호</th>
									<th scope="col">극장</th>
									<th scope="col">제목</th>
									<th scope="col">답변상태</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="lostBoard" items="${lostBoardList }">
									<tr>
										<td>${lostBoard.lost_code }</td>
										<td>${lostBoard.cinema_name }</td>
										<td id="lost_subject"><a
											href="lost_detail?lost_code=${lostBoard.lost_code }&pageNum=${pageNum }">${lostBoard.lost_subject }</a>
										</td>
										<td>${lostBoard.lost_board_rep }</td>
										<td>${lostBoard.lost_write_date }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

					<section id="layer-01" class="layer-popup"
						style="top: 31px; left: 304.5px; width: 500px; height: 300px; opacity: 1; display: none;">
						<div class="wrap">
							<header class="layer-header">
								<h3 class="tit">비밀번호 입력</h3>
							</header>

							<div class="layer-con">
								<p>글 작성시 입력한 비밀번호를 입력해주세요.</p>
								<div class="box-gray a-c">
									<input type="password" id="password" title="비밀번호 입력"
										class="input-text w250px">
									<p class="font-red mt10 mb0">비밀번호가 일치하지 않습니다. 다시 입력해주세요.</p>
								</div>
								<div class="btn-group">
									<a href="#" class="button small lyclose" id="cancelBtn"
										title="취소">취소</a> <a href="#" class="button small purple"
										id="chkBtn" title="확인">확인</a>
								</div>
							</div>

							<button type="button" class="btn-layer-close">레이어 닫기</button>
						</div>
					</section>

					<!-- pagination -->
					<nav class="pagination">
						<section id="pageList">
							<c:choose>
								<c:when test="${pageNum > 1 }">
									<input type="button" value="이전"
										onclick="location.href='lost_board?pageNum=${pageNum - 1}'">
								</c:when>
								<c:otherwise>
									<input type="button" value="이전">
								</c:otherwise>
							</c:choose>

							<c:forEach var="num" begin="${pageInfo.startPage }"
								end="${pageInfo.endPage }">
								<c:choose>
									<c:when test="${pageNum eq num }">
										<b>${num }</b>
									</c:when>
									<c:otherwise>
										<a href="lost_board?pageNum=${num }">${num }</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>

							<c:choose>
								<c:when test="${pageNum < pageInfo.maxPage }">
									<input type="button" value="다음"
										onclick="location.href='lost_board?pageNum=${pageNum + 1}'">
								</c:when>
								<c:otherwise>
									<input type="button" value="다음">
								</c:otherwise>
							</c:choose>
						</section>
					</nav>
					<!--// pagination -->
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>