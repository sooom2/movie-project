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
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<script type="text/javascript">
	

	function modalClose() {
		let dis = document.querySelector(".modal");
		let dis2 = document.querySelector(".admin-modal-update");
		dis.style.display = "none";
		dis2.style.display = "none";
	}
	
	function doDisplay() {

		let dis2 = document.querySelector(".admin-modal-update");

		if (dis2.style.display = "none") {
			dis2.style.display = "block"

		} else {
			dis2.style.display = "none";
		}
	}
	
	function doNoticeRegister() {

		let dis = document.querySelector(".admin-modal-register");

		if (dis.style.display = "none") {
			dis.style.display = "block"

		} else {
			dis.style.display = "none";
		}
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
				<!-- 모달 -->
				<div class="container modal admin-modal-register"
					style="display: none">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card border-1 mt-5">
								<div class="card-header">
									<button type="button" class="close-modal" onclick="modalClose()" style="border: none;">닫기</button>
									<h3 class="text-center font-weight-light my-4">공지사항 등록</h3>
								</div>
								<div class="row justify-content-center">
									<div class="col-lg-7" style="width: 700px">
										<div class="card-body">
											<form action="notice_register_pro">
												<div class="row mb-3">
													<div>
														<div class="form-floating mb-3 mb-md-0 ">
															<input class="form-control" id="info_time"
																name="info_time" type="text" value="" /> <label
																for="info_time">제목</label>
														</div>
													</div>
												</div>
												<div class="row mb-3">
													<div>
														<div class="form-floating mb-3 mb-md-0 selectbox">
															<div class="screen_name">
																<label for="screen_name">상영관 : </label> <select
																	name="sch_screen_code" class="selectScreen_name"
																	style="width: 300px">
																	<option value="none" selected="selected" disabled>상영관을
																		선택하세요</option>
																	<option value="none" disabled>=======================</option>
																</select>
															</div>
														</div>
													</div>
												</div>

												<hr>
												<div class="row mb-3">

													<div class="form-floating mb-3 mb-md-0 text">
														<div>
															<textarea name="board_content" class="form-control"
																id="board_content" placeholder="내용" rows="10"></textarea>

														</div>
													</div>
												</div>

												<div class="row">
													<div class="mt-4 mb-0 ">
														<div class="d-grid">
															<input class="btn btn-primary btn-block" type="submit"
																value="등록">
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ================================================================= -->
				<!-- 수정 모달 -->
				<div class="container modal admin-modal-update" style="display: none">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card border-1 mt-5">
								<div class="card-header">
									<button type="button" class="close-modal" onclick="modalClose()" style="border: none;">닫기</button>
									<h3 class="text-center font-weight-light my-4">공지사항 수정</h3>
								</div>
								<div class="row justify-content-center">
									<div class="col-lg-7" style="width: 700px">
										<div class="card-body">
											<form action="notice_register_pro">
												<div class="row mb-3">
													<div>
														<div class="form-floating mb-3 mb-md-0 ">
															<input class="form-control" id="info_time"
																name="info_time" type="text" value="" /> <label
																for="info_time">제목</label>
														</div>
													</div>
												</div>
												<div class="row mb-3">
													<div>
														<div class="form-floating mb-3 mb-md-0 selectbox">
															<div class="screen_name">
																<label for="screen_name">상영관 : </label> <select
																	name="sch_screen_code" class="selectScreen_name"
																	style="width: 300px">
																	<option value="none" selected="selected" disabled>상영관을
																		선택하세요</option>
																	<option value="none" disabled>=======================</option>
																</select>
															</div>
														</div>
													</div>
												</div>

												<hr>
												<div class="row mb-3">

													<div class="form-floating mb-3 mb-md-0 text">
														<div>
															<textarea name="board_content" class="form-control"
																id="board_content" placeholder="내용" rows="10"></textarea>

														</div>
													</div>
												</div>

												<div class="row">
													<div class="mt-4 mb-0 ">
														<div class="d-grid">
															<input class="btn btn-primary btn-block" type="submit"
																value="등록">
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>



				<!-- 수정 모달 -->

				<!-- 테이블 -->
				<div class="datatable-container">
					<h3 class="text-center font-weight-light my-4">공지사항</h3>
					<input class="btn btn-block btn-more" type="button" value="공지등록"
						onclick="doNoticeRegister()">
					<table id="datatablesSimple" class="datatable-table">
						<thead>
							<tr>
								<th data-sortable="true" style="width: 7%;"><a href="#"
									class="datatable-sorter">공지번호</a></th>
								<th data-sortable="true" style="width: 10%;"><a href="#"
									class="datatable-sorter">영화관명</a></th>
								<th data-sortable="true" style="width: 13%;"><a href="#"
									class="datatable-sorter">제목</a></th>
								<!-- 								<th data-sortable="true" style="width: 10%;"><a href="#" -->
								<!-- 									class="datatable-sorter">내용</a></th> -->
								<th data-sortable="true" style="width: 7%;"><a href="#"
									class="datatable-sorter">작성일</a></th>
								<th data-sortable="true" style="width: 10%;"><a href="#"
									class="datatable-sorter">수정/삭제</a></th>
								<!-- 								<th data-sortable="true" style="width: 20%;"><a href="#" -->
								<!-- 									class="datatable-sorter">줄거리</a></th> -->
								<!-- 								<th data-sortable="true" style="width: 20%;"><a href="#" -->
								<!-- 									class="datatable-sorter">수정</a></th> -->
							</tr>
						</thead>
						<!-- 회원목록 -->
						<tbody>
							<c:forEach var="noticeBoard" items="${noticeBoardList }">
								<tr data-index="0">
									<td>${noticeBoard.notice_code }</td>
									<td>${noticeBoard.cinema_name }</td>
									<td id="notice_subject"><a
										href="notice_detail?notice_code=${noticeBoard.notice_code }&pageNum=${pageNum }">${noticeBoard.notice_subject }</a>
									</td>
									<td>${noticeBoard.notice_write_date }</td>
									<td class="modi"><input class="btn btn-block btn-more"
										type="button" value="M O R E" onclick="doDisplay()"></td>
								</tr>
							</c:forEach>
							<!-- 							<tr data-index="0"> -->
							<!-- 								<td>공지번호</td> -->
							<!-- 								<td>영화관명</td> -->
							<!-- 								<td>제목</td> -->
							<!-- 								<td>120분</td> -->
							<!-- 								<td>2023-04-05</td> -->
							<!-- 								<td>2099-04-05</td> -->
							<!-- 								<td>작성일</td> -->
							<!-- 								<td class="modi"><input class="btn btn-block btn-more" -->
							<!-- 									type="button" value="M O R E" onclick="doDisplay()"></td> -->
							<!-- 							</tr> -->
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
