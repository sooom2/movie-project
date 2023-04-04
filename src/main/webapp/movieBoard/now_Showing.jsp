<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/common.css" rel="stylesheet">
<link href="../css/inc.css" rel="stylesheet">
<link href="../css/sub.css" rel="stylesheet">
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
			    	<a href="/movieInfo.jsp"> 여기에요</a>
				    <li data-moviecode="20226270"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/movieBoard/movieInfo.jsp?MovieCode=20226270" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20226270&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">1</span><span class="rate-12">12</span>스즈메의 문단속</div></li>
				    <li data-moviecode="20197654"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20197654" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20197654&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">2</span><span class="rate-12">12</span>소울메이트</div></li>
				    <li data-moviecode="20228555"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20228555" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20228555&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">3</span><span class="rate-12">12</span>더 퍼스트 슬램덩크</div></li>
				    <li data-moviecode="20224780"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20224780" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20224780&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">4</span><span class="rate-15">15</span>모나리자와 블러드 문</div></li>
				    <li data-moviecode="20210544"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20210544" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20210544&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">5</span><span class="rate-15">15</span>웅남이</div></li>
				    <li data-moviecode="20230767"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20230767" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20230767&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">6</span><span class="rate-12">12</span>파벨만스</div></li>
				    <li data-moviecode="20239905"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20239905" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20239905&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">7</span><span class="rate-all">0</span>꼬마돼지 베이브의 바다 대모험</div></li>
				    <li data-moviecode="20226410"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20226410" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20226410&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">8</span><span class="rate-12">12</span>던전 앤 드래곤: 도적들의 명예</div></li>
				    <li data-moviecode="20230641"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20230641" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20230641&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">9</span><span class="rate-12">12</span>오토라는 남자</div></li>
				    <li data-moviecode="20230747"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20230747" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20230747&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">10</span><span class="rate-15">15</span>샷건 웨딩</div></li>
				    <li data-moviecode="20239665"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20239665" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20239665&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">11</span><span class="rate-all">0</span>블루 서멀, 같은 하늘을 보고 싶어</div></li>
				    <li data-moviecode="20226489"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20226489" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20226489&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">12</span><span class="rate-12">12</span>리바운드</div></li>
				    <li data-moviecode="20231010"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20231010" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20231010&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">13</span><span class="rate-15">15</span>에어</div></li>
				    <li data-moviecode="20227863"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20227863" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20227863&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">14</span><span class="rate-15">15</span>라이스보이 슬립스</div></li>
				    <li data-moviecode="20030043"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20030043" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20030043&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">15</span><span class="rate-x">18</span>[판므파탈]그녀에게</div></li>
				    <li data-moviecode="20090557"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20090557" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20090557&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">16</span><span class="rate-15">15</span>[판므파탈]호우시절</div></li>
				    <li data-moviecode="20128746"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20128746" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20128746&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">17</span><span class="rate-all">0</span>[판므파탈]서칭 포 슈가맨</div></li>
				    <li data-moviecode="20136292"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20136292" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20136292&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">18</span><span class="rate-x">18</span>[판므파탈]가장 따뜻한 색, 블루</div></li>
				    <li data-moviecode="20143253"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20143253" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20143253&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">19</span><span class="rate-x">18</span>존 윅</div></li>
				    <li data-moviecode="20149629"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20149629" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20149629&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">20</span><span class="rate-15">15</span>[판므파탈]비긴 어게인</div></li>
				    <li data-moviecode="20151821"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20151821" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20151821&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">21</span><span class="rate-15">15</span>[판므파탈]러브 앤 머시</div></li>
				    <li data-moviecode="20157065"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20157065" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20157065&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">22</span><span class="rate-15">15</span>[판므파탈]맥베스</div></li>
				    <li data-moviecode="20166101"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20166101" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20166101&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">23</span><span class="rate-x">18</span>존 윅 - 리로드</div></li>
				    <li data-moviecode="20166322"><span class="over over-a"><a href="#" class="rsv">예매하기</a><a href="/Movie/Info?MovieCode=20166322" class="info">상세정보</a></span><img src="https://file.cineq.co.kr/i.aspx?movieid=20166322&amp;size=210" class="posterlist"><div class="movie-desc"><span class="label">24</span><span class="rate-x">18</span>[판므파탈]러브</div></li>
				   </ul>
			</div>
        </div>
    </div>
<script type="text/javascript">
    $(document).ready(function () {

        $("ul>li a.rsv", "div.now_showing").click(function (e) {
            e.preventDefault();
            
            //closet() 가장 가까운 부모 선택
            //예매하기 버튼을 눌렀을때 그 항목의 부모선택자 의 moviecode를 movieCode에 저장
            var movieCode = $(this).closest("li").data("moviecode");
				
            //예매하는 페이지 띄우는 것 같은
            //게다가 거기에 movieCode에 movieCode를 넣는
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