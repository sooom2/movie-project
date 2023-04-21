<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">  
<title>Insert title here</title>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/mypage.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources//js/main.js"></script>
</head>
<body>

	<jsp:include page="../nav.jsp" />
	<div id="container">
		<div id="content">
			<div class="wrap-sitemap-title">
				<h2 class="sitemap-title">마이페이지</h2>
			</div>
			<div class="section group section-mypage-summary">
				<div class="summary summary-1">
					<h3>회원정보</h3>
					<a href="mypageI" class="btn btn-top">회원정보 관리</a>

					<div class="username">
						${member.member_name } 님<span class="point">${member.member_point }P</span>
					</div>

					<div class="username">
						선호극장 <span class="right"> ${member.member_prefer_branch } </span>

					</div>

					<div class="username">
						선호장르 <span class="right"> ${member.member_prefer_genre } </span>
					</div>

				</div>
				<div class="summary summary-2">
					<h3>
						최근 예매 <span class="num">( 0 )</span>
					</h3>
				</div>
				<div class="summary summary-3">
					<h3>추천영화</h3>
					<c:forEach var="movieList" items="${movieList}">
					&nbsp;&nbsp; <?xml version="1.0" ?><svg class="feather feather-video" fill="none" height="18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><polygon points="23 7 16 12 23 17 23 7"/><rect height="14" rx="2" ry="2" width="15" x="1" y="5"/></svg>
						${movieList.get("info_movie_title")}<br>
					</c:forEach>
				</div>
			</div>
			<div class="section group section-mypage-select">
				<ul class="selector-summary">
					<li><a href="mypageR" class="selected">예매/취소내역</a></li>
					<li><a href="mypageS" class="">결제내역</a></li>
					<li><a href="mypageP" class="">포인트내역</a></li>
					<li><a href="mypageQ" class=" ">문의내역</a></li>
					<li><a href="mypageRv" class=" ">영화리뷰</a></li>
				</ul>
			</div>
			<script id="template-headerlatestcoupon-list"
				type="text/x-jquery-tmpl">
    <li><a class="btn-cp" onclick="return false;">${CouponName}</a></li>
</script>
			<script id="template-headerlatestlogin-list"
				type="text/x-jquery-tmpl">    
  				  <li>${Description} ${Date} - ${IP}</li>    
			</script>
			<script id="template-headerlatestreserve-info"
				type="text/x-jquery-tmpl">
    <h3>최근 예매 <span class="num">( 0 )</span></h3>
    <img src="https://file.cineq.co.kr/i.aspx?movieid=${MovieCode}&size=210" class="poster" />
    <table class="table-recent">
        <tr>
            <th>영화</th>
            {{if MovieProperty != ""}}
            <td class="title">${MovieName}<span class="aux">(${MovieProperty})</span></td>
            {{else}}
            <td class="title">${MovieName}</td>
            {{/if}}
        </tr>
        <tr>
            <th>예매번호</th>
            <td class="serial-no">${SettleId}</td>
        </tr>
        <tr>
            <th>예매일</th>
            <td>${SettleCreateDate}</td>
        </tr>
        <tr>
            <th>상영일시</th>
            <td>${PlayDate}</td>
        </tr>
        <tr>
            <th>영화관</th>
            <td>${TheaterName}</td>
        </tr>
        <tr>
            <th>좌석</th>
            <td>${SeatInfo}</td>
        </tr>
    </table>
</script>



			<div class="section group section-mypage">
				<div class="wrap-list">
					<div style="margin-top: -40px; margin-bottom: 10px;"
						>예매내역</div>
					<table class="bbs-list bbs-list-mypage-coupon">
						<thead>
							<tr>					<!--  res_sch_code == sch_code-->
								<th>예매일자</th>	<!-- res_paydate -->
								<th>영화제목</th>	<!-- res_title -->
								<th>영화관</th>		<!-- res_cinema -->
								<th>상영관</th>		<!-- res_screen_code == screen_code  ==> screen_name -->
								<th>좌석번호</th>	<!-- res_seat_num -->
								<th>상영일자</th> 	<!-- sch_movie_date -->
								<th>상영시간</th>	<!--sch_start_time ~ sch_last_time -->
								<th>결제금액</th>	<!--res_pay -->
							</tr>
						</thead>
						<tbody>
						<c:forEach var = "resList" items="${resList}">
							<tr>
								<td>${resList.get("res_paydate")}</td>
								<td>${resList.get("res_title")}</td>
								<td>${resList.get("res_cinema")}</td>
								<td>${resList.get("screen_name")}</td>
								<td>${resList.get("res_seat_num")}</td>
								<td>${resList.get("sch_movie_date")}</td>
								<td>${resList.get("movietime")}</td>
								<td>${resList.get("res_pay")}</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- wrap-->
			</div>




		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>