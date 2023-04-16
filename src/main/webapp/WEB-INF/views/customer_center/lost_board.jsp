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
						<li>메가박스에서 잃어버린 물건이 있다면 ‘분실물 문의/접수’를 통해 접수해주세요. <a
							href="lost_form" class="button float-r" title="분실물 문의 등록하기">분실물
								문의</a>
						</li>
						<li>접수하신 글은 비밀글로 등록되어 작성자와 관리자만 확인 가능합니다.</li>
					</ul>
				</div>

				<div class="board-list-util">
					<p class="result-count">
						<strong>전체 <span id="totalCnt" class="font-gblue">8,608</span>건
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
									<select id="selectBox">
										<option class="bs-title-option" value="극장 선택">극장 선택</option>
										<option value="부산">부산</option>
										<option value="서울">서울</option>
										<option value="울산">울산</option>
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
							<div class="dropdown bootstrap-select ml07 bs3">
								<select id="theater02" title="극장 선택" class="selectpicker ml07"
									tabindex="-98"><option class="bs-title-option"
										value=""></option>
									<option value="">극장 선택</option>
									<option value="0040">경북도청</option>
									<option value="7122">경산하양</option>
									<option value="0043">경주</option>
									<option value="7303">구미강동</option>
								</select>
								<button type="button"
									class="btn dropdown-toggle btn-default bs-placeholder"
									data-toggle="dropdown" role="button" data-id="theater02"
									aria-disabled="false" title="극장 선택" aria-expanded="false">
									<div class="filter-option">
										<div class="filter-option-inner">
											<div class="filter-option-inner-inner">극장 선택</div>
										</div>
									</div>
									<span class="bs-caret"><span class="caret"></span></span>
								</button>
								<div class="dropdown-menu open" role="combobox"
									style="overflow: hidden; max-height: 302px; min-width: 157px;">
									<div class="inner open" role="listbox" aria-expanded="false"
										tabindex="-1" style="overflow-y: auto; max-height: 300px;">
										<ul class="dropdown-menu inner ">
											<li class="selected active"><a role="option"
												aria-disabled="false" tabindex="0" aria-selected="true"
												class="selected active"><span class="text">극장 선택</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">경북도청</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">경산하양</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">경주</span></a></li>
											<li class="selected active"><a role="option"
												aria-disabled="false" tabindex="0" aria-selected="true"
												class="selected active"><span class="text">구미강동</span></a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="dropdown bootstrap-select ml07 bs3">
								<select id="custInqStatCd" class="selectpicker ml07"
									tabindex="-98">
									<option value="">접수상태 선택</option>
									<option value="INQST1">미답변</option>
									<option value="INQST2">답변완료</option>
								</select>
								<button type="button"
									class="btn dropdown-toggle btn-default bs-placeholder"
									data-toggle="dropdown" role="button" data-id="custInqStatCd"
									title="접수상태 선택" aria-expanded="false">
									<div class="filter-option">
										<div class="filter-option-inner">
											<div class="filter-option-inner-inner">접수상태 선택</div>
										</div>
									</div>
									<span class="bs-caret"><span class="caret"></span></span>
								</button>
								<div class="dropdown-menu open" role="combobox"
									style="overflow: hidden;">
									<div class="inner open" role="listbox" aria-expanded="false"
										tabindex="-1" style="overflow-y: auto;">
										<ul class="dropdown-menu inner ">
											<li class="selected active"><a role="option"
												aria-disabled="false" tabindex="0" class="selected active"
												aria-selected="true"><span class="text">접수상태 선택</span></a></li>
											<li class="selected active"><a role="option"
												aria-disabled="false" tabindex="0" aria-selected="true"
												class="selected active"><span class="text">미답변</span></a></li>
											<li><a role="option" aria-disabled="false" tabindex="0"
												aria-selected="false"><span class="text">답변완료</span></a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="board-search">
								<input type="text" id="searchTxt" title="검색어를 입력해 주세요."
									placeholder="검색어를 입력해 주세요." class="input-text" value="">
								<button type="button" id="searchBtn" class="btn-search-input">검색</button>
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
								<!-- 							<tr> -->
								<!-- 								<td>8608</td> -->
								<!-- 								<td>이수</td> -->
								<!-- 								<th scope="row"><a href="#layer-01" -->
								<!-- 									class="btn-layer-open moveBtn" data-sn="600414" -->
								<!-- 									data-no="9555810" title="분실물 문의 상세보기">분실물</a></th> -->
								<!-- 								<td>미답변</td> -->
								<!-- 								<td>2023.04.01</td> -->
								<!-- 							</tr> -->
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
						<!-- 					<strong class="active">1</strong> <a title="2페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="2">2</a> <a title="3페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="3">3</a> <a title="4페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="4">4</a> <a title="5페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="5">5</a> <a title="6페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="6">6</a> <a title="7페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="7">7</a> <a title="8페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="8">8</a> <a title="9페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="9">9</a> <a title="10페이지보기" -->
						<!-- 						href="javascript:void(0)" pagenum="10">10</a> <a -->
						<!-- 						title="이후 10페이지 보기" href="javascript:void(0)" class="control next" -->
						<!-- 						pagenum="11">next</a> <a title="마지막 페이지 보기" -->
						<!-- 						href="javascript:void(0)" class="control last" pagenum="861">last</a> -->
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
		<jsp:include page="../footer.jsp" />
</body>
</html>