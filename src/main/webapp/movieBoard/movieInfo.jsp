<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
<link href="../css/common.css" rel="stylesheet">
<link href="../css/inc.css" rel="stylesheet">
<link href="../css/sub.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/info.css" rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

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
                <a href="#" class="btn-rsv">예매하기</a>
    </div><!--.wrap-->

</div>


        </div>
    </div>
  
<script type="text/javascript">
	$(function() {
		$.ajax({
			// 광해 
			// 20124079
			// 스즈메의 문단속
			// 20226270
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
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-125235578-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

        gtag('config', 'UA-125235578-1');
        $( document ).ready(function() {
                        
        });
    </script>
    <script type="text/javascript" src="https://pay.kcp.co.kr/plugin/payplus_web.jsp"></script><style type="text/css">                                                                                      .kcpTransDiv{                                                                                                filter:alpha(opacity=10); -khtml-opacity: 0.1; -moz-opacity: 0.1; opacity: 0.1; top:0px; left:0;         background-color:#000000; width:100%; height:100%; position:absolute; z-index:10000;                 }                                                                                                    </style>                                                                                                 <div id="kcp_content" style="background-color: white;"></div>                                           <div id="kcp_mask" class="kcpTransDiv" style="display:none"></div>                                       <div id="kcp_progress" class="spin_container"></div>                                                     <script type="text/javascript" src="https://pay.kcp.co.kr/plugin/js/ajax.js?KPDZ7UXDG830WRVZ3B18R7LIPTIVQQX7" charset="EUC-KR"></script><script type="text/javascript" src="https://pay.kcp.co.kr/plugin/cross_service/extends/util.js?KPDZ7UXDG830WRVZ3B18R7LIPTIVQQX7" charset="EUC-KR"></script><script type="text/javascript" src="https://pay.kcp.co.kr/plugin/cross_service/extends/spin.min.js?KPDZ7UXDG830WRVZ3B18R7LIPTIVQQX7"></script><script type="text/javascript" src="https://pay.kcp.co.kr/plugin/js/payplus_webExe.js?KPDZ7UXDG830WRVZ3B18R7LIPTIVQQX7" charset="EUC-KR"></script><script type="text/javascript" src="https://npay.kcp.co.kr/plugin/web_cross_hub.js?KPDZ7UXDG830WRVZ3B18R7LIPTIVQQX7" charset="EUC-KR"></script><script type="text/javascript" src="https://npay.kcp.co.kr/js/kcp_jquery-1.8.0.js?ver=N1W33DGD4LSOT8JBUA4MOIZ4GIAMBBOU" charset="EUC-KR"></script><script type="text/javascript" src="https://npay.kcp.co.kr/js/kcp_jquery.blockUI.js" charset="EUC-KR"></script><script type="text/javascript" src="https://npay.kcp.co.kr/js/ClientDataHandler.js?ver=N1W33DGD4LSOT8JBUA4MOIZ4GIAMBBOU" charset="EUC-KR"></script><script type="text/javascript" src="https://npay.kcp.co.kr/js/json2.js" charset="EUC-KR"></script><div id="kcp_event_form"></div><script type="text/javascript" src="https://npay.kcp.co.kr/js/npayUtils.js?ver=N1W33DGD4LSOT8JBUA4MOIZ4GIAMBBOU" charset="EUC-KR"></script>


	<jsp:include page="../footer.jsp"/>
</body>
</html>