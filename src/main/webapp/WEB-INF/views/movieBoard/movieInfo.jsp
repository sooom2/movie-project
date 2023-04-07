<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- 
	관리페이지로 이동할 페이지로 여기서는 그 DB값만 받을 예정 
 -->
<meta charset="UTF-8">
<!-- 
	해야할 일 : 서블릿으로 이 페이지에 movieCode를 가져와야함
	이 페이지에서 쓰는 것
	제작국가 : 쇼타임 : 장르
	개봉일
	감독
	배우 : [///]
	등급 : 
	줄거리
	티저
 -->
<title>Insert title here</title>
<link href="${path }/css/common.css" rel="stylesheet">
<link href="${path }/css/movieInfo.css" rel="stylesheet">
<link href="${path }/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/main.js"></script>
</head>
<body id="top">
  
<jsp:include page="../nav.jsp" />   
<!-- <script type="text/javascript"> -->
<!--      showTheater(0); -->
<!-- </script> -->

    <div id="container">
        <div id="content">
            
<div class="wrap-movie-title">
    <h2 class="movie-title">상세보기</h2>
</div>

<div class="section group section-movie-info">

    <div class="wrap">
<!--         <img src="https://file.cineq.co.kr/i.aspx?movieid=20226270&amp;size=210" alt="포스터" class="poster posterlist"> -->
        <ul class="basic">

        </ul>
        <a href="#" class="btn-rsv">예매하기</a>

        <h4 class="synopsis-title">줄거리</h4>

        <div class="synopsis">
           
        </div>
    </div><!--.wrap-->

</div>


        </div>
    </div>
  
<script type="text/javascript">
	$(function() {
		$.ajax({
			url:"http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=20226270",
			dataType:"json",
			success: function(data){
				//영화코드
				let movieCd = data.movieInfoResult.movieInfo.movieCd;
				//영화명
				let movieNm = data.movieInfoResult.movieInfo.movieNm;
				//개봉일
				let openDt = data.movieInfoResult.movieInfo.openDt;
				//감독명
				let peopleNm = data.movieInfoResult.movieInfo.directors[0].peopleNm;
				//심의정보
				let watchGradeNm = data.movieInfoResult.movieInfo.audits[0].watchGradeNm;
				//장르명
				let genreNm = data.movieInfoResult.movieInfo.genres[0].genreNm;
				//런타임
				let showTm = data.movieInfoResult.movieInfo.showTm
				//배우
				let actors1 = "";
				let actors2 = "";
				let actors3 = "";
				if(data.movieInfoResult.movieInfo.actors[0] != null){
					actors1 = data.movieInfoResult.movieInfo.actors[0].peopleNm;
					actors2 = data.movieInfoResult.movieInfo.actors[1].peopleNm;
					actors3 = data.movieInfoResult.movieInfo.actors[2].peopleNm;
				}
				//제작상태
				let prdtStatNm = data.movieInfoResult.movieInfo.prdtStatNm;
				//국가
				let nationNm = data.movieInfoResult.movieInfo.nations[0].nationNm;
				$(".wrap").prepend("<h3><span class=rate-12>12</span>"+movieNm+"</h3>"+
						"<img src='https://file.cineq.co.kr/i.aspx?movieid="+movieCd+"&amp;size=210' alt='포스터' class='poster posterlist'>"
				);
				$(".basic").append(
		            "<li><span>기 &nbsp; &nbsp; &nbsp;본 : </span>" + nationNm + " | " +showTm + "분 | " + genreNm +"</li>"
		            + "<li><span>개 봉 일 : </span> " + openDt + "</li>"
		            + "<li><span>감 &nbsp; &nbsp; &nbsp;독 : </span>" + peopleNm + "</li>" 
		            + "<li><span>배 &nbsp; &nbsp; &nbsp;우 : </span>" + actors1 + " " + actors2 + " " + actors3 + "</li>" 
		            + "<li><span>등 &nbsp; &nbsp; &nbsp;급 : </span>" + watchGradeNm +"</li>"
				)
			}
		});
	});
</script>
	<jsp:include page="../footer.jsp"/>
</body>
</html>