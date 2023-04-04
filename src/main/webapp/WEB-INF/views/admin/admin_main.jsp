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
<title>Dashboard - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
	rel="stylesheet" />
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.html">Start Bootstrap</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
			</div>
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<li><a class="dropdown-item" href="#!">Settings</a></li>
					<li><a class="dropdown-item" href="#!">Activity Log</a></li>
					<li><hr class="dropdown-divider" /></li>
					<li><a class="dropdown-item" href="#!">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="index.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Dashboard
						</a>
						<div class="sb-sidenav-menu-heading">Interface</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> Layouts
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="layout-static.html">Static
									Navigation</a> <a class="nav-link" href="layout-sidenav-light.html">Light
									Sidenav</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> Pages
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="login.html">Login</a> <a
											class="nav-link" href="register.html">Register</a> <a
											class="nav-link" href="password.html">Forgot Password</a>
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="401.html">401 Page</a> <a
											class="nav-link" href="404.html">404 Page</a> <a
											class="nav-link" href="500.html">500 Page</a>
									</nav>
								</div>
							</nav>
						</div>
						<div class="sb-sidenav-menu-heading">Addons</div>
						<a class="nav-link" href="charts.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> Charts
						</a> <a class="nav-link" href="tables.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> Tables
						</a>
					</div>
				</div>
				<div class="sb-sidenav-footer">
					<div class="small">Logged in as:</div>
					Start Bootstrap
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">Dashboard</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item active">Dashboard</li>
					</ol>
					<div class="row">
						<div class="col-xl-3 col-md-6">
							<div class="card bg-primary text-white mb-4">
								<div class="card-body"> TODAY 예매 00건 </div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="#">더보기</a>
									<div class="small text-white">
										<svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
											focusable="false" data-prefix="fas" data-icon="angle-right"
											role="img" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 256 512" data-fa-i2svg="">
											<path fill="currentColor"
												d="M246.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L178.7 256 41.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"></path></svg>
										<!-- <i class="fas fa-angle-right"></i> Font Awesome fontawesome.com -->
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-warning text-white mb-4">
								<div class="card-body">스토어 00 건</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="#">더보기</a>
									<div class="small text-white">
										<svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
											focusable="false" data-prefix="fas" data-icon="angle-right"
											role="img" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 256 512" data-fa-i2svg="">
											<path fill="currentColor"
												d="M246.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L178.7 256 41.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"></path></svg>
										<!-- <i class="fas fa-angle-right"></i> Font Awesome fontawesome.com -->
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-success text-white mb-4">
								<div class="card-body">TODAY 상영 영화 00 건</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="#">더보기</a>
									<div class="small text-white">
										<svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
											focusable="false" data-prefix="fas" data-icon="angle-right"
											role="img" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 256 512" data-fa-i2svg="">
											<path fill="currentColor"
												d="M246.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L178.7 256 41.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"></path></svg>
										<!-- <i class="fas fa-angle-right"></i> Font Awesome fontawesome.com -->
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-md-6">
							<div class="card bg-danger text-white mb-4">
								<div class="card-body">회원수 00 명</div>
								<div
									class="card-footer d-flex align-items-center justify-content-between">
									<a class="small text-white stretched-link" href="#">더보기</a>
									<div class="small text-white">
										<svg class="svg-inline--fa fa-angle-right" aria-hidden="true"
											focusable="false" data-prefix="fas" data-icon="angle-right"
											role="img" xmlns="http://www.w3.org/2000/svg"
											viewBox="0 0 256 512" data-fa-i2svg="">
											<path fill="currentColor"
												d="M246.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L178.7 256 41.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"></path></svg>
										<!-- <i class="fas fa-angle-right"></i> Font Awesome fontawesome.com -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<svg class="svg-inline--fa fa-chart-area me-1"
										aria-hidden="true" focusable="false" data-prefix="fas"
										data-icon="chart-area" role="img"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
										data-fa-i2svg="">
										<path fill="currentColor"
											d="M64 64c0-17.7-14.3-32-32-32S0 46.3 0 64V400c0 44.2 35.8 80 80 80H480c17.7 0 32-14.3 32-32s-14.3-32-32-32H80c-8.8 0-16-7.2-16-16V64zm96 288H448c17.7 0 32-14.3 32-32V251.8c0-7.6-2.7-15-7.7-20.8l-65.8-76.8c-12.1-14.2-33.7-15-46.9-1.8l-21 21c-10 10-26.4 9.2-35.4-1.6l-39.2-47c-12.6-15.1-35.7-15.4-48.7-.6L135.9 215c-5.1 5.8-7.9 13.3-7.9 21.1v84c0 17.7 14.3 32 32 32z"></path></svg>
									<!-- <i class="fas fa-chart-area me-1"></i> Font Awesome fontawesome.com -->
									Area Chart Example
								</div>
								<div class="card-body">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<canvas id="myAreaChart" width="769" height="307"
										style="display: block; width: 769px; height: 307px;"
										class="chartjs-render-monitor"></canvas>
								</div>
							</div>
						</div>
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									<svg class="svg-inline--fa fa-chart-bar me-1"
										aria-hidden="true" focusable="false" data-prefix="fas"
										data-icon="chart-bar" role="img"
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
										data-fa-i2svg="">
										<path fill="currentColor"
											d="M32 32c17.7 0 32 14.3 32 32V400c0 8.8 7.2 16 16 16H480c17.7 0 32 14.3 32 32s-14.3 32-32 32H80c-44.2 0-80-35.8-80-80V64C0 46.3 14.3 32 32 32zm96 96c0-17.7 14.3-32 32-32l192 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-192 0c-17.7 0-32-14.3-32-32zm32 64H288c17.7 0 32 14.3 32 32s-14.3 32-32 32H160c-17.7 0-32-14.3-32-32s14.3-32 32-32zm0 96H416c17.7 0 32 14.3 32 32s-14.3 32-32 32H160c-17.7 0-32-14.3-32-32s14.3-32 32-32z"></path></svg>
									<!-- <i class="fas fa-chart-bar me-1"></i> Font Awesome fontawesome.com -->
									Bar Chart Example
								</div>
								<div class="card-body">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<canvas id="myBarChart" width="769" height="307"
										class="chartjs-render-monitor"
										style="display: block; width: 769px; height: 307px;"></canvas>
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
									d="M64 256V160H224v96H64zm0 64H224v96H64V320zm224 96V320H448v96H288zM448 256H288V160H448v96zM64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64z"></path></svg>
							<!-- <i class="fas fa-table me-1"></i> Font Awesome fontawesome.com -->
							DataTable Example
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
												<option value="25">25</option></select> entries per page
										</label>
									</div>
									<div class="datatable-search">
										<input class="datatable-input" placeholder="Search..."
											type="search" title="Search within table"
											aria-controls="datatablesSimple">
									</div>
								</div>
								<div class="datatable-container">
									<table id="datatablesSimple" class="datatable-table">
										<thead>
											<tr>
												<th data-sortable="true" style="width: 19.298245614035086%;"><a
													href="#" class="datatable-sorter">Name</a></th>
												<th data-sortable="true" style="width: 30.576441102756892%;"><a
													href="#" class="datatable-sorter">Position</a></th>
												<th data-sortable="true" style="width: 14.912280701754385%;"><a
													href="#" class="datatable-sorter">Office</a></th>
												<th data-sortable="true" style="width: 8.583959899749374%;"><a
													href="#" class="datatable-sorter">Age</a></th>
												<th data-sortable="true" style="width: 14.348370927318296%;"><a
													href="#" class="datatable-sorter">Start date</a></th>
												<th data-sortable="true" style="width: 12.280701754385964%;"><a
													href="#" class="datatable-sorter">Salary</a></th>
											</tr>
										</thead>
										<tbody>
											<tr data-index="0">
												<td>Tiger Nixon</td>
												<td>System Architect</td>
												<td>Edinburgh</td>
												<td>61</td>
												<td>2011/04/25</td>
												<td>$320,800</td>
											</tr>
											<tr data-index="1">
												<td>Garrett Winters</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>63</td>
												<td>2011/07/25</td>
												<td>$170,750</td>
											</tr>
											<tr data-index="2">
												<td>Ashton Cox</td>
												<td>Junior Technical Author</td>
												<td>San Francisco</td>
												<td>66</td>
												<td>2009/01/12</td>
												<td>$86,000</td>
											</tr>
											<tr data-index="3">
												<td>Cedric Kelly</td>
												<td>Senior Javascript Developer</td>
												<td>Edinburgh</td>
												<td>22</td>
												<td>2012/03/29</td>
												<td>$433,060</td>
											</tr>
											<tr data-index="4">
												<td>Airi Satou</td>
												<td>Accountant</td>
												<td>Tokyo</td>
												<td>33</td>
												<td>2008/11/28</td>
												<td>$162,700</td>
											</tr>
											<tr data-index="5">
												<td>Brielle Williamson</td>
												<td>Integration Specialist</td>
												<td>New York</td>
												<td>61</td>
												<td>2012/12/02</td>
												<td>$372,000</td>
											</tr>
											<tr data-index="6">
												<td>Herrod Chandler</td>
												<td>Sales Assistant</td>
												<td>San Francisco</td>
												<td>59</td>
												<td>2012/08/06</td>
												<td>$137,500</td>
											</tr>
											<tr data-index="7">
												<td>Rhona Davidson</td>
												<td>Integration Specialist</td>
												<td>Tokyo</td>
												<td>55</td>
												<td>2010/10/14</td>
												<td>$327,900</td>
											</tr>
											<tr data-index="8">
												<td>Colleen Hurst</td>
												<td>Javascript Developer</td>
												<td>San Francisco</td>
												<td>39</td>
												<td>2009/09/15</td>
												<td>$205,500</td>
											</tr>
											<tr data-index="9">
												<td>Sonya Frost</td>
												<td>Software Engineer</td>
												<td>Edinburgh</td>
												<td>23</td>
												<td>2008/12/13</td>
												<td>$103,600</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="datatable-bottom">
									<div class="datatable-info">Showing 1 to 10 of 57 entries</div>
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
						<div class="text-muted">Copyright &copy; Your Website 2023</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
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
