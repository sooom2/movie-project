<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/inc.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/mypage.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movieInfo.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body id="top">
<jsp:include page="../nav.jsp" />   
 <div id="container">
	<div id="content">

		<div class="wrap-movie-title">
			<h2 class="movie-title">상세보기</h2>
		</div>

		<div class="section group section-movie-info">
			<div class="wrap">
				<h3>
					<span class="${movieInfo.rate }">${movieInfo.info_rating }</span>
					${movieInfo.info_movie_title }
				</h3>
				<img src="${movieInfo.info_movie_poster }" alt="포스터" class="poster posterlist" />
				<!-- 포스터 수정  -->
				<ul class="basic">
					<li><span>기 &nbsp; &nbsp; &nbsp;본 : </span> ${movieInfo.info_nation} | ${movieInfo.info_time} | ${movieInfo.info_genre }</li>
					<li><span>개 봉 일 : 				  </span> ${movieInfo.info_showdate }</li>
					<li><span>감 &nbsp; &nbsp; &nbsp;독 : </span> ${movieInfo.info_director }</li>
					<li><span>등 &nbsp; &nbsp; &nbsp;급 : </span> ${movieInfo.info_rating }</li>
				</ul>
				 <a href="#" class="btn-rsv" data-no="${movieInfo.info_movie_code }" title="영화 예매하기">${movieInfo.status }</a>
				<!-- !!상영예정작인 영화는 예매하기가 아닌 상영예정이라고 표시해야함!! -->
				<h4 class="synopsis-title">줄거리</h4>
				<div class="synopsis">
					${movieInfo.info_story }
				</div>
			</div>
		</div>
		<div class="section group section-mypage">
				<div class="wrap-list">
					<div style="margin-top: -40px; margin-bottom: 10px;">리뷰 보기</div>
					<table class="bbs-list bbs-list-mypage-coupon">
						<thead>
							<tr>
								<th>작성자</th>
								<th>한줄평</th>
								<th>별 점</th>
								<th>작성일자</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="Review" items="${movieInfoReview}">
							    <tr>
							        <td>${Review.rev_id}</td>
							        <td>${Review.rev_content}</td>
							        <td>${Review.rev_rating}</td>
							        <td>${Review.rev_date}</td>
							    </tr>
							</c:forEach>
							<c:if test="${empty movieInfoReview}">
								<tr>
									<td colspan="4">작성된 리뷰가 없습니다</td>
								</tr>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
	</div>
</div>
<!-- 작업중 로직만 쓸것 -->
<script type="text/javascript">
  $(document).ready(function () {
        $(".section-movie-list").on("mouseenter", "ul > li > span.over > a", function () {
            $(this).parent().addClass("on");
            if ($(this).hasClass("info")) {
                $(this).parent().removeClass("down");
                $(this).parent().addClass("up");
            }
            if ($(this).hasClass("rsv")) {
                $(this).parent().removeClass("up");
                $(this).parent().addClass("down");
            }
        });
        
        $(".section-movie-list").on("mouseleave", "ul>li> span.over", function () {
            $(this).closest("ul").find("span.over").removeClass("on");
        });
        if($(".btn-rsv").html()==("예매하기")){
        	$(".btn-rsv").attr('href', 'reservation')
        	
        }
        
 });
 </script>
<jsp:include page="../footer.jsp"/>
</body>
</html>