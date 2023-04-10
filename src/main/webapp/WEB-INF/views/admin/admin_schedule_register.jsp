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
<script type="text/javascript">
function doScheduleMovie(){

	let dis = document.querySelector(".admin-modal");
	
	if(dis.style.display="none"){
		dis.style.display="block"
		
		
	} else{
		dis.style.display="none";
	}
}

function modalClose(){
	let dis = document.querySelector(".admin-modal");
	dis.style.display="none";
}
	
$(function(){
	
	$.ajax({
		
		url:admin_movie_res_register_pro,
		data: admin_movie_res_register_pro,
		type : 'POST',
		success : function(data) {
			alert(data)
		}
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
			 <!-- 모달 -->
                    <!-- 테이블 -->
                   <div class="datatable-container">
                   <h3 class="text-center font-weight-light my-4">영화예매관리</h3>
                    <input class="btn btn-block btn-more" type="button" value="일정등록" onclick="location.href='movieScheduleUpdate'">
					<table id="datatablesSimple" class="datatable-table">
						<thead>
							<tr>
								<th data-sortable="true" style="width: 8%;"><a href="#" class="datatable-sorter">결제번호</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="#" class="datatable-sorter">회원ID</a></th>
								<th data-sortable="true" style="width: 10%;"><a href="#" class="datatable-sorter">영화제목</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="#" class="datatable-sorter">영화관명</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="#" class="datatable-sorter">상영관명</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="#" class="datatable-sorter">관람날짜</a></th>
								<th data-sortable="true" style="width: 7%;"><a href="#" class="datatable-sorter">좌석</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="#" class="datatable-sorter">결제금액</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="#" class="datatable-sorter">결제일</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="#" class="datatable-sorter">수정</a></th>
							</tr>
						</thead>
						<!-- 회원목록 -->
						<tbody>
							<tr data-index="0">
								<td>15611889</td>
								<td>admin1</td>
								<td>리바운드</td>
								<td>서면점</td>
								<td>1관</td>
								<td>2023-04-05</td>
								<td>A1,A2</td>
								<td>\20,000원</td>
								<td>2023-04-05</td>
								<td class="modi">
									<input class="btn btn-block btn-more" type="button" value="M O R E" onclick="doDisplay()">
								</td>
							</tr>
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