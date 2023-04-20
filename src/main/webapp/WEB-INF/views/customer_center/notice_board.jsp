<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<script type="text/javascript">
// 	function selectCinema() {

// 		$.ajax({
// 			type : "POST",
// 			url : "screenSelect",
// 			data : {
// 				cinema_code : $(".cinema_name option:selected").val(),
// 				cinema_name : $(".cinema_name option:selected").text()
// 			},
// 			success : function(result) { // 요청 처리 성공시 자동으로 호출되는 콜백함수

// 				$(".selectScreen_name option").remove();
// 				$(".selectScreen_name")
// 						.append(
// 								'<option value="none" selected="selected" disabled>상영관을 선택하세요</option>');
// 				$(".selectScreen_name")
// 						.append(
// 								'<option value="none" disabled>=======================</option>');
// 				for (var i = 0; i < result.length; i++) {
// 					$(".selectScreen_name").append(
// 							'<option value="' +result[i].screen_code + '">'
// 									+ result[i].screen_name
// 									+ '</option');
// 				}

// 			},
// 			error : function(request, status, error) {
// 				alert("code:" + request.status + "\n" + "message:"
// 						+ request.responseText + "\n" + "error:"
// 						+ error);

// 			}
// 		});//ajax
// 	}
</script>
<body>
	<jsp:include page="../nav.jsp" />
	<div class="container has-lnb">

		<div class="inner-wrap">
			<jsp:include page="lnb-area.jsp" />
			<div id="contents">
				<h2 class="tit">공지사항</h2>

				<div class="board-list-util">
					<p class="result-count">
						<strong>전체 <em class="font-gblue">5,852</em>건
						</strong>
					</p>

					<div class="dropdown bootstrap-select" >
						<div class="form-floating mb-3 mb-md-0 selectbox" >
							<div class="cinema_name">
								<label for="cinema_name"></label> <select
									name="sch_cinema_code" onchange="selectCinema()" style="margin-top: 0px; !important"> 
									<option value="none" selected="selected" disabled>극장 선택</option>
									<option value="none" disabled>=======================</option>
									<c:forEach var="cinema" items="${cinemaList }">
										<option value="${cinema.get('cinema_code') }">${cinema.get("cinema_name")}</option>
									</c:forEach>
								</select>
								<c:forEach var="cinema" items="${cinemaList }">
									<input type="hidden" name="location_code"
										value="${cinema.get('location_code') }">
								</c:forEach>
							</div>
						</div>
					</div>

					<div class="board-search">
						<input type="text" id="searchTxt" title="검색어를 입력해 주세요."
							placeholder="검색어를 입력해 주세요." class="input-text" value=""
							maxlength="15">
						<button type="button" id="searchBtn" class="btn-search-input">검색</button>
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
								<th scope="col">극장</th>
								<th scope="col">구분</th>
								<th scope="col">제목</th>
								<th scope="col">등록일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="noticeBoard" items="${noticeBoardList }">
								<tr data-index="0">
									<td>${noticeBoard.notice_code }</td>
									<td>${noticeBoard.cinema_name }</td>
									<td>문의유형 DB에도 넣어야 함</td>
									<td id="notice_subject"><a
										href="notice_detail?notice_code=${noticeBoard.notice_code }&pageNum=${pageNum }">${noticeBoard.notice_subject }</a>
									</td>
									<td>${noticeBoard.notice_write_date }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- pagination -->
				<nav class="pagination">
					<strong class="active">1</strong> <a title="2페이지보기"
						href="javascript:void(0)" pagenum="2">2</a> <a title="3페이지보기"
						href="javascript:void(0)" pagenum="3">3</a> <a title="4페이지보기"
						href="javascript:void(0)" pagenum="4">4</a> <a title="5페이지보기"
						href="javascript:void(0)" pagenum="5">5</a> <a title="6페이지보기"
						href="javascript:void(0)" pagenum="6">6</a> <a title="7페이지보기"
						href="javascript:void(0)" pagenum="7">7</a> <a title="8페이지보기"
						href="javascript:void(0)" pagenum="8">8</a> <a title="9페이지보기"
						href="javascript:void(0)" pagenum="9">9</a> <a title="10페이지보기"
						href="javascript:void(0)" pagenum="10">10</a> <a
						title="이후 10페이지 보기" href="javascript:void(0)" class="control next"
						pagenum="11">next</a> <a title="마지막 페이지 보기"
						href="javascript:void(0)" class="control last" pagenum="586">last</a>
				</nav>
				<!--// pagination -->
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>