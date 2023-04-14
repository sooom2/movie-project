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
<script type="text/javascript"src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
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
					<h3>나의 관람권</h3>
					<span class="coupon-box"> <input type="text" name="coupon"
						class="input-coupon" placeholder="관람권/쿠폰 번호를 빈칸 없이 입력해주세요.">
						<a href="#" class="btn-register-coupon">등록</a>
					</span>
				</div>
			</div>
			<div class="section group section-mypage-select">
				<ul class="selector-summary">
					<li><a href="mypageR" class="">예매/취소내역</a></li>
					<li><a href="mypageS" class="">결제내역</a></li>
					<li><a href="mypageP" class="">포인트내역</a></li>
					<li><a href="mypageQ" class=" ">문의내역</a></li>
					<li><a href="mypageRv" class="selected">영화리뷰</a></li>
				</ul>
			</div>



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
				<div class="wrap-list">
					<div style="margin-top: -40px; margin-bottom: 10px;">나의리뷰</div>
					<table class="bbs-list bbs-list-mypage-coupon">
						<tbody>
							<tr>
								<th>영화제목</th>
								<th>한줄평</th>
								<th>별 점</th>
								<th>작성일자</th>
							</tr>
							<tr>
								<td>스파이더맨</td>
								<td>재미있어요 꼭보세요!!!</td>
								<td>★★★★★</td>
								<td>20230407</td>
							</tr>
						</tbody>
					</table>
					
					<form class="mystar" name="myform" id="myform" method="post">
						<fieldset>
							<span class="text-bold" >별점을 선택하고 최근에 본 영화의 리뷰를 작성해주세요</span> 
							<input type="radio" name="reviewStar" value="5" id="rate1">
							<label for="rate1">★</label> 
							<input type="radio" name="reviewStar" value="4" id="rate2">
							<label for="rate2">★</label> 
							<input type="radio" name="reviewStar" value="3" id="rate3">
							<label for="rate3">★</label> 
							<input type="radio" name="reviewStar" value="2" id="rate4">
							<label for="rate4">★</label> 
							<input type="radio" name="reviewStar" value="1" id="rate5">
							<label for="rate5">★</label>
						</fieldset>
						<div>
							<textarea id="reviewContents" placeholder="아이무비 리뷰이벤트 !!! 리뷰작성시 100포인트를 지급합니다."></textarea>
						</div>
					</form>
					<section id="reviewbtnArea">
						<div ><input type="submit" value="리뷰등록">&nbsp;&nbsp;</div>
					</section>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>