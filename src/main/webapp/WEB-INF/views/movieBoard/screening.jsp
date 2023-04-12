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
			    	<a href="#" class="rsv">예매하기</a>
			    	<a href="MovieInfo?info_movie_code=${movie.info_movie_code }" class="info">상세정보</a>
		    	</span>
		    	<img src="${movie.info_movie_poster}" class="posterlist">
		    	<div class="movie-desc">
		    		<span class="label"> 12 </span>
		    		<span class="rate-12">12</span>${movie.info_movie_title }
    			</div>
		    <div class="btn-util">
		    	<button type="button" class="button btn-like" data-no="01309400">
	    			<i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i>
	    			<span>${movie.like_count }</span>
	    		</button>
                <a href="#" class="button purple bokdBtn" data-no="${movie.info_movie_code }" title="영화 예매하기">예매</a>
            </div>
  			</li>
		</c:forEach>		    
   		</ul>
   		</div>
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