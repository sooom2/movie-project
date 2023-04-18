<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path }/resources/css/event.css" rel="stylesheet">
<link href="${path }/resources/css/common.css" rel="stylesheet">
<link href="${path }/resources/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/main.js"></script>
<script type="text/javascript">
    var eventId = 0;

    $(window).ready(function() {
        load_event_list();
        $(".section-event-list .btn-more").click(function () {
            load_event_list();
            return false;
        });
    });

    function load_event_list() {
	    $.ajax({
	        url: "eventMoreList",
	        dataType: "json",
	        data: { eventId: eventId, eventSort: -1},
	        method: "POST",
		    success: function (data) {
		        var events = data;
		        if (events.length == 0) {
		            $(".section-event-list .btn-more").hide();
			    } else {
		            $("#template-event-list").tmpl(events).appendTo(".section-event-list ul");
			        eventId = events[events.length - 1].EventId;
			    }
		    },
		    error: function(XMLHttpRequest, textStatus, errorThrown) {
            }
	    });
    }
</script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
		<div id="container">
        <div id="content">
            

			<div class="section group section-event-list">
			    <ul><li> 
	            <a href="Info?eventId=2044&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=3f9d5ccbfdd94b08aa0559b16614571c"><span class="desc-box"><span class="desc">&lt;더 퍼스트 슬램덩크&gt; 15주차 현장 이벤트</span><span class="date">2023.04.15~2023.04.18</span></span></a></li><li>         <a href="Info?eventId=2043&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=72cb2b6c2f444316ab37aad75d4fe46b"><span class="desc-box"><span class="desc">무비0원딜! &lt;슈퍼 마리오 브라더스&gt;</span><span class="date">2023.04.12~2023.05.14</span></span></a></li><li>         <a href="Info?eventId=2042&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=96151fc03ae34d0097d8d951fecffd57"><span class="desc-box"><span class="desc">&lt;사랑의 고고학&gt; 현장 이벤트</span><span class="date">2023.04.12~2023.04.18</span></span></a></li><li>         <a href="Info?eventId=2041&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=f3e2192843324b2393c8d116bca68993"><span class="desc-box"><span class="desc">무비0원딜! &lt;렌필드&gt;</span><span class="date">2023.04.11~2023.04.30</span></span></a></li><li>         <a href="Info?eventId=2040&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=94e82466ed2c407c81d2943b4d02554a"><span class="desc-box"><span class="desc">&lt;보이지 않아&gt; 회원 시사회</span><span class="date">2023.04.11~2023.04.14</span></span></a></li><li>         <a href="Info?eventId=2039&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=69af474557004c9b86b8573b5c51534e"><span class="desc-box"><span class="desc">&lt;리바운드&gt; 응원 상영회</span><span class="date">2023.04.15~2023.04.15</span></span></a></li><li>         <a href="Info?eventId=2038&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=a3071858a2844299ab0b8498bbc84e18"><span class="desc-box"><span class="desc">&lt;물안에서&gt; 포스터 증정 이벤트</span><span class="date">2023.04.12~2023.04.18</span></span></a></li><li>         <a href="Info?eventId=2037&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=4e5e7007f1cb4f629ef466680504a1d6"><span class="desc-box"><span class="desc">&lt;모나리자와 블러드 문&gt; 굿즈 패키지 상영회</span><span class="date">2023.04.15~2023.04.15</span></span></a></li><li>         <a href="Info?eventId=2036&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=1e4e218306a2418a9e446680c20e3d70"><span class="desc-box"><span class="desc">SPECIAL TICKET 83</span><span class="date">2023.04.14~2023.04.20</span></span></a></li><li>         <a href="Info?eventId=2033&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=514eca362de048e394a101000ebc718f"><span class="desc-box"><span class="desc">&lt;거울 속 외딴 성&gt; 관람 인증 이벤트</span><span class="date">2023.04.12~2023.04.18</span></span></a></li><li>         <a href="Info?eventId=2032&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=d513f2766b5b4132bd6443e353d83409"><span class="desc-box"><span class="desc">SERIES TICKET 39</span><span class="date">2023.04.12~2023.04.18</span></span></a></li><li>         <a href="Info?eventId=2030&amp;eventSort=-1"><img src="https://file.cineq.co.kr/j.aspx?guid=fc91e61003124d3588acfc360ae6142b"><span class="desc-box"><span class="desc">SPECIAL TICKET 82</span><span class="date">2023.04.12~2023.04.18</span></span></a></li></ul>
			    <a href="#" class="btn-more">더보기 +</a>
			</div>
        </div>
    </div>

		
	<jsp:include page="../footer.jsp" />
</body>
</html>