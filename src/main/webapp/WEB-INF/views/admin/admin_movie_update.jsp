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
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="resources/js/jquery-3.6.4.js"></script>

<script type="text/javascript" src="resources/js/admin.js"></script>
<!-- 모달 -->
<script type="text/javascript">



// function doDisplay(info_movie_code) {
// 	let dis = document.querySelector(".admin-modal-modify");
// 	if (dis.style.display = "none") {
// 		dis.style.display = "block"
		
// 			$.ajax({
// 				type: "POST",
// 				url: "selectMovie",
// 				data: {
// 					info_movie_code: info_movie_code
// 				},
// 				datatype:"json",
// 				success: function(data){
					
// 					let info_movie_code = result.info_movie_code;
// 					let info_movie_title = result.info_movie_title;
// 					let info_year = result.info_year;
// 					let info_time = result.info_time;
// 					let info_showdate = result.info_showdate;
// 					let info_enddate = result.info_showdate;
// 					let info_story = result.info_story;
					
					
// 				}
// 			});
		
		
		
// 		$(".info_movie_code").val(info_movie_code);
// 		$(".info_movie_title").val(info_movie_title);
// 		$(".info_year").val(info_year);
		
		
// 	} else {
// 		dis.style.display = "none";
// 	}
	
	
// 	$(".btn-del").on("click",function(){
		
// 		let delConfirm = confirm("삭제하시겠습니까?");
// 		if (delConfirm) {
// 			$.ajax({
// 				type: "GET",
// 				url: "deleteMovie",
// 				data: {
// 					info_movie_code: info_movie_code
// 				},
// 				datatype:"json",
// 				success: function(data){
// 					alert("삭제완료");
// 				}
// 			});
// 		}
		
		
// 	});
// }


function doLatest() {
	let dis = document.querySelector(".admin-modal-latest");
	if (dis.style.display = "none") {
		dis.style.display = "block"
	} else {
		dis.style.display = "none";
	}
}

function doMovieRegister(){
	let dis = document.querySelector(".admin-modal-register");
	if (dis.style.display = "none") {
		dis.style.display = "block"
	} else {
		dis.style.display = "none";
	}
}

function modalClose() {
	let dis = document.querySelector(".admin-modal-register");
	let dis2 = document.querySelector(".admin-modal-latest");
	let dis3 = document.querySelector(".admin-modal-modify");
	dis.style.display = "none";
	dis2.style.display = "none";
	dis3.style.display = "none";
	
	
}

//이미지올리기
function previewImage(targetObj, View_area) {
	var preview = document.getElementById(View_area); //div id
	var ua = window.navigator.userAgent;

 
		var files = targetObj.files;
		
		
		for ( var i = 0; i < files.length; i++) {
			var file = files[i];
			
			var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
			if (!file.type.match(imageType))
				continue;
			
			var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
			alert(prevImg);
			if (prevImg) {
				preview.removeChild(prevImg);
			}
			var img = document.createElement("img"); 
			img.id = "prev_" + View_area;
			img.classList.add("obj");
			img.file = file;
			img.style.width = '170px'; 
			img.style.height = '210px';
			preview.appendChild(img);
			
			alert(targetObj.files.name);
			if (window.FileReader) { // FireFox, Chrome, Opera 확인.
				var reader = new FileReader();
				reader.onloadend = (function(aImg) {
					return function(e) {
						aImg.src = e.target.result;
					};
				})(img);
				reader.readAsDataURL(file);
			}
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
		<form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
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
			<main>
				<!-- 수정/삭제 -->
								<h3 class="text-center font-weight-light my-4">영화수정</h3>
								
									<form action="updateMovie">
									<div class="row mb-4">
                                      	<h5 style="text-align:left">포스터등록</h5>
                                   		<div class="col-md-3 moviePoster">
                                       		<div id='View_area' style='position:relative; height: 210px; dispaly: inline;'></div>
                                        </div>
                                        
                                        <div class="col-md-8">
											<div class="filebox">
										    <input type="file" name="info_movie_poster" id="profile_pt" class="upload-name" onchange="previewImage(this,'View_area')" style="margin-left: -142px;">
											</div>
                                        </div>
                                     </div>

										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_movie_code" class="form-control info_movie_code" id="info_movie_code" type="text" value="${selectMovie.get('info_movie_code') }" />
													<label for="info_movie_code">영화코드</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-floating">
													<input name="info_movie_title"  class="form-control info_movie_title" id="info_movie_title" type="text" value="${selectMovie.get('info_movie_title') }"/> 
													<label for="info_movie_title">영화제목</label>
												</div>
											</div>
										</div>
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating">
													<input name="info_year" class="form-control info_year" id="info_year" type="text" value="${selectMovie.get('info_year') }"/>
													<label for="info_year">제작년도</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_time" class="form-control info_time" id="info_time" type="text" value="${selectMovie.get('info_time') }"/>
													<label for="info_time">상영시간</label>
												</div>
											</div>
 
										</div>
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_showdate" class="form-control info_showdate" id="info_showdate" type="date" value="${selectMovie.get('info_showdate')}"/>
													<label for="info_showdate">상영일</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_enddate" class="form-control info_enddate" id="info_enddate" type="date" value="${selectMovie.get('info_enddate')}"/>
													 <label for="info_enddate">종영일<label>
												</div>
											</div>
										</div>
										<div class="row mb-3">
											<div class="col-md">
												<div class="form-floating mb-3">
													<input name="info_story" class="form-control info_story" id="info_story" type="text"value="${selectMovie.get('info_story') }" style="max-width: 100%"/>
													<label for="info_story">줄거리</label>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="mt-4 mb-0 col-md-6">
												<div class="d-grid">
													<input class="btn btn-primary btn-block" type="submit" value="수정">
												</div>
											</div>
											<div class="mt-4 mb-0 col-md-6">
												<div class="d-grid">
													<a class="btn btn-primary btn-block btn-del" href="">삭제</a>
												</div>
											</div>
										</div>
									</form>
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
</body>
</html>
