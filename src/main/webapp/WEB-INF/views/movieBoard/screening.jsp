<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<link href="resources/css/movieInfo.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

</head>

<body id="top">
	<jsp:include page="../nav.jsp" />   
 	<div id="content">
           
	<div class="selector"></div>
	<div class="section group section-movie-list screening">
    	<ul>
		<c:forEach var="movie" items="${movie }">
		    <li data-moviecode="${movie.get('info_movie_code') }">
		    <span class="over over-a"><a href="#" class="rsv">예매하기</a>
		    <a href="/Movie/Info?MovieCode=${movie.get('info_movie_code') }" class="info">상세정보</a></span>
		    <img src="https://file.cineq.co.kr/i.aspx?movieid=${movie.get('info_movie_code') }&amp;size=210" class="posterlist">
		    <div class="movie-desc">
		    <span class="label"> </span> ${movie.get('info_movie_title') }
		    <div class="btn-util">
		    	<button type="button" class="button btn-like" data-no="01309400"><i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> <span>1.9k</span></button>
                <a href="#" class="button purple bokdBtn" data-no="01309400" title="영화 예매하기">예매</a>  </div>
		   
		    	</div>
		    </li>
		</c:forEach>		    
 	   </ul>
 	   
	</div>
</div>
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
            var movieCode = $(this).closest("li").data("moviecode");

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