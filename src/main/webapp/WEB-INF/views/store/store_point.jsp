<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript">
	
	function point() {
		if($("#point").val() <= ${point }) {
			location.href = "store_pay?point=" + $("#point").val() + "&item_code=" + ${item_code} + "&item_price=" + ${item_price};
		} else {
			alert("사용가능 포인트를 확인하세요.");
			return;
		}
	}
	
	
</script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<div id="container">
		<div id="content">
			<div class="section group section-member">

				<div class="title">포인트</div>

				<div class="wrap-member-box wrap-join-box" id="join_confirm_section">
					<div class="member join-success">
						<div class="end">
							<div class="t1">
								<strong>${sessionScope.sId }회원님</strong><br> 
								사용가능 포인트는<br>
								<strong>${point }점</strong>입니다.
							</div>
							<div class="tabs-cont">
								<div class="cont">
									<h3 class="h3-member">포인트</h3>
									<div class="mb30"><input type="text" id="point" name="point" class="inp-member" placeholder="사용할 포인트를 입력하세요."></div>
								</div>
							</div>
							<div class="btns">
								<a onclick="point()" href="#" class="btn-type-main">사용하기</a>
								<a onclick="history.back()" href="#" class="btn-typep-login">돌아가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
</body>
</html>