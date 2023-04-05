<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/mypage.css" rel="stylesheet">
<link href="resources//css/inc.css" rel="stylesheet">
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
					<a href="/Member/Info" class="btn btn-top">회원정보 관리</a>

					<div class="username">
						김예리 <span class="point">0P</span>
					</div>

					<div class="username">
						선호극장 <span class="right"> 000 </span>

					</div>

					<div class="username">
						회원등급 <span class="right"> 일반 </span>
					</div>

				</div>
				<div class="summary summary-2">
					<h3>
						최근 예매 <span class="num">( 0 )</span>
					</h3>
				</div>
				<div class="summary summary-3">
					<h3>나의 관람권</h3>
					<span class="coupon-box">
						<input type="text" name="coupon" class="input-coupon"
						placeholder="관람권/쿠폰 번호를 빈칸 없이 입력해주세요."> <a href="#"
						class="btn-register-coupon">등록</a>
					</span>
				</div>
			</div>
			<div class="section group section-mypage-select">
				<ul class="selector-summary">
					<li><a href="/MyPage"class="">예매/취소내역</a></li>
					<li><a href="/MyPage/CouponList" class="">매점교환권</a></li>
					<li><a href="/MyPage/Exchange" class="selected">포인트내역</a></li>
					<li><a href="/Customer/InquiryList" class=" loginpop">나의 문의내역</a></li>
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

			<div id="content-notice"
				style="display: none; position: absolute; width: 400px; height: 220px; z-index: 15; top: 50%; left: 50%; background: white; border: 1px solid black; margin: -200px 0 0 0;">
				<div class="section group">
					<div class="col span_8_of_8"
						style="text-align: center; border-bottom: 1px solid gray; background: beige">
						<div id="couponname" style="padding-top: 20px; font-size: 20px"></div>

						<div id="couponkey"
							style="padding-top: 10px; padding-bottom: 15px"></div>
					</div>
					<div class="col span_8_of_8"
						style="text-align: left; padding-top: 10px;">
						<div>사용 방법</div>
						<div id="constraint" style="padding-left: 20px;"></div>
						<div id="theater" style="padding-left: 20px;"></div>
					</div>
				</div>
				<div class="section group">
					<div class="col span_8_of_8 notice-control">
						<div class="desc" style="text-align: center;">
							<button onclick="javascript:closemodal()">닫기</button>
						</div>
					</div>
				</div>
			</div>


			<div class="section group section-mypage">
				<!-- 매점교환권 -->
				<div class="wrap-list">
					<div style="margin-top: -40px; margin-bottom: 10px;"
						>나의 포인트</div>
					<table class="bbs-list bbs-list-mypage-coupon">
						<tbody>
							<tr>
								<th>적립일자</th>
								<th>적립내역</th>
								<th>포인트</th><!-- 상품종류 -->
								<th>누적포인트</th>
							</tr>
							<tr>
								<td>11111</td>
								<td>2222</td>
								<td>333</td>
								<td>333</td>
							</tr>
							
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