<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path }/css/common.css" rel="stylesheet">
<link href="${path }/css/movieInfo.css" rel="stylesheet">
<link href="${path }/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/main.js"></script>
</head>

<body id="top">
<jsp:include page="../nav.jsp" />   
 <div id="content">
           
<div class="selector"></div>
<div class="section group section-movie-list screening">
    <ul>
		    <li data-moviecode="20226270"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20226270" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20226270&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">1</span><span class="rate-12">12</span>스즈메의 문단속</div></li>
		    <li data-moviecode="20197654"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20197654" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20197654&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">2</span><span class="rate-12">12</span>소울메이트</div></li>
		    <li data-moviecode="20224780"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20224780" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20224780&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">3</span><span class="rate-15">15</span>모나리자와 블러드 문</div></li>
		    <li data-moviecode="20210544"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20210544" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20210544&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">4</span><span class="rate-15">15</span>웅남이</div></li>
		    <li data-moviecode="20230767"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20230767" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20230767&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">5</span><span class="rate-12">12</span>파벨만스</div></li>
		    <li data-moviecode="20226410"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20226410" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20226410&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">6</span><span class="rate-12">12</span>던전 앤 드래곤: 도적들의 명예</div></li>
		    <li data-moviecode="20230641"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20230641" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20230641&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">7</span><span class="rate-12">12</span>오토라는 남자</div></li>
		    <li data-moviecode="20239665"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20239665" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20239665&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">8</span><span class="rate-all">0</span>블루 서멀, 같은 하늘을 보고 싶어</div></li>
		    <li data-moviecode="20226489"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20226489" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20226489&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">9</span><span class="rate-12">12</span>리바운드</div></li>
		    <li data-moviecode="20231010"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20231010" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20231010&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">10</span><span class="rate-15">15</span>에어</div></li>
		    <li data-moviecode="20227863"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20227863" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20227863&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">11</span><span class="rate-15">15</span>라이스보이 슬립스</div></li>
		    <li data-moviecode="20030043"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20030043" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20030043&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">12</span><span class="rate-x">18</span>[판므파탈]그녀에게</div></li>
		    <li data-moviecode="20128746"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20128746" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20128746&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">13</span><span class="rate-all">0</span>[판므파탈]서칭 포 슈가맨</div></li>
		    <li data-moviecode="20136292"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20136292" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20136292&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">14</span><span class="rate-x">18</span>[판므파탈]가장 따뜻한 색, 블루</div></li>
		    <li data-moviecode="20143253"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20143253" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20143253&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">15</span><span class="rate-x">18</span>존 윅</div></li>
		    <li data-moviecode="20149629"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20149629" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20149629&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">16</span><span class="rate-15">15</span>[판므파탈]비긴 어게인</div></li>
		    <li data-moviecode="20151821"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20151821" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20151821&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">17</span><span class="rate-15">15</span>[판므파탈]러브 앤 머시</div></li>
		    <li data-moviecode="20157065"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20157065" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20157065&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">18</span><span class="rate-15">15</span>[판므파탈]맥베스</div></li>
		    <li data-moviecode="20166101"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20166101" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20166101&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">19</span><span class="rate-x">18</span>존 윅 - 리로드</div></li>
		    <li data-moviecode="20166322"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20166322" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20166322&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">20</span><span class="rate-x">18</span>[판므파탈]러브</div></li>
		    <li data-moviecode="20167904"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20167904" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20167904&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">21</span><span class="rate-12">12</span>[판므파탈]라라랜드</div></li>
		    <li data-moviecode="20167922"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20167922" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20167922&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">22</span><span class="rate-15">15</span>[판므파탈]핵소 고지</div></li>
		    <li data-moviecode="20178469"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20178469" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20178469&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">23</span><span class="rate-15">15</span>[판므파탈]올 더 머니</div></li>
		    <li data-moviecode="20191604"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20191604" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20191604&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">24</span><span class="rate-15">15</span>[판므파탈]애프터</div></li>
		    <li data-moviecode="20196655"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20196655" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20196655&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">25</span><span class="rate-x">18</span>존 윅 3: 파라벨룸</div></li>
		    <li data-moviecode="20200065"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20200065" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20200065&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">26</span><span class="rate-12">12</span>[판므파탈]더 파더</div></li>
		    <li data-moviecode="20200154"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20200154" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20200154&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">27</span><span class="rate-15">15</span>킬링 로맨스</div></li>
		    <li data-moviecode="20202502"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20202502" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20202502&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">28</span><span class="rate-15">15</span>[판므파탈]애프터: 그 후</div></li>
		    <li data-moviecode="20205144"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20205144" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20205144&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">29</span><span class="rate-12">12</span>[판므파탈]미나리</div></li>
		    <li data-moviecode="20206447"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20206447" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20206447&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">30</span><span class="rate-all">0</span>[판므파탈]라라걸</div></li>
		    <li data-moviecode="20210662"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20210662" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20210662&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">31</span><span class="rate-15">15</span>[판므파탈]애프터: 관계의 함정</div></li>
		    <li data-moviecode="20212372"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20212372" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20212372&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">32</span><span class="rate-12">12</span>장기자랑</div></li>
		    <li data-moviecode="20218904"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20218904" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20218904&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">33</span><span class="rate-12">12</span>[판므파탈]코다</div></li>
		    <li data-moviecode="20226568"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20226568" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20226568&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">34</span><span class="rate-15">15</span>[판므파탈]애프터: 에버 해피</div></li>
		    <li data-moviecode="20230764"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20230764" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20230764&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">35</span><span class="rate-all">0</span>오글리스: 웰컴 투 냄새 마을</div></li>
		    <li data-moviecode="20230804"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20230804" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20230804&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">36</span><span class="rate-15">15</span>불멸의 여자</div></li>
		    <li data-moviecode="20231089"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20231089" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20231089&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">37</span><span class="rate-x">18</span>존 윅 4</div></li>
		    <li data-moviecode="20231144"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20231144" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20231144&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">38</span><span class="rate-x">18</span>곰돌이 푸: 피와 꿀</div></li>
		    <li data-moviecode="20239955"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20239955" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20239955&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">39</span><span class="rate-15">15</span>나의 연인에게</div></li>
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