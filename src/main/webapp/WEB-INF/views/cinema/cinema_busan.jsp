<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path }/css/common.css" rel="stylesheet">
<link href="${path }/css/main.css" rel="stylesheet">
<link href="${path }/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/main.js"></script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
<div id="container">
        <div id="content">
            



<div class="section group section-theater-head" style="background: url('https://file.cineq.co.kr/j.aspx?guid=91b4ba79e66a4e389c4c2edec453eb82') center center no-repeat; background-size: cover; width: 100%; height: 550px; margin-top: 50px;">
    <div class="wrap">
        <!--<span class="name-1">CINE Q</span>-->
        <span class="name-2"><span style="background: rgba(0, 0, 0, 0.4);padding-right:5px;padding-left:5px;"><span>경주보문</span></span></span>
        <span class="name-3"><span style="background: rgba(0, 0, 0, 0.4);padding:5px;padding-right:5px;"><span> 보문단지 내 위치. 경주 최대 규모 멀티플렉스. 전관 레이저 영사기, 전좌석 양팔걸이 가죽시트</span></span></span>
        <a href="/Customer/CoopWrite" class="btn-inquiry loginpop">제휴/대관문의</a>
    </div>
</div>

<div class="section group section-theater-body">
    <div class="wrap">
        
    <ul class="selector">
        <li class="selected" onclick="location.href = '/Theater/Movie?TheaterCode=6001';">상영시간표</li>
        <li class="" onclick="location.href = '/Theater/Location?TheaterCode=6001';">약도/교통</li>
        <li class="" onclick="location.href = '/Theater/EventList?TheaterCode=6001';">이벤트</li>
        <li class="" onclick="location.href = '/Theater/Price?TheaterCode=6001';">관람료</li>
            <li class="" onclick="location.href = '/Theater/Partner?TheaterCode=6001';">제휴처</li>
    </ul>



        <div class="cal">
            <span class="big-m">April</span>
            <span class="small-yyyym">2023 April</span>
            <ul>
                <li><a href="#" class="prev">이전</a></li>
    <li class="datelist" data-date="2023-04-12" data-month="April" data-year="2023" data-montheng="April" style="display:"><a href="#" class="today selected "><span class="day">오늘</span>12</a></li>
    <li class="datelist" data-date="2023-04-13" data-month="April" data-year="2023" data-montheng="April" style="display:"><a href="#" class=""><span class="day">목</span>13</a></li>
    <li class="datelist" data-date="2023-04-14" data-month="April" data-year="2023" data-montheng="April" style="display:"><a href="#" class=""><span class="day">금</span>14</a></li>
    <li class="datelist" data-date="2023-04-15" data-month="April" data-year="2023" data-montheng="April" style="display:"><a href="#" class="sat"><span class="day">토</span>15</a></li>
    <li class="datelist" data-date="2023-04-16" data-month="April" data-year="2023" data-montheng="April" style="display:"><a href="#" class="sun"><span class="day">일</span>16</a></li>
    <li class="datelist" data-date="2023-04-17" data-month="April" data-year="2023" data-montheng="April" style="display:"><a href="#" class=""><span class="day">월</span>17</a></li>
    <li class="datelist" data-date="2023-04-18" data-month="April" data-year="2023" data-montheng="April" style="display:"><a href="#" class=""><span class="day">화</span>18</a></li>
    <li class="datelist" data-date="2023-04-19" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class=""><span class="day">수</span>19</a></li>
    <li class="datelist" data-date="2023-04-20" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class=""><span class="day">목</span>20</a></li>
    <li class="datelist" data-date="2023-04-21" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class=""><span class="day">금</span>21</a></li>
    <li class="datelist" data-date="2023-04-22" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class="disabled sat"><span class="day">토</span>22</a></li>
    <li class="datelist" data-date="2023-04-23" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class="disabled sun"><span class="day">일</span>23</a></li>
    <li class="datelist" data-date="2023-04-24" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class="disabled "><span class="day">월</span>24</a></li>
    <li class="datelist" data-date="2023-04-25" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class="disabled "><span class="day">화</span>25</a></li>
    <li class="datelist" data-date="2023-04-26" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class=""><span class="day">수</span>26</a></li>
    <li class="datelist" data-date="2023-04-27" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class=""><span class="day">목</span>27</a></li>
    <li class="datelist" data-date="2023-04-28" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class=""><span class="day">금</span>28</a></li>
    <li class="datelist" data-date="2023-04-29" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class="sat"><span class="day">토</span>29</a></li>
    <li class="datelist" data-date="2023-04-30" data-month="April" data-year="2023" data-montheng="April" style="display:none"><a href="#" class="sun"><span class="day">일</span>30</a></li>
    <li class="datelist" data-date="2023-05-01" data-month="May" data-year="2023" data-montheng="May" style="display:none"><a href="#" class=""><span class="day">월</span>1</a></li>
                <li><a href="#" class="next">이전</a></li>
            </ul>
        </div>
        <div class="selector-sub">
             <a href="#" data-listtype="movie" class="selected">영화별</a> | <a href="#" data-listtype="time">시간대별</a>
        </div>
        <div class="content">
            <ul class="desc">
                <li><span class="rate-all">전체</span> 전체 관람가</li>
                <li><span class="rate-12">12</span> 12세 관람가</li>
                <li><span class="rate-15">15</span> 15세 관람가</li>
                <li><span class="rate-x">청불</span> 청소년 관람불가</li>
            </ul>
            <div class="theater-movie">


<div class="priceclick"><div class="pricebutton"><a href="#" class="btn priceTableBtn" title="관람료 안내 팝업">관람료 안내</a></div></div>

    

            <div class="each-movie-time">
                <div class="title"><span class="rate-12">12</span>스즈메의 문단속 </div>
        
                <div class="screen">
                    <div class="screen-name" style="font-size:15px;line-height:20px;"><br>2 관</div>
                    <div class="time-block">
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202262700" data-screenplanid="644707" data-playnumber="3">
                                        <a href="#">
                                            16:00<span class="to"> ~ 18:11</span>
                                                <span class="seats-status">142 / 144</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202262700" data-screenplanid="644708" data-playnumber="4">
                                        <a href="#">
                                            18:30<span class="to"> ~ 20:41</span>
                                                <span class="seats-status">144 / 144</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202262700" data-screenplanid="644709" data-playnumber="5">
                                        <a href="#">
                                            21:00<span class="to"> ~ 23:11</span>
                                                <span class="seats-status">144 / 144</span>
                                        </a>
                                                                                    <div class="timetable-attrib-night">심야</div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            </div>
            
                    </div>
                </div>
        
            </div>
    
    

            <div class="each-movie-time">
                <div class="title"><span class="rate-12">12</span>던전 앤 드래곤: 도적들의 명예 </div>
        
                <div class="screen">
                    <div class="screen-name" style="font-size:15px;line-height:20px;"><br>5 관</div>
                    <div class="time-block">
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202264100" data-screenplanid="645258" data-playnumber="3">
                                        <a href="#">
                                            16:05<span class="to"> ~ 18:28</span>
                                                <span class="seats-status">98 / 98</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202264100" data-screenplanid="645260" data-playnumber="5">
                                        <a href="#">
                                            21:00<span class="to"> ~ 23:23</span>
                                                <span class="seats-status">98 / 98</span>
                                        </a>
                                                                                    <div class="timetable-attrib-night">심야</div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            </div>
            
                    </div>
                </div>
        
            </div>
    
    

            <div class="each-movie-time">
                <div class="title"><span class="rate-12">12</span>리바운드 </div>
        
                <div class="screen">
                    <div class="screen-name" style="font-size:15px;line-height:20px;"><br>6 관</div>
                    <div class="time-block">
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202264890" data-screenplanid="645253" data-playnumber="3">
                                        <a href="#">
                                            16:00<span class="to"> ~ 18:12</span>
                                                <span class="seats-status">98 / 98</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202264890" data-screenplanid="645254" data-playnumber="4">
                                        <a href="#">
                                            18:30<span class="to"> ~ 20:42</span>
                                                <span class="seats-status">98 / 98</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202264890" data-screenplanid="645255" data-playnumber="5">
                                        <a href="#">
                                            21:00<span class="to"> ~ 23:12</span>
                                                <span class="seats-status">98 / 98</span>
                                        </a>
                                                                                    <div class="timetable-attrib-night">심야</div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            </div>
            
                    </div>
                </div>
        
            </div>
    
    

            <div class="each-movie-time">
                <div class="title"><span class="rate-12">12</span>거울 속 외딴 성 </div>
        
                <div class="screen">
                    <div class="screen-name" style="font-size:15px;line-height:20px;"><br>5 관</div>
                    <div class="time-block">
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202310090" data-screenplanid="645259" data-playnumber="4">
                                        <a href="#">
                                            18:40<span class="to"> ~ 20:46</span>
                                                <span class="seats-status">98 / 98</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
                    </div>
                </div>
        
            </div>
    
    

            <div class="each-movie-time">
                <div class="title"><span class="rate-15">15</span>에어 </div>
        
                <div class="screen">
                    <div class="screen-name" style="font-size:15px;line-height:20px;"><br>4 관</div>
                    <div class="time-block">
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202310100" data-screenplanid="645247" data-playnumber="3">
                                        <a href="#">
                                            18:10<span class="to"> ~ 20:11</span>
                                                <span class="seats-status">94 / 95</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202310100" data-screenplanid="645249" data-playnumber="4">
                                        <a href="#">
                                            20:35<span class="to"> ~ 22:36</span>
                                                <span class="seats-status">95 / 95</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
                    </div>
                </div>
        
            </div>
    
    

            <div class="each-movie-time">
                <div class="title"><span class="rate-x">18</span>존 윅 4 </div>
        
                <div class="screen">
                    <div class="screen-name" style="font-size:15px;line-height:20px;"><br>4 관</div>
                    <div class="time-block">
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202310890" data-screenplanid="645242" data-playnumber="2">
                                        <a href="#">
                                            14:50<span class="to"> ~ 17:49</span>
                                                <span class="seats-status">88 / 95</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
                    </div>
                </div>
        
        
                <div class="screen">
                    <div class="screen-name" style="font-size:15px;line-height:20px;"><br>3 관</div>
                    <div class="time-block">
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202310890" data-screenplanid="645234" data-playnumber="3">
                                        <a href="#">
                                            16:00<span class="to"> ~ 18:59</span>
                                                <span class="seats-status">130 / 131</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202310890" data-screenplanid="645235" data-playnumber="4">
                                        <a href="#">
                                            19:20<span class="to"> ~ 22:19</span>
                                                <span class="seats-status">127 / 131</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
                    </div>
                </div>
        
        
                <div class="screen">
                    <div class="screen-name" style="font-size:15px;line-height:20px;"><br>1 관</div>
                    <div class="time-block">
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202310890" data-screenplanid="643605" data-playnumber="3">
                                        <a href="#">
                                            17:10<span class="to"> ~ 20:09</span>
                                                <span class="seats-status">196 / 201</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
            
                                    <div class="time" data-playdate="20230412" data-theatercode="6001" data-moviecode="202310890" data-screenplanid="643606" data-playnumber="4">
                                        <a href="#">
                                            20:30<span class="to"> ~ 23:29</span>
                                                <span class="seats-status">200 / 201</span>
                                        </a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
            
                    </div>
                </div>
        
            </div>
    
<script type="text/javascript">
    $("div.time>a", "div.each-movie-time").click(function (e) {
        e.preventDefault();
        var playDate = $(this).closest("div.time").data("playdate"),
            theaterCode = $(this).closest("div.time").data("theatercode"),
            movieCode = $(this).closest("div.time").data("moviecode"),
            screenPlanId = $(this).closest("div.time").data("screenplanid"),
            playNumber = $(this).closest("div.time").data("playnumber");

        $.desktop.reserve.openTheater({
            playDate: playDate,
            theaterCode: theaterCode,
            movieCode: movieCode,
            screenPlanId: screenPlanId,
            playNumber: playNumber
        });
        return false;
    });
</script>

<script language="javascript">
$(document).ready(function(){
    $(".priceTableBtn").on("click", function (e) {
        e.preventDefault();
        $.desktop.member.priceTable("6001");
    });
});
</script></div>
        </div>
        <div class="expl">
            <ul>
                <li>상영시간 20분 전까지만 취소가 가능합니다.(F&amp;B 영화는 2시간 전)</li>
                    <li>지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분후 시작합니다.</li>
                <li>쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
                <li>모바일 캡쳐 화면 소지 시 입장 제한을 받을 수 있습니다.</li>
            </ul>
        </div>
    </div><!--.wrap-->
</div>

        </div>
    </div>
	<jsp:include page="../footer.jsp" />
</body>
</html>