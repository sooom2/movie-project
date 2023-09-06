<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>아이무비 마이페이지(후기)</title>
<link href="${path }/resources/css/common.css" rel="stylesheet">
<link href="${path }/resources/css/mypage.css" rel="stylesheet">
<link href="${path }/resources//css/inc.css" rel="stylesheet">
<script type="text/javascript"src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path }/resources//js/main.js"></script>
</head>
<body>
<script type="text/javascript">
function confirmDelete(rev_code) {
	
	  if(confirm("리뷰를 삭제하시겠습니까? 삭제시 포인트는 반환됩니다.")) {
	    location.href="deleteReview?rev_code=" + rev_code;
	    
	  }
	}


</script>

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
						<thead>
							<tr>
								<th>영화제목</th>
								<th>한줄평</th>
								<th>별 점</th>
								<th>작성일자</th>
<!-- 								<th>수정</th> -->
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
<%-- 							<c:forEach var="revList" items="${revList}"> --%>
<!-- 							    <tr> -->
<%-- 							        <td>${revList.get("rev_movie_title")}</td> --%>
<%-- 							        <td>${revList.get("rev_content")}</td> --%>
<!-- 							        <td> -->
<%-- 							            <c:if test="${not empty revList.get('rev_rating')}"> --%>
<%-- 							                <c:choose> --%>
<%-- 							                    <c:when test="${revList.get('rev_rating') == 1}"> --%>
<!-- 							                        ★ -->
<%-- 							                    </c:when> --%>
<%-- 							                    <c:when test="${revList.get('rev_rating') == 2}"> --%>
<!-- 							                        ★★ -->
<%-- 							                    </c:when> --%>
<%-- 							                    <c:when test="${revList.get('rev_rating') == 3}"> --%>
<!-- 							                        ★★★ -->
<%-- 							                    </c:when> --%>
<%-- 							                    <c:when test="${revList.get('rev_rating') == 4}"> --%>
<!-- 							                        ★★★★ -->
<%-- 							                    </c:when> --%>
<%-- 							                    <c:when test="${revList.get('rev_rating') == 5}"> --%>
<!-- 							                        ★★★★★ -->
<%-- 							                    </c:when> --%>
<%-- 							                    <c:otherwise> --%>
<!-- 							                        No rating -->
<%-- 							                    </c:otherwise> --%>
<%-- 							                </c:choose> --%>
<%-- 							            </c:if> --%>
<!-- 							        </td> -->
<%-- 							        <td>${revList.get("rev_date")}</td> --%>
<%-- <%-- 							        <td><input type="button" value="수정" onclick="editReview(${revList.get('rev_id')})"></td>  --%>
<%-- <%-- 									<td><input type="button" value="삭제" onclick="deleteReview(${revList.get('rev_id')})"></td>  --%>
<%-- <%-- 							        <td><input type="button" value="수정" onclick="editReview(${revList.get('rev_id')})" ></td>  --%>
<%-- <%-- 									 <td><input onclick="location.href='admin_item_payUpdate?pay_code=${pay.get('pay_code') }'"class="btn btn-primary btn-block" type="button" value="수정"></td>  --%>
<%-- 									 <td><input onclick="location.href='deleteReview?rev_code=${revList.get('rev_code') }'"  type="button" value="삭제"></td> --%>
<%-- <!-- 							    </tr> --> --%>
<%-- 							</c:forEach> --%>
								<c:forEach var="revList" items="${revList}">
								    <tr>
								        <td>${revList.info_movie_title}</td>
								        <td>${revList.rev_content}</td>
								        <td>
								            <c:if test="${not empty revList.rev_rating}">
								                <c:forEach begin="1" end="5" step="1"  varStatus="loop">
							                        <c:if test="${revList.rev_rating >= loop.index}">
							                          <span class="yellow-star">★</span>
							                        </c:if>
								                </c:forEach>
								            </c:if>
								        </td>
								        <td>${revList.rev_date}</td>
								       <td><input type="button" value="삭제" onclick="confirmDelete('${revList.rev_code}')"></td>


								    </tr>
								</c:forEach>


						</tbody>
					</table>
					
					<form class="mystar" name="rev_rating" id="myform" action="mypageRvPro" method="post">
						<fieldset>
<%-- 								<span style="color: purple; text-shadow: 1px 1px 2px grey; " > ${resMovie.get("res_title")} </span> --%>
						<c:set var="revList1" value="${revList}"/>
						<c:set var="movieTitle" value="${resMovie.get('res_title')}"/>
							<c:choose>	
                               <c:when test ="${fn:contains(revList1,movieTitle) }">
                               		<span  style="color: #ff000a; font-size: 108%; vertical-align: super; font-weight: 400; "> 작성 가능한 영화의 리뷰가 없습니다 </span>
                               </c:when>
                               <c:otherwise>
                               		<span class="text-bold" >별점을 선택하고 최근 예매하신 <span style="color: purple; text-shadow: 1px 1px 2px grey; " > ${resMovie.get("res_title")} </span> 영화의 리뷰를 작성해주세요</span>
                               </c:otherwise>
                           </c:choose>

							<input type="radio" name="rev_rating" value="5" id="rate1">
							<label for="rate1">★</label> 
							<input type="radio" name="rev_rating" value="4" id="rate2">
							<label for="rate2">★</label> 
							<input type="radio" name="rev_rating" value="3" id="rate3">
							<label for="rate3">★</label> 
							<input type="radio" name="rev_rating" value="2" id="rate4">
							<label for="rate4">★</label> 
							<input type="radio" name="rev_rating" value="1" id="rate5">
							<label for="rate5">★</label>
						</fieldset>
						<div>
							<textarea id="reviewContents" name="rev_content" style="font-size: 108%; vertical-align: middle;" placeholder=" &#13;&#10 << 아이무비 리뷰이벤트  >> &#13;&#10 최근 예매하신 영화의 리뷰작성하시면 &#13;&#10 500포인트를 지급합니다."></textarea>
						</div>
					<section id="reviewbtnArea">
						<div ><input type="submit" value="리뷰등록">&nbsp;&nbsp;</div>
					</section>
					</form>
				</div>
			</div>

		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>