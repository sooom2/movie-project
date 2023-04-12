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
<link href="resources/css/movieInfo.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
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
					<span class="rate-12">${movieInfo.info_rating }</span>
					${movieInfo.info_movie_title }
				</h3>
				<img src="${movieInfo.info_movie_poster }" alt="포스터" class="poster posterlist" />
				<!-- 포스터 수정  -->
				<ul class="basic">
					<li><span>기 &nbsp; &nbsp; &nbsp;본 : </span> ${movieInfo.info_nation} | ${movieInfo.info_time} | ${movieInfo.info_genre }</li>
					<li><span>개 봉 일 : </span> ${movieInfo.info_showdate }</li>
					<li><span>감 &nbsp; &nbsp; &nbsp;독 : </span> ${movieInfo.info_director }</li>
					<li><span>배 &nbsp; &nbsp; &nbsp;우 : </span> 배우
<!-- 					<a	href="http://movie.naver.com/movie/bi/pi/basic.naver?code=363249">하라 나노카</a>(이와토 스즈메 목소리), -->
<!-- 					 <a	href="http://movie.naver.com/movie/bi/pi/basic.naver?code=305540">마츠무라 호쿠토</a>(무나카타 소타 목소리), -->
<!-- 					  <a href="http://movie.naver.com/movie/bi/pi/basic.naver?code=408">후카츠 에리</a>(이와토 타마키 목소리) -->
					  </li>
					<li><span>등 &nbsp; &nbsp; &nbsp;급 : </span> ${movieInfo.info_rating }</li>
				</ul>
				<a href="#" class="btn-rsv">예매하기</a>
		
				<h4 class="synopsis-title">줄거리</h4>
				<div class="synopsis">
					${movieInfo.info_story }
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
//     $(function () {
    	
//         $("a.btn-rsv", "div.section-movie-info").click(function (e) {
//             e.preventDefault();
//             $.desktop.reserve.open({
//                 playDate: '20230404',
//                 movieCode: '20226270'
//             });
//             return false;
//         });
//     })
</script>
<jsp:include page="../footer.jsp"/>
</body>
</html>