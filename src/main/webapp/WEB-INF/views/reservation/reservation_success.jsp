<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="resources/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.number.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.cookie.min.js"></script>
	<script type="text/javascript" src="resources/js/scrollbar.js"></script>
	<script type="text/javascript" src="resources/js/swiper.min.js"></script>
	<script type="text/javascript" src="resources/js/front.js?v=1680673895731"></script>
	<script type="text/javascript" src="resources/js/app.js?v=1680673895731"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rsv/rsv.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/rsv/rsv2.css">
	<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
	
	
<meta charset="UTF-8">
<title>결제 완료</title>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>	

<input type="hidden" id="CinemaCd" name="CinemaCd" value="${param.CinemaCd }">
				<input type="hidden" id="MovieCd" name="MovieCd" value="${param.MovieCd }">
				<input type="hidden" id="ScreenTime" name="ScreenTime" value="${param.ScreenTime }">
				<input type="hidden" id="ScreenCd" name="ScreenCd" value="${param.ScreenCd }">
				<input type="hidden" id="MovieNm" name="MovieNm" value="${param.MovieNm }">
				<input type="hidden" id="CinemaNm" name="CinemaNm" value="${param.CinemaNm }">
				<input type="hidden" id="HidMovieUrl" name="HidMovieUrl" value="${param.HidMovieUrl }">
				<input type="hidden" id="HidRating" name="HidRating" value="${param.HidRating }">
				<input type="hidden" id="schCd" name="schCd" value="${param.schCd }">
				<input type="hidden" id="showDate" name="showDate" value="${param.showDate }">
				<input type="hidden" id="genre" name="genre" value="${param.genre }">
				<input type="hidden" id="ScreenNm" name="ScreenNm" value="${param.ScreenNm }">
				<input type="hidden" id="MovieDate" name="MovieDate" value="${param.MovieDate }">
	
	
				<input type="hidden" id="totalAmt" name="totalAmt" value="${vo.getTotalAmt() }">
				<input type="hidden" id="totalCnt" name="totalCnt" value="${param.totalCnt }">
				<input type="hidden" id="NormalCnt" name="NormalCnt" value="${param.NormalCnt }">
				<input type="hidden" id="OldCnt" name="OldCnt" value="${param.OldCnt }">
				<input type="hidden" id="YoungCnt" name="YoungCnt" value="${param.YoungCnt }">
	
				<input type="hidden" id="TicketAmt" name="TicketAmt" value="${param.TicketAmt }">
				<input type="hidden" id="NormalPrice" name="NormalPrice" value="${param.NormalPrice }">
				<input type="hidden" id="OldPrice" name="OldPrice" value="${param.OldPrice }">
				<input type="hidden" id="YoungPrice" name="YoungPrice" value="${param.YoungPrice }">
				
				
				<input type="hidden" id="SeatNm" name="SeatNm" value="${vo.getSeatNm() }">
				<input type="hidden" id="SeatLine" name="SeatLine" value="${vo.getSeatLine() }">
				<input type="hidden" id="SeatNum" name="SeatNum" value="${vo.getSeatNum() }">
				
				<input type="hidden" id="PaymentCd" name="PaymentCd" value="${param.PaymentCd }">

<div id="container">
		<div id="content">
			<div class="section group section-member">

				<div class="title">결제</div>

				<div class="wrap-member-box wrap-join-box" id="join_confirm_section">
 					<div class="member join-success">
						<div class="end">
							<div class="t1">
								<strong></strong>${member.get('member_id') } 님 예매 완료되었습니다.
								<div class="pay-box1">
										<div class="head-pay">
											<h3>예매정보</h3>
										</div>
										<div class="cont">
											<div class="pay-mv">
<%-- 												<img src="${vo.getHidMovieUrl() }"> --%>
												<h4>${vo.getMovieNm() }</h4>
												<dl>
													<dd>${vo.getCinemaNm() } ${vo.getScreenNm() }</dd>
												</dl>
												<dl>
													<dd>${vo.getMovieDate() }</dd>
												</dl>
												<dl>
													<dd>${vo.getTotalCnt() }명</dd>
												</dl>
												
												<dl>
													<dd>${vo.getScreenTime() }</dd>
												</dl>
												<dl>
													<dd>${vo.getSeatNm() }</dd>
												</dl>
											</div>
										</div>
									</div>
							</div>
							<div class="t2">
								포인트 적립완료!<br>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>




<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>