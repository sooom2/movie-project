<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/mypage.css" rel="stylesheet">
<link href="resources//css/inc.css" rel="stylesheet">
<script type="text/javascript"src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources//js/main.js"></script>
</head>
<body>

	<jsp:include page="../nav.jsp" />
	<div id="container">
		<div id="content">
			<div class="wrap-sitemap-title">
				<h2 class="sitemap-title">마이페이지</h2>
			</div>
			<div class="section group section-mypage-summary">
				<div class="summary summary-1">
					<h3>회원정보</h3>
					<a href="mypageI" class="btn btn-top">회원정보 관리</a>

					<div class="username">
						${member.member_name } 님<span class="point">${member.member_point }P</span>
					</div>

					<div class="username">
						선호극장 <span class="right"> ${member.member_prefer_branch } </span>

					</div>

					<div class="username">
						선호장르 <span class="right"> ${member.member_prefer_genre } </span>
					</div>

				</div>
				<div class="summary summary-2">
					<h3>
						최근 예매 <span class="num">( 0 )</span>
					</h3>
				</div>
				<div class="summary summary-3">
					<h3>추천영화</h3>
					<c:forEach var="movieList" items="${movieList}">
						&nbsp;&nbsp; <?xml version="1.0" ?><svg class="feather feather-video" fill="none" height="18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><polygon points="23 7 16 12 23 17 23 7"/><rect height="14" rx="2" ry="2" width="15" x="1" y="5"/></svg>
						${movieList.get("info_movie_title")}<br>
					</c:forEach>
				</div>
			</div>
			<div class="section group section-mypage-select">
				<ul class="selector-summary">
					<li><a href="mypageR" class="">예매/취소내역</a></li>
					<li><a href="mypageS" class="">결제내역</a></li>
					<li><a href="mypageP" class="">포인트내역</a></li>
					<li><a href="mypageQ" class=" ">문의내역</a></li>
					<li><a href="mypageRv" class="selected">영화리뷰</a></li>
				</ul>
			</div>



			<div id="content-notice"
				style="display: none; position: absolute; width: 400px; height: 220px; z-index: 15; top: 50%; left: 50%; background: white; border: 1px solid black; margin: -200px 0 0 0;">
				<div class="section group">
					<div class="col span_8_of_8"
						style="text-align: center; border-bottom: 1px solid gray; background: beige">
						<div id="couponname" style="padding-top: 20px; font-size: 20px"></div>

						<div id="couponkey"
							style="padding-top: 10px; padding-bottom: 15px"></div>
					</div>
					<div class="col span_8_of_8"
						style="text-align: left; padding-top: 10px;">
						<div>사용 방법</div>
						<div id="constraint" style="padding-left: 20px;"></div>
						<div id="theater" style="padding-left: 20px;"></div>
					</div>
				</div>
				<div class="section group">
					<div class="col span_8_of_8 notice-control">
						<div class="desc" style="text-align: center;">
							<button onclick="javascript:closemodal()">닫기</button>
						</div>
					</div>
				</div>
			</div>


			<div class="section group section-mypage">
				<div class="wrap-list">
					<div style="margin-top: -40px; margin-bottom: 10px;">나의리뷰</div>
					<table class="bbs-list bbs-list-mypage-coupon">
						<thead>
							<tr>
								<th>영화제목</th>
								<th>한줄평</th>
								<th>별 점</th>
								<th>작성일자</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="revList" items="${revList}">
							    <tr>
							        <td>${revList.get("rev_movie_title")}</td>
							        <td>${revList.get("rev_content")}</td>
							        <td>
							            <c:if test="${not empty revList.get('rev_rating')}">
							                <c:choose>
							                    <c:when test="${revList.get('rev_rating') == 1}">
							                        ★
							                    </c:when>
							                    <c:when test="${revList.get('rev_rating') == 2}">
							                        ★★
							                    </c:when>
							                    <c:when test="${revList.get('rev_rating') == 3}">
							                        ★★★
							                    </c:when>
							                    <c:when test="${revList.get('rev_rating') == 4}">
							                        ★★★★
							                    </c:when>
							                    <c:when test="${revList.get('rev_rating') == 5}">
							                        ★★★★★
							                    </c:when>
							                    <c:otherwise>
							                        No rating
							                    </c:otherwise>
							                </c:choose>
							            </c:if>
							        </td>
							        <td>${revList.get("rev_date")}</td>
							    </tr>
							</c:forEach>
						</tbody>
					</table>
					
					<form class="mystar" name="rev_rating" id="myform" action="mypageRvPro" method="post">
						<fieldset>
							<span class="text-bold" >별점을 선택하고 최근에 본 영화의 리뷰를 작성해주세요</span> 
							<input type="radio" name="rev_rating" value="5" id="rate1">
							<label for="rate1">★</label> 
							<input type="radio" name="rev_rating" value="4" id="rate2">
							<label for="rate2">★</label> 
							<input type="radio" name="rev_rating" value="3" id="rate3">
							<label for="rate3">★</label> 
							<input type="radio" name="rev_rating" value="2" id="rate4">
							<label for="rate4">★</label> 
							<input type="radio" name="rev_rating" value="1" id="rate5">
							<label for="rate5">★</label>
						</fieldset>
						<div>
							<textarea id="reviewContents" name="rev_content" placeholder="아이무비 리뷰이벤트 !!! 리뷰작성시 500포인트를 지급합니다."></textarea>
						</div>
					<section id="reviewbtnArea">
						<div ><input type="submit" value="리뷰등록">&nbsp;&nbsp;</div>
					</section>
					</form>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>