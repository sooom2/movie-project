<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>아이무비관리자페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/resources/css/styles.css"
	rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	function doDisplay() {

		let dis = document.querySelector(".admin-modal");

		if (dis.style.display = "none") {
			dis.style.display = "block"

		} else {
			dis.style.display = "none";
		}
	}

	function modalClose() {
		let dis = document.querySelector(".admin-modal");
		dis.style.display = "none";
	}
</script>
</head>
<body class="sb-nav-fixed">

	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="admin">IMOVIE</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"> <i
					class="fas fa-user fa-fw"></i>
			</a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="main">홈</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="logout">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<!-- 고정  -->
		<jsp:include page="admin_nav.jsp" />
		<!-- 고정 -->



		<div id="layoutSidenav_content">

			<!-- 		<a href="javascript:doDisplay();">dddd</a> -->
			<!-- 들어갈내용 -->
			<main>

				<!-- 테이블 -->
				<div class="datatable-container">
					<h3 class="text-center font-weight-light my-4">분실물문의</h3>
					<table id="datatablesSimple" class="datatable-table">
						<thead>
							<tr>
								<th data-sortable="true" style="width: 5%;"><a href="#"
									class="datatable-sorter">글번호</a></th>
								<th data-sortable="true" style="width: 10%;"><a href="#"
									class="datatable-sorter">작성자명</a></th>
								<th data-sortable="true" style="width: 13%;"><a href="#"
									class="datatable-sorter">문의지점</a></th>
								<!-- 								<th data-sortable="true" style="width: 10%;"><a href="#" -->
								<!-- 									class="datatable-sorter">문의유형</a></th> -->
								<th data-sortable="true" style="width: 30%;"><a href="#"
									class="datatable-sorter">제목</a></th>
								<!-- 								<th data-sortable="true" style="width: 10%;"><a href="#" -->
								<!-- 									class="datatable-sorter">내용</a></th> -->
								<th data-sortable="true" style="width: 8%;"><a href="#"
									class="datatable-sorter">답글유무</a></th>
								<!-- 								<th data-sortable="true" style="width: 20%;"><a href="#" -->
								<!-- 									class="datatable-sorter">답변내용</a></th> -->
								<th data-sortable="true" style="width: 20%;"><a href="#"
									class="datatable-sorter">작성일</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="#"
									class="datatable-sorter">답글등록</a></th>
							</tr>
						</thead>
						<!-- 게시판목록 -->
						<tbody>
							<c:forEach var="lostBoard" items="${lostBoardList }">
								<tr data-index="0">
									<%-- 									<td>${lostBoard.member_id }</td> --%>
									<td>${lostBoard.lost_code }</td>
									<td>${lostBoard.member_id }</td>
									<td>${lostBoard.cinema_name }</td>
									<td>${lostBoard.lost_subject }</td>
									<td>${lostBoard.lost_board_rep }</td>
									<td>${lostBoard.lost_write_date }</td>
									<td class="modi"><input class="btn btn-block btn-more"
										type="button" value="M O R E" onclick="location.href='admin_lost_rep?lost_code=${lostBoard.lost_code }'"></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 테이블 -->

			</main>
			<!--들어갈내용 -->

			<!-- 푸터 -->
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; IMOVIE 2023</div>
						<div></div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
