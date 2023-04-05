<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>


    <!--meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"-->
    
<!--     <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"> -->
<!--     <link rel="icon" href="/favicon.ico" type="image/x-icon">    -->

<title>씨네Q</title>
<link href="../css/common.css" rel="stylesheet">
<link href="../css/inc.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<link href="../css/sub.css" rel="stylesheet">
<script type="text/javascript"	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

</head>

<body>
<jsp:include page="../nav.jsp" />
	<div id="container">
		<div id="content">

			<div class="section group section-movie-list latest">
				
				<div class="selector">
					<a href="#" class="selected" data-ordertype="2">개봉일순</a> | <a
						href="#" data-ordertype="1">가나다순</a>
				</div>
				<ul id="movieList">
					<li><span class="over over-a"><a href="#" class="rsv">예매하기</a><a
							href="/Movie/Info?MovieCode=20173226" class="info">상세정보</a></span><img
						src="https://file.cineq.co.kr/i.aspx?movieid=20173226&amp;size=210"
						class="posterlist">
					<div class="movie-desc">
							<span class="rate-15">15세이상</span>패왕별희 디 오리지널
						</div></li>
					<li><span class="over over-a"><a href="#" class="rsv">예매하기</a><a
							href="/Movie/Info?MovieCode=20143253" class="info">상세정보</a></span><img
						src="https://file.cineq.co.kr/i.aspx?movieid=20143253&amp;size=210"
						class="posterlist">
					<div class="movie-desc">
							<span class="rate-x">청불</span>존 윅
						</div></li>
					<li><span class="over over-a"><a href="#" class="rsv">예매하기</a><a
							href="/Movie/Info?MovieCode=20166101" class="info">상세정보</a></span><img
						src="https://file.cineq.co.kr/i.aspx?movieid=20166101&amp;size=210"
						class="posterlist">
					<div class="movie-desc">
							<span class="rate-x">청불</span>존 윅 - 리로드
						</div></li>
					<li><span class="over over-a"><a href="#" class="rsv">예매하기</a><a
							href="/Movie/Info?MovieCode=20196655" class="info">상세정보</a></span><img
						src="https://file.cineq.co.kr/i.aspx?movieid=20196655&amp;size=210"
						class="posterlist">
					<div class="movie-desc">
							<span class="rate-x">청불</span>존 윅 3: 파라벨룸
						</div></li>
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
					
					        $("ul#movieList>li a.rsv", "div.latest").click(function (e) {
					            e.preventDefault();
					            var movieCode = $(this).closest("li").data("moviecode");
					
					            $.desktop.reserve.openMovie({
					                movieCode: movieCode
					            });
					            return false;
					        });
					    });
					</script>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
