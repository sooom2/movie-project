<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">  

<title>아이무비 마이페이지(예매내역)</title>
<link href="${path }/resources/css/common.css" rel="stylesheet">
<link href="${path }/resources/css/mypage.css" rel="stylesheet">
<link href="${path }/resources/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path }/resources/js/main.js"></script>
<script>

// 셀렉트 박스에서 선택된 예약리스트 불러오기
$(document).ready(function(){
	setDateBox();

	$("#year, #month").change(function(){
		var year = parseInt($("#year option:selected").val());
		var month = parseInt($("#month option:selected").val());
		
		$.ajax({
		    type: "GET",
		    url: "mypageRlist",
		    datatype:"json",		
		    data: {
		        year: year,
		        month: month
		    },
		    success: function(result) {
		    	
		    	var resListHtml = "";
		    	
		        for(let res of result){
		        	
		    	 let paydate = new Date(res.res_paydate);
		         let formattedPaydate = paydate.getFullYear() + "-" + (paydate.getMonth() + 1).toString().padStart(2, '0') + "-" + paydate.getDate().toString().padStart(2, '0');
		         let formattedPay = new Intl.NumberFormat('en-US').format(res.res_pay);
		         
		         resListHtml += "<tr>" +
		            "<td>" + res.res_code + "</td>" +
		            "<td>" + formattedPaydate  + "</td>" +
		            "<td>" + res.res_title  + "</td>" +
		            "<td>" + res.res_cinema + "</td>" +
		            "<td>" + res.screen_name + "</td>" +
		            "<td>" + res.res_seat_name + "</td>" +
		            "<td>" + res.sch_movie_date + "</td>" +
		            "<td>" + res.movie + "</td>" +
		            "<td>" + formattedPay + "</td>" +
		          "</tr>";
		        }
		        $("#resList2").html(resListHtml);
				    	
		    }
		});
	});
});

//5개년 예매 정보조회 셀렉트박스
function setDateBox(){
	var dt = new Date();
	var year = dt.getFullYear();
	var month = dt.getMonth()+1;

	for(var y = (year); y >=(year-4); y--){
		if(year == y) {
			$("#year").append("<option selected value='"+ y +"'>"+ y + "년" +"</option>");
		}else{
			$("#year").append("<option value='"+ y +"'>"+ y + "년" +"</option>");
		}
	}
	for(var i = 1; i <= 12; i++){
		if(month == i) {
			$("#month").append("<option selected value='"+ i +"'>"+ i + "월" +"</option>");
		}else{
			$("#month").append("<option value='"+ i +"'>"+ i + "월" +"</option>");
		}
	}
}





</script>


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
							${member.member_name } 님<span class="point"><fmt:formatNumber type="number" value="${member.member_point}" pattern="#,###" />P</span>
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
						LIKE 영화 <span class="num"></span>
						<?xml version="1.0" ?><svg enable-background="new 0 0 100 100" version="1.1" height="24" width="35" viewBox="0 0 160 80" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="Layer_8"><path d="M83.48,24.461c0-2.556-2.072-4.628-4.628-4.628   c-0.896,0-1.725,0.266-2.434,0.707c0.269-0.587,0.428-1.233,0.428-1.921c0-2.556-2.072-4.628-4.628-4.628   c-2.002,0-3.691,1.278-4.336,3.058c-0.759-0.544-1.683-0.873-2.688-0.873c-0.92,0-1.773,0.276-2.493,0.739   c0.039-0.242,0.075-0.486,0.075-0.739c0-2.556-2.072-4.628-4.628-4.628c-1.721,0-3.206,0.951-4.003,2.345   c-0.666-0.371-1.421-0.6-2.237-0.6c-2.556,0-4.628,2.072-4.628,4.628c0,0.172,0.032,0.334,0.051,0.501   c-0.622-0.31-1.313-0.501-2.055-0.501c-0.122,0-0.237,0.027-0.357,0.036c0.229-0.549,0.357-1.15,0.357-1.781   c0-2.556-2.072-4.628-4.628-4.628s-4.628,2.072-4.628,4.628c0,0.064,0.016,0.123,0.019,0.186c-0.394-0.109-0.8-0.186-1.228-0.186   c-0.253,0-0.497,0.035-0.739,0.075c0-0.025,0.008-0.049,0.008-0.075c0-2.556-2.072-4.628-4.628-4.628s-4.628,2.072-4.628,4.628   c-2.556,0-4.628,2.072-4.628,4.628c0,0.258,0.035,0.506,0.076,0.752c-2.23,0.333-3.945,2.237-3.945,4.56   c0,2.2,1.538,4.033,3.595,4.503l-2.296,3.024l29.658,7.284l24.94-4.856l8.834-4.097l-0.45-3.231   C82.289,28.051,83.48,26.397,83.48,24.461z" fill="#E8E462" stroke="#191919" stroke-miterlimit="10"/><g><path d="M26.663,92.726c-0.991,0-1.829-0.71-1.993-1.688L14.35,29.072c-0.098-0.587,0.066-1.184,0.451-1.638    s0.947-0.714,1.542-0.714h67.313c0.596,0,1.157,0.26,1.542,0.714s0.549,1.051,0.451,1.638L75.33,91.037    c-0.163,0.979-1.001,1.689-1.993,1.689H26.663z" fill="#EFEFEF"/><path d="M83.656,27.22c0.94,0,1.654,0.844,1.5,1.771l-10.32,61.964c-0.122,0.733-0.757,1.271-1.5,1.271H26.663    c-0.743,0-1.378-0.538-1.5-1.271L14.844,28.99c-0.154-0.927,0.56-1.771,1.5-1.771H83.656 M83.656,26.22H16.344    c-0.742,0-1.443,0.325-1.923,0.891c-0.48,0.566-0.685,1.311-0.563,2.044l10.32,61.964c0.203,1.221,1.249,2.107,2.486,2.107h46.673    c1.237,0,2.283-0.886,2.486-2.107l10.32-61.965c0.122-0.732-0.083-1.477-0.563-2.044C85.1,26.544,84.399,26.22,83.656,26.22    L83.656,26.22z" fill="#191919"/></g><polygon fill="#A52929" points="32.411,92.225 25.375,92.225 14.549,27.22 24.678,27.22  "/><polygon fill="#A52929" points="46.482,92.225 39.446,92.225 34.807,27.22 44.936,27.22  "/><polygon fill="#A52929" points="60.554,92.225 53.518,92.225 55.064,27.22 65.193,27.22  "/><polygon fill="#A52929" points="74.625,92.225 67.589,92.225 75.322,27.22 85.451,27.22  "/><g><path d="M84.438,27.22c0.531,0,0.934,0.476,0.847,1l-10.54,63.288c-0.069,0.414-0.427,0.718-0.847,0.718H26.103    c-0.42,0-0.778-0.304-0.847-0.718l-10.54-63.288c-0.087-0.523,0.316-1,0.847-1H84.438 M84.438,26.22H15.562    c-0.547,0-1.064,0.24-1.418,0.657c-0.354,0.418-0.505,0.967-0.415,1.507l10.54,63.288c0.15,0.9,0.921,1.553,1.833,1.553h47.795    c0.912,0,1.684-0.653,1.833-1.553l10.54-63.288c0.09-0.54-0.061-1.089-0.415-1.507C85.502,26.459,84.985,26.22,84.438,26.22    L84.438,26.22z" fill="#191919"/></g></g></svg>
					</h3>
					<c:forEach var="likeList" items="${likeList}">
						&nbsp;&nbsp; <?xml version="1.0" ?><svg class="feather feather-video" fill="none" height="18" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><polygon points="23 7 16 12 23 17 23 7"/><rect height="14" rx="2" ry="2" width="15" x="1" y="5"/></svg>
						<span class="right"><a href="MovieInfo?info_movie_code=${likeList.info_movie_code }">${likeList.get("movie_title")}</a></span>
						${likeList.get("info_showdate")}
						<br>
					</c:forEach>
				</div>
				<div class="summary summary-3">
					<h3>추천 영화</h3>	
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



			<div class="section group section-mypage">
				<div class="wrap-list">
					<div style="margin-top: -30px; margin-bottom: 10px; font-weight: 400; font-size: 20px;"
						>예매내역</div>
						<div style = "text-align: right;">
							<select class="form-control input-sm" id="year" name="year">
							</select>
							<select class="form-control input-sm" id="month" name="month">
							</select>
						</div><br>
					<table class="bbs-list bbs-list-mypage-coupon">
						<thead>
							<tr>			
								<th>예매번호</th>		
								<th>예매일자</th>	
								<th>영화제목</th>	
								<th>영화관</th>		
								<th>상영관</th>		
								<th>좌석번호</th>	
								<th>상영일자</th> 
								<th>상영시간</th>	
								<th>결제금액</th>	
							</tr>
						</thead>
						<tbody id="resList2">
						<c:forEach var = "resList" items="${resList}">
							<tr>
								<td>${resList.get("res_code")}</td>
								<td>${resList.get("res_paydate")}</td>
								<td>${resList.get("res_title")}</td>
								<td>${resList.get("res_cinema")}</td>
								<td>${resList.get("screen_name")}</td>
								<td>${resList.get("res_seat_name")}</td>
								<td>${resList.get("sch_movie_date")}</td>
								<td>${resList.get("movie")}</td>
								<td><fmt:formatNumber value="${resList.get('res_pay') }" pattern="#,###"/></td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>




		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>