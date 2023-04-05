<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="main">IMOVIE</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
<!-- 			<div class="input-group"> -->
<!-- 				<input class="form-control" type="text" placeholder="Search for..." -->
<!-- 					aria-label="Search for..." aria-describedby="btnNavbarSearch" /> -->
<!-- 				<button class="btn btn-primary" id="btnNavbarSearch" type="button"> -->
<!-- 					<i class="fas fa-search"></i> -->
<!-- 				</button> -->
<!-- 			</div> -->
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
					<i class="fas fa-user fa-fw"></i>
				</a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="main">홈</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="logout">Logout</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
					<div class="sb-sidenav-menu-heading">MOVIE</div>
					
						<a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 영화관리
						</a>

						<a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 상영일정관리
						</a>
						
						 <a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 상영관관리
						</a>
						
						<a class="nav-link" href="">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 영화예매 관리
						</a>
						
						<div class="sb-sidenav-menu-heading">BOARD</div>
						
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#boardMgm" aria-expanded="false" aria-controls="boardMgm">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> 게시판 관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="boardMgm" aria-labelledby="" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
								<a class="nav-link" href="noticeMgm"> 공지사항</a>
								<a class="nav-link" href="">1대1문의게시판	</a>
								<a class="nav-link" href="">자주하는질문	</a>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">STORE</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#storeMgm" aria-expanded="false" aria-controls="storeMgm">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 스토어관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="storeMgm" aria-labelledby="" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="item_Pay">결제관리</a>
								<a class="nav-link" href="item_register">상품관리</a>
							</nav>
						</div>
						<!-- lnb -->
					</div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">ADMIN MAIN</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">아이무비 관리자 페이지</li>
					</ol>
					<div class="row">
						<div class="col-xl-3 col-md-6">
							<div class="card bg-primary text-black mb-4">
								<div class="card-body font20"> TODAY 예매<br> <span class="fontB">50</span>건 </div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-black stretched-link" href="#">더보기</a>
									<div class="small text-black">
										<svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
											focusable="false" data-prefix="fas" data-icon="angle-right"
											role="img" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 256 512" data-fa-i2svg="">
											<path fill="currentColor"
												d="M246.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L178.7 256 41.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"></path>
										</svg>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-warning text-black mb-4">
								<div class="card-body font20">TODAY 상영 영화<br><span class="fontB">6</span> 건</div>
								<div class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-black stretched-link" href="#">더보기</a>
									<div class="small text-black">
										<svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
											focusable="false" data-prefix="fas" data-icon="angle-right"
											role="img" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 256 512" data-fa-i2svg="">
											<path fill="currentColor"
												d="M246.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L178.7 256 41.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"></path>
										</svg>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-success text-black mb-4">
								<div class="card-body font20">스토어 주문<br> <span class="fontB">80</span> 건</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-black stretched-link" href="#">더보기</a>
									<div class="small text-black">
										<svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
											focusable="false" data-prefix="fas" data-icon="angle-right"
											role="img" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 256 512" data-fa-i2svg="">
											<path fill="currentColor"
												d="M246.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L178.7 256 41.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"></path>
										</svg>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-danger text-black mb-4">
								<div class="card-body font20">회원수<br> <span class="fontB">593</span>명</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-black stretched-link" href="#">더보기</a>
									<div class="small text-black">
										<svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
											focusable="false" data-prefix="fas" data-icon="angle-right"
											role="img" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 256 512" data-fa-i2svg="">
											<path fill="currentColor"
												d="M246.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L178.7 256 41.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"></path>
										</svg>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<svg class="svg-inline--fa fa-table me-1" aria-hidden="true"
								focusable="false" data-prefix="fas" data-icon="table" role="img"
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
								data-fa-i2svg="">
								<path fill="currentColor"
									d="M64 256V160H224v96H64zm0 64H224v96H64V320zm224 96V320H448v96H288zM448 256H288V160H448v96zM64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64z"></path>
							</svg>
							회원정보
						</div>
						<div class="card-body">
							<div
								class="datatable-wrapper datatable-loading no-footer sortable searchable fixed-columns">
								<div class="datatable-top">
									<div class="datatable-dropdown">
										<label> <select class="datatable-selector"><option
													value="5">5</option>
												<option value="10" selected="">10</option>
												<option value="15">15</option>
												<option value="20">20</option>
												<option value="25">25</option></select> 명
										</label>
									</div>
									<div class="datatable-search">
										<input class="datatable-input" placeholder="회원정보를 입력하세요"
											type="search" title="Search within table"
											aria-controls="datatablesSimple">
									</div>
								</div>
								<!-- 회원정보 테이블 -->
								<div class="datatable-container">
									<table id="datatablesSimple" class="datatable-table">
										<thead>
											<tr>
												<th data-sortable="true" style="width: 7%;"><a
													href="#" class="datatable-sorter">회원번호</a></th>
												<th data-sortable="true" style="width: 10%;"><a
													href="#" class="datatable-sorter">아이디</a></th>
												<th data-sortable="true" style="width: 10%;"><a
													href="#" class="datatable-sorter">이름</a></th>
												<th data-sortable="true" style="width: 10%;"><a
													href="#" class="datatable-sorter">생년월일</a></th>
												<th data-sortable="true" style="width: 10%;"><a
													href="#" class="datatable-sorter">휴대폰번호</a></th>
												<th data-sortable="true" style="width: 10%;"><a
													href="#" class="datatable-sorter">선호지점</a></th>
												<th data-sortable="true" style="width: 10%;"><a
													href="#" class="datatable-sorter">선호장르</a></th>
												<th data-sortable="true" style="width: 10%;"><a
													href="#" class="datatable-sorter">소셜가입</a></th>	
												<th data-sortable="true" style="width: 10%;"><a
													href="#" class="datatable-sorter">가입일자</a></th>
													
											</tr>
										</thead>
										<!-- 회원목록 -->
										<tbody>
											<tr data-index="0">
												<td>1</td>
												<td>admin</td>
												<td>관리자</td>
												<td>20230404</td>
												<td>01012341561</td>
												<td>서면</td>
												<td>스릴러</td>
												<td>카카오톡</td>
												<td>20230404</td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="datatable-bottom">
									<nav class="datatable-pagination">
										<ul class="datatable-pagination-list">
											<li
												class="datatable-pagination-list-item datatable-hidden datatable-disabled"><a
												data-page="1" class="datatable-pagination-list-item-link">‹</a></li>
											<li class="datatable-pagination-list-item datatable-active"><a
												data-page="1" class="datatable-pagination-list-item-link">1</a></li>
											<li class="datatable-pagination-list-item"><a
												data-page="2" class="datatable-pagination-list-item-link">2</a></li>
											<li class="datatable-pagination-list-item"><a
												data-page="3" class="datatable-pagination-list-item-link">3</a></li>
											<li class="datatable-pagination-list-item"><a
												data-page="4" class="datatable-pagination-list-item-link">4</a></li>
											<li class="datatable-pagination-list-item"><a
												data-page="5" class="datatable-pagination-list-item-link">5</a></li>
											<li class="datatable-pagination-list-item"><a
												data-page="6" class="datatable-pagination-list-item-link">6</a></li>
											<li class="datatable-pagination-list-item"><a
												data-page="2" class="datatable-pagination-list-item-link">›</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
			
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; IMOVIE 2023</div>
						<div>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
