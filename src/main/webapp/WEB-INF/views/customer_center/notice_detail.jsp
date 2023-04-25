<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function deleteLost() {
		let result = confirm("삭제 하시겠습니까?");
		if (result) {
			location.href = "notice_deletePro?notice_code=" + $
			{
				map.notice_code
			}
			;
		}
	}
</script>
</head>
<link
	href="${pageContext.request.contextPath }/resources/css/common.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc.css"
	rel="stylesheet">
<!-- 상단 -->
<link href="${pageContext.request.contextPath }/resources/css/sub.css"
	rel="stylesheet">
<!-- 본문 -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/main.css"
	rel="stylesheet">
<body>
	<jsp:include page="../nav.jsp" />
	<div class="container has-lnb">
		<div class="inner-wrap">
			<jsp:include page="lnb-area.jsp" />

			<div id="contents">
				<h2 class="tit">공지사항</h2>

				<div class="table-wrap">
					<div class="board-view">
						<div class="tit-area">
							<p class="tit">${map.notice_subject }</p>
						</div>

						<div class="info">
							<p>
								<span class="tit">영화관</span> <span class="txt">${map.cinema_name }</span>
							</p>
							<p>
								<span class="tit">구분</span> <span class="txt">공지</span>
							</p>
							<p>
								<span class="tit">등록일</span> <span class="txt">${map.notice_write_date }</span>
							</p>
						</div>
						<div class="cont">
							<textarea rows="5" cols="30" readonly=""
								class="input-textarea view" style="border: none;">${map.notice_content }</textarea>
						</div>
					</div>
				</div>
				
				<div class="prev-next">
					<div class="line prev">
						<p class="tit">이전</p>
						<p class="link">이전글이 없습니다.</p>
					</div>
					<div class="line next">
						<p class="tit">다음</p>
						<a href="#" class="link moveBtn" data-no="10826"
							title=""></a>
					</div>
				</div>

				<div class="btn-group pt40">
					<a href="notice_board" class="button large listBtn" title="목록">목록</a>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>