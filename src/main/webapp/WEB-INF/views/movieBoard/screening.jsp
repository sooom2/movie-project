<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/inc.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/movieInfo.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<jsp:include page="../nav.jsp" />   

</head>

<body id="top">

<div id = "container">
 	<div id="content">
	<div class="selector"></div>
	<div class="section group section-movie-list screening">
    	<ul>
		<c:forEach var="movie" items="${movieList }">
		    <li data-moviecode="${movie.info_movie_code }">
			    <span class="over over-a">
			    	<a href="#" class="rsv">
			    		<span class="over-btn-rsv">예매하기</span></a>
			    	<a href="MovieInfo?info_movie_code=${movie.info_movie_code }" class="info">
			    		<span class="over-btn-info">상세정보</span></a>
		    	</span>
		    	<img src="${movie.info_movie_poster}" class="posterlist">
		    	<div class="movie-desc">
		    		<p class="rate-15">${movie.info_rating }</p>
		    		<p title="${movie.info_movie_title }" class="tit">${movie.info_movie_title }</p>
    			</div>
		    <div class="btn-util">
                <a href="#" class="button purple bokdBtn" data-no="${movie.info_movie_code }" title="영화 예매하기">예매</a>
				 <div class="like-btn">
					<a href="javascript:;" class="icon heart">
					<img src="resources/images/ico/before-like.png" alt="찜하기">
					<span class="likeNum">${movie.like_count }</span></a>
				</div>
            </div>
  			</li>
		</c:forEach>		    
   		</ul>
   		</div>
	</div>
</div>
<!-- <li tabindex="0" class="no-img"><div class="movie-list-info"> -->
<!--     <p class="rank" style="">4<span class="ir">위</span></p> -->
<!--         <img src="https://img.megabox.co.kr/SharedImg/2023/03/31/HEsfXkccRl56JJb02I3flCVkCOfu3Goc_420.jpg" alt="킬링 로맨스" class="poster lozad" onerror="noImg(this)">    <div class="curation">        <p class="film" style="display: none">필름 소사이어티</p>        <p class="classic" style="display: none">클래식 소사이어티</p>    </div>    <div class="screen-type2">        <p name="dbcScrean" style="display: none"><img src="/static/pc/images/common/btn/mov_top_tag_db.png" alt="dolby"></p>        <p name="mxScreen" style="display: none"><img src="/static/pc/images/common/btn/mov_top_tag_mx.png" alt="mx"></p>    </div>    <div class="movie-score" style="opacity: 0;"> -->
<!--          <a href="#" class="wrap movieBtn" data-no="23025100" title="킬링 로맨스 상세보기"> -->
<!--          <div class="summary">로맨스는 없다!줄거리</div>   -->
<!--          <div class="my-score equa" style="display: none;"> -->
<!--                           <div class="preview">                    <p class="tit">관람평</p> -->
<!--                                         <p class="number">0<span class="ir">점</span></p>                </div>            </div>        </a>    </div></div><div class="tit-area">    <p class="movie-grade age-15">,</p>    <p title="킬링 로맨스" class="tit">킬링 로맨스</p></div><div class="rate-date">    <span class="rate">예매율 8.8%</span>    <span class="date">개봉일 2023.04.14</span></div><div class="btn-util">    <button type="button" class="button btn-like" data-no="23025100"><i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> <span>187</span></button>    <p class="txt movieStat1" style="display: none">상영예정</p>    <p class="txt movieStat2" style="display: none">4월 개봉예정</p>    <p class="txt movieStat5" style="display: none">개봉예정</p>    <p class="txt movieStat6" style="display: none">상영종료</p>    <div class="case col-2 movieStat3" style="display: none">        <a href="#" class="button purple bokdBtn" data-no="23025100" title="영화 예매하기">예매</a>        <a href="#" class="button purple img splBtn" data-no="23025100"><img src="/static/pc/images/common/btn/mov_list_db_btn.png" alt="dolby 버튼"></a>    </div>    <div class="case movieStat4" style="">        <a href="#" class="button purple bokdBtn" data-no="23025100" title="영화 예매하기">예매</a>    </div></div></li> -->
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
		
        $("ul>li a.rsv", "div.screening").click(function (e) {
            e.preventDefault();
            var info_movie_code = $(this).closest("li").data("moviecode");

            $.desktop.reserve.openMovie({
                movieCode: movieCode
            });
            return false;
        });
    });
   </script>
	<jsp:include page="../footer.jsp"/>
</body>
</html>