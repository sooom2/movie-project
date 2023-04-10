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
		<a class="navbar-brand ps-3" href="admin">IMOVIE</a>
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
		<!-- 고정  -->
		<jsp:include page="admin_nav.jsp"/>
		<!-- 고정 -->
			

		
		<div id="layoutSidenav_content">
			<!-- 들어갈내용 -->
			 <main>
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card border-1 mt-5">
                                    <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">상영일정관리</h3>
                                    </div>
                                    <div class="card-body">
                                        <form> 
                                            <div class="row mb-3">
                                            
                                             	<div class="col-md-4">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="res_date" type="date" value=""/>
                                                        <label for="res_date">날짜선택</label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                               <div class="row mb-3">
                                            
                                               <div class="'" >
                                                    <div class="form-floating mb-3 mb-md-0 selectbox" >
                                                        <div class="screen_name">
                                                        	<label for="screen_name">영화선택 : </label>
															<select name="screen_name">
															    <option value="1">~~~~~~</option>
															    <option value="2">~~~~~</option>
															    <option value="3">~~~~~~</option>
															</select>
                                                        </div>
                                                    </div>
                                               	</div>
                                            </div>
                                            
                                            <hr>
                                            
                                            
                                            <div class="row mb-3">
                                            	
                                           	  <div class="col-md-6 ">
                                                  <div class="form-floating mb-3 mb-md-0 selectbox">
                                                      <div class="cinema_name">
                                                      	<label for="cinema_name">영화관명 : </label>
													<select name="cinema_name">
													    <option value="semyeon">서면점</option>
													    <option value="busan">부산점</option>
													    <option value="dongrae">동래점</option>
													</select>
                                                      </div>
                                                  </div>
                                                </div>
                                                
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0 selectbox">
                                                        <div class="screen_name">
                                                        	<label for="screen_name">상영관 : </label>
															<select name="screen_name">
															    <option value="1">1관</option>
															</select>
                                                        </div>
                                                    </div>
                                               	</div>
                                            </div>
                                            <div class="row mb-3">
                                            	
                                           	  <div class=" ">
                                           	  
                                           	  <div class="form-floating mb-3 mb-md-0 selectbox">
                                                        <div class="screen_name">
                                                        	<label for="">상영시작시간 : </label>
															<select name="">
															    <option value="">09:00</option>
															    <option value="">10:00</option>
															    <option value="">11:00</option>
															    <option value="">12:00</option>
															    <option value="">13:00</option>
															    <option value="">14:00</option>
															    <option value="">15:00</option>
															    <option value="">16:00</option>
															    <option value="">17:00</option>
															    <option value="">18:00</option>
															    <option value="">19:00</option>
															    <option value="">20:00</option>
															</select>
                                                        </div>
                                                  </div>
                                                </div>
                                            </div>
                                          
                                            
                                            <div class="modal-bottom flex">
												<button type="button" class="btn-modal2" id="btnFind">확인</button>
												<button type="button" class="btn-modal1" onclick="modalClose()">취소</button>
											</div>
                                            
                                        </form>
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