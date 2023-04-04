<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/common.css" rel="stylesheet">
<link href="../css/inc.css" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body id="top">
<jsp:include page="../nav.jsp" />   
    <div id="container">
        <div id="content">
			<div class="selector"></div>
			<div class="section group section-movie-list now_showing">
			
			    <ul>
				    <li data-moviecode="20226270"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/movieBoard/movieInfo.jsp?MovieCode=20226270" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20226270&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">1</span><span class="rate-12">12</span>스즈메의 문단속</div></li>
				    <li data-moviecode="20197654"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20197654" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20197654&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">2</span><span class="rate-12">12</span>소울메이트</div></li>
				   </ul>
		   		   상세정보, 예매하기 버튼 페이지 삽입
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

        $("ul>li a.rsv", "div.now_showing").click(function (e) {
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