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
			<!-- 사이드nav -->
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
			<!-- 들어갈내용 -->
			 <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">스토어 상품 등록</h3></div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" />
                                                        <label for="inputFirstName">상품 코드</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" />
                                                        <label for="inputLastName">상품 이름</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" />
                                                        <label for="inputFirstName">상품 가격</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" />
                                                        <label for="inputLastName">상세 설명</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPassword" type="password" placeholder="Create a password" />
                                                        <label for="inputPassword">상품 타입</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" type="password" placeholder="Confirm password" />
                                                        <label for="inputPasswordConfirm">상품 이미지</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-primary btn-block" href="login.html">등록하기</a></div>
                                            </div>
                                        </form>
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
