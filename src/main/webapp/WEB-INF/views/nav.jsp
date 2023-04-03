<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/css/common.css" rel="stylesheet">
<link href="${path}/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="${path}/js/main.js"></script>
</head>
<body>

<div id="header" data-loginstatus="0">
		<nav class="secondary">
			<ul>
				<li><a href="${path}/member/login_form.jsp" data-reload="reload" class="loginpop">로그인</a></li>
				<li><a href="">멤버십안내</a></li>
				<li><a href="${path}/member/join_auth_form.jsp">회원가입</a></li>
				<li><a href="${path}/member/guest_join_form.jsp" class="">비회원예매내역</a>
				</li>
			</ul>
		</nav>
	
	<div class="wrap-nav-primary">
		<nav class="primary">
			
			<ul class="nav_left">
				<li><a href="" class="" onmouseover="hideTheater()">예매</a>
					<div class="tertiary">
						<ul>
							<li><a href="" class="" onmouseover="hideTheater()">빠른예매</a></li>
							<li><a href="" class="" onmouseover="hideTheater()">상영시간표</a></li>
							<li><a href="" class=""	onmouseover="hideTheater()">비회원예매내역</a></li>
						</ul>
					</div>
				</li>
			
			
				<li><a href="" class="" onmouseover="hideTheater()"> 영화 </a>
					<div class="tertiary">
						<ul>
							<li><a href="" class=""	onmouseover="hideTheater()">현재상영작</a></li>
							<li><a href="" class=""	onmouseover="hideTheater()">최신개봉작</a></li>
							<li><a href="" class=""	onmouseover="hideTheater()">후 기</a></li>
						</ul>
					</div>
				</li>


				<li><a href="" class="">극장정보</a>
					<div class="theaterInfo">
						<ul>
							<li><a href="" class="" onmouseover="hideTheater()">00점</a></li>
							<li><a href="" class="" onmouseover="hideTheater()">00점</a></li>
							<li><a href="" class="" onmouseover="hideTheater()">00점</a></li>
							<li><a href="" class="" onmouseover="hideTheater()">00점</a></li>
							<li><a href="" class="" onmouseover="hideTheater()">00점</a></li>
<!-- 							<li><a href="" class=""	onmouseover="hideTheater()">자주가는 영화관</a></li> -->
						</ul>
					</div>
				</li>
				</ul>
				<a href="${path}/index.jsp"><h1 id="logo">로고</h1></a>		
				<ul class="nav_right">
<!-- 				<li><a href="" class="" onmouseover="hideTheater()">이벤트</a> -->
<!-- 					<div class="tertiary"> -->
<!-- 						<ul> -->
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">제휴할인</a></li> -->
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">시사회</a></li> -->
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">무대인사</a></li> -->
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">진행중인 이벤트</a></li> -->
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">지난 이벤트</a></li> -->
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">당첨자 발표</a></li> -->
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 					</li> -->
				<li id=""><a href="${path}/store/store_main.jsp" class="" onmouseover="hideTheater()">스토어</a>
				</li>
				<li id="cs"><a href="${path}/customer_center/cc_home.jsp" class="" onmouseover="hideTheater()">고객센터</a>
					<div class="tertiary">
						<ul>
							<li><a href="" class="" onmouseover="hideTheater()">Q/A</a></li>
							<li><a href="" class="" onmouseover="hideTheater()">공지사항</a></li>
							<li><a href="" class="" onmouseover="hideTheater()">1:1문의</a></li>
<!-- 							<li><a href="" class="" onmouseover="hideTheater()">단체관람/대관문의</a></li> -->
							<li><a href="" class="" onmouseover="hideTheater()">분실물 문의</a></li>
						</ul>
					</div>
				</li>
				<li id=""><a href="${path}/store/mypage.jsp" class="" onmouseover="hideTheater()">마이페이지</a>
				</li>
			</ul>
			<a href="" class="btn-simple-rsv simplereservepop">간편예매</a>
		</nav>
	</div>
</div>

</body>
</html>