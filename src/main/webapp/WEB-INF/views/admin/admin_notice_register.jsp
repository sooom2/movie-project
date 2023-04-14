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
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	// 	const textareaElement = document.querySelector("textarea");

	// 	textareaElement.addEventListener("keyup", (e) => {
	// 	  if (e.keyCode === 13) {
	// 	    if (!e.shiftKey) {
	// 	      sendMessage();
	// 	    }
	// 	  }
	// 	});

	function selectCinema() {
		alert("change");
		$
				.ajax({
					type : "POST",
					url : "screenSelect",
					data : {
						cinema_code : $(".cinema_name option:selected").val(),
						cinema_name : $(".cinema_name option:selected").text()
					},
					success : function(result) { // 요청 처리 성공시 자동으로 호출되는 콜백함수

						$('.selectScreen_name option').remove();
						$(".selectScreen_name")
								.append(
										'<option value="none" selected="selected" disabled>상영관을 선택하세요</option>');
						$(".selectScreen_name")
								.append(
										'<option value="none" disabled>=======================</option>');
						for (var i = 0; i < result.length; i++) {
							$(".selectScreen_name").append(
									'<option value="' +result[i].screen_code + '">'
											+ result[i].screen_name
											+ '</option');
						}

					},
					error : function(request, status, error) {
						alert("code:" + request.status + "\n" + "message:"
								+ request.responseText + "\n" + "error:"
								+ error);

					}
				});//ajax
	}

	$(function() {
		$("#sch_movie_date").datepicker(
				{
					dateFormat : 'yy-mm-dd' //달력 날짜 형태
					,
					showOtherMonths : true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
					,
					showMonthAfterYear : true // 월- 년 순서가아닌 년도 - 월 순서
					,
					changeYear : true //option값 년 선택 가능
					,
					changeMonth : true //option값  월 선택 가능                
					,
					yearSuffix : "년" //달력의 년도 부분 뒤 텍스트
					,
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 텍스트
					,
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ] //달력의 월 부분 Tooltip
					,
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ] //달력의 요일 텍스트
					,
					dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일',
							'토요일' ] //달력의 요일 Tooltip
					,
					minDate : "0D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
					,
					maxDate : "+100D" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
				});
	});
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
			<!-- 들어갈내용 -->
			<main>
				<div class="container modal admin-modal-register" style="display: none">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card border-1 mt-5">
								<div class="card-header">
									<button type="button" class="close-modal"
										onclick="modalClose()" style="border: none;">닫기</button>
									<h3 class="text-center font-weight-light my-4">직접영화등록</h3>
					</div>
								<div class="row justify-content-center">
									<div class="col-lg-7" style="width: 700px">
										<div class="card border-1 mt-5">
											<div class="card-header">
												<h3 class="text-center font-weight-light my-4">공지사항 등록</h3>
											</div>
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
				</div>


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