<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function logout() {
		let isLogout = confirm("로그아웃 하시겠습니까?");
		
		if(isLogout) {
			location.href = "logout";
		}
	}
</script>
<link href="${path }/resources/css/common.css" rel="stylesheet">
<link href="${path }/resources/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="${path }/resources/js/main.js"></script>
</head>
<body>
<div id="header" data-loginstatus="0">
		<nav class="secondary">
			<ul>
			<c:choose>
				<c:when test="${empty sessionScope.sId }">
					<li><a href="memLogin" data-reload="reload" class="">로그인</a></li>
					<li><a href="memJoin">회원가입</a></li>
					<li><a href="guestRsv" class="">비회원예매내역</a></li>
					<li><a href="admin" class="">관리자</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="javascript:logout()" data-reload="reload" class="">로그아웃</a></li>
					<li><a href="guestRsv" class="">비회원예매내역</a></li>
					<c:if test="${sessionScope.sId eq 'admin' }">
						<li><a href="admin" class="">관리자</a></li>
					</c:if>
				</c:otherwise>
			</c:choose>
			</ul>
		</nav>
	
	<div class="wrap-nav-primary">
		<nav class="primary">
			
			<ul class="nav_left">
				<li><a href="" class="" onmouseover="hideTheater()">예매</a>
					<div class="tertiary">
						<ul>
							<li><a href="reservation" class="" onmouseover="hideTheater()">빠른예매</a></li>
							<li><a href="" class="" onmouseover="hideTheater()">상영시간표</a></li>
							<li><a href="" class=""	onmouseover="hideTheater()">비회원예매내역</a></li>
						</ul>
					</div>
				</li>
			
			
				<li><a href="screening" class="" onmouseover="hideTheater()"> 영화 </a>
					<div class="tertiary">
						<ul>
							<li><a href="screening" class=""	onmouseover="hideTheater()">현재상영작</a></li>
							<li><a href="comming" class=""	onmouseover="hideTheater()">상영예정작</a></li>
							<li><a href="" class=""	onmouseover="hideTheater()">후 기</a></li>
						</ul>
					</div>
				</li>


				<li><a href="cinemaList" class="">극장정보</a>
					<div class="theaterInfo">
						<ul>
<%-- 						<c:forEach var="cinema" items="${cinemaList }"> --%>
							<li><a href="" class="" onmouseover="hideTheater()"></a></li>
							<li><a href="cinemaList" class="" onmouseover="hideTheater()">전체극장</a></li>
<%-- 						</c:forEach> --%>
						
						</ul>
					</div>
				</li>
				<li id=""><a href="store_main" class="" onmouseover="hideTheater()">스토어</a>
				</ul>
				<a href="main"><h1 id="logo">로고</h1></a>		
				<ul class="nav_right">
				<li><a href="" class="" onmouseover="hideTheater()">이벤트</a>
					<div class="tertiary">
						<ul>
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">시사회</a></li> -->
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">무대인사</a></li> -->
							<li><a href="" class="" onmouseover="hideTheater()">진행중인 이벤트</a></li>
						</ul>
					</div>
					</li>
				</li>
				<li id="cs"><a href="cc_home" class="" onmouseover="hideTheater()">고객센터</a>
					<div class="tertiary">
						<ul>
							<li><a href="faq" class="" onmouseover="hideTheater()">자주묻는 질문</a></li>
							<li><a href="notice_board" class="" onmouseover="hideTheater()">공지사항</a></li>
							<li><a href="oneOnOne" class="" onmouseover="hideTheater()">1:1문의</a></li>
							<li><a href="lost_board" class="" onmouseover="hideTheater()">분실물 문의</a></li>
						</ul>
					</div>
				</li>
				<li id=""><a href="mypageR" class="" onmouseover="hideTheater()">마이페이지</a>
				</li>
			</ul>
<!-- 			<a href="" class="btn-simple-rsv simplereservepop">간편예매</a> -->
		</nav>
	</div>
</div>

</body>
</html>