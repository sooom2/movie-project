<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/mypage.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<script type="text/javascript"src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources//js/main.js"></script>
</head>
<body>
			<div class="section group section-mypage">
				<div class="wrap-list">
					<div style="margin-top: -40px; margin-bottom: 10px;">리뷰 보기</div>
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
							<c:forEach var="Review" items="${movieInfoReview}">
							    <tr>
<%-- 							        <td>영화제목 ${Review.rev_movie_title}</td> --%>
							        <!-- 영화 제목 -->
							        <td>${Review.rev_movie_content}
							        </td>
							        <!-- 리뷰 내용 -->
							        <td>
							            <c:if test="${not empty Review.rev_rating}">
							                <c:choose>
							                    <c:when test="${Review.rev_rating == 1}">
							                        ★
							                    </c:when>
							                    <c:when test="${Review.rev_rating == 2}">
							                        ★★
							                    </c:when>
							                    <c:when test="${Review.rev_rating == 3}">
							                        ★★★
							                    </c:when>
							                    <c:when test="${Review.rev_rating == 4}">
							                        ★★★★
							                    </c:when>
							                    <c:when test="${Review.rev_rating == 5}">
							                        ★★★★★
							                    </c:when>
							                    <c:otherwise>
							                        No rating
							                    </c:otherwise>
							                </c:choose>
							            </c:if>
							        </td>
							        <td>${Review.rev_date}</td>
							        <!-- 작성 날짜 -->
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
							<textarea id="reviewContents" name="rev_content" placeholder="아이무비 리뷰이벤트 !!! 리뷰작성시 100포인트를 지급합니다."></textarea>
						</div>
					</form>
				</div>
			</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>