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
<script type="text/javascript">

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
		
	<c:if test="${not empty sessionScope.sId }">
		<script type="text/javascript">
			alert("잘못된 접근입니다!");
			location.href = "./";
		</script>
	</c:if>	
		
		
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

			<!-- 		<a href="javascript:doDisplay();">dddd</a> -->
			<!-- 들어갈내용 -->
			<main>
				<!-- 영화등록모달 -->
				<div class="container modal admin-modal-register" style="display: none">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card border-1 mt-5">
								<div class="card-header">
									<button type="button" class="close-modal"
										onclick="modalClose()" style="border: none;">닫기</button>
									<h3 class="text-center font-weight-light my-4">직접영화등록</h3>
								</div>
								<div class="card-body">
									<form action="registMoviePro">
									<div class="row mb-4">
                                      	<h5 style="text-align:left">포스터등록</h5>
                                   		<div class="col-md-3 moviePoster">
                                       		<div id='View_area' style='position:relative; height: 210px; dispaly: inline;'></div>
                                        </div>
                                        
                                        <div class="col-md-8">
											<div class="filebox">
										    <input type="file" name="profile_pt" id="profile_pt" class="upload-name" onchange="previewImage(this,'View_area')">
											</div>
                                        </div>
                                     </div>
									
										
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_movie_code"class="form-control" id="info_movie_code" type="text" value="" />
													<label for="info_movie_code">영화코드</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-floating">
													<input name="info_movie_title" class="form-control" id="info_movie_title" type="text" /> 
													<label for="info_movie_title">영화제목</label>
												</div>
											</div>
										</div>
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating">
													<input name="info_year" class="form-control" id="info_year" type="text"/>
													<label for="info_year">제작년도</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_time" class="form-control" id="info_time" type="" />
													<label for="info_time">상영시간</label>
												</div>
											</div>

										</div>
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_showdate" class="form-control" id="info_showdate" type="date"/>
													<label for="info_showdate">상영일</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_enddate" class="form-control" id="info_enddate" type="date" />
													 <label for="info_enddate">종영일</label>
												</div>
											</div>
										</div>
										<div class="row mb-3">
											<div class="col-md">
												<div class="form-floating mb-3 mb-md-0">
													<input name="info_story" class="form-control" id="info_story" type="text" style="max-width: 100%"/>
													<label for="inputFirstName">줄거리</label>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="d-grid">
												<input class="btn btn-primary btn-block" type="submit" value="등록"> 
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 등록 -->
<script>

		$(function(){
			var targetDay = new Date()
			$.ajax({
				url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f2a15704bc55c5e4e93c1f9bd3949e89&targetDt=20190900',
				type : 'GET',
				success : function(data) {
					var html = '';
					html += '<option selected>영화를 고르시오</option>';
					for (var i = 0; i < data.boxOfficeResult.dailyBoxOfficeList.length; i++) {
						// 밑 api에서 movieCd가 아니라 movieNm을 요구해서 #api 값을 cd->nm으로
// 						html += '<option value="'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieCd +'">'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieNm + '</option>';
						html += '<option value="'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieNm
									 +'"movieCd="'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieCd
									 		+'">'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieNm + '</option>';
						
						$('#api').html(html);
						
					}
				}
			});
		});
			
		function apibutton(){
			// 선택버튼 눌렀을 때 
			var info_movie_title = $('#api').val();
			var info_movie_code = $("#api > option:selected").attr('movieCd')
			
			if($(".posterList")){
				$(".posterlist").remove();
			}
			
			$.ajax({
// 			url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f2a15704bc55c5e4e93c1f9bd3949e89&movieCd='+movieCd,
			url : 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&ServiceKey=N6BL7Q77SG0M41244297&sort=prodYear,1&title='+info_movie_title,
			type : 'GET',
			dataType: 'json',
			success : function(Data) {// 미리 작업해둔게 Data 였어서 data에서 Data로 바꿨어요
				/* 수정전 23.04.10 이전 
				html = '';
				let info_movie_code = data.movieInfoResult.movieInfo.movieCd;
				let info_movie_title = data.movieInfoResult.movieInfo.movieNm;
				let info_movie_poster = data.movieInfoResult.movieInfo.movieCd;
				let info_year = data.movieInfoResult.movieInfo.prdtYear;
				let info_time = data.movieInfoResult.movieInfo.showTm;
				
				
				*/
				// 포스터나 스틸컷부분 추가 하려면 스플릿을 여기가 아닌 DB에서 빼올때 작업을 해야하나
				// 시간관계상 나중에......
				
				
				
				// 수정 후 23.04.10
				// 문제됐던점 : 정렬 추가 
				/*줄거리*/
				let info_story = Data.Data[0].Result[0].plots.plot[0].plotText;
				/*스틸컷*/
				let info_still = Data.Data[0].Result[0].stlls.split('|')[0];
				/*국가*/
				let info_nation = Data.Data[0].Result[0].nation;
				/*포스터*/
				let info_movie_poster = Data.Data[0].Result[0].posters.split('|')[0];
				/*관람등급*/
				let info_rating = Data.Data[0].Result[0].rating;
				/*제작년도*/
				let info_year = Data.Data[0].Result[0].prodYear;
				
				/*감독*/
				let info_director = Data.Data[0].Result[0].directors.director[0].directorNm;
				/*배우*/
				let info_actors = Data.Data[0].Result[0].actors.actor[0].actorNm
						  + ", " + Data.Data[0].Result[0].actors.actor[1].actorNm
						  + ", " + Data.Data[0].Result[0].actors.actor[2].actorNm;
				/*상영시간 */
				let info_time = Data.Data[0].Result[0].runtime;
				
				/* 23.04.12*/
				/*상영시간 00:00타입으로 변환  */
				let strNum = info_time;
				let num = parseInt(strNum);
				let date = new Date(0, 0, 0, Math.floor(num / 60), num % 60);
				let options = { hour12: false, hour: "2-digit", minute: "2-digit" };
				let runningTime = date.toLocaleTimeString("en-US", options);
				
//				확인용으로 올려둔 alert 주석 처리 04.12. 16:50
// 				alert(runningTime);
				
				
				
				/*상영일*/
				let str = Data.Data[0].Result[0].repRlsDate;
				var info_showdate = str.substring(0,4) + "-" + str.substring(4,6) + "-" + str.substring(6,8); 
				
				/*
				let str = data.movieInfoResult.movieInfo.openDt;
				var info_showdate = str.substring(0,4) + "-" + str.substring(4,6) + "-" + str.substring(6,8);
				*/
				
				/*장르*/
				let info_genre = Data.Data[0].Result[0].genre;
				
				//상영일 > 종영일 계산하기
					var info_enddate = new Date(info_showdate);
					info_enddate.setDate(info_enddate.getDate() + 100);
				    var dateObject = new Date(info_enddate);
				    var isoDateString = dateObject.toISOString();				/// 리바운드 영화 넣었을때 오류 나는 부분 
				    var formattedDateString = isoDateString.slice(0, 10);
				   	info_enddate = formattedDateString;
				/*				수정 이전
			   	$(".poster").append(
						"<img src='https://file.cineq.co.kr/i.aspx?movieid="+movieCd+"&amp;size=210' alt='포스터' class='poster posterlist'>"
				);
			    */
			   	$(".poster").append("<img src='"+info_movie_poster+"' name='info_movie_poster' alt='포스터' class='poster posterlist'>");
			    
			    
			    // 지금 무비 포스터가 input hidden으로 넣어둔 상태 
			    $('input[name=info_movie_poster]').attr('value',info_movie_poster);	//포스터		
				$('input[name=info_movie_code]').attr('value',info_movie_code);		//영화코드
				$('input[name=info_movie_title]').attr('value',info_movie_title);		//영화제목
				$('input[name=info_year]').attr('value',info_year);		//제작년도
				$('input[name=info_time]').attr('value',runningTime);		//상영시간
				$('input[name=info_showdate]').attr('value',info_showdate);		//상영일
				$('input[name=info_enddate]').attr('value',info_enddate);		//종영일
				$('input[name=info_story]').attr('value',info_story);			//줄거리
				$('input[name=info_director]').attr('value',info_director);			//감독
				$('input[name=info_nation]').attr('value',info_nation);			//제작국가
				$('input[name=info_rating]').attr('value',info_rating);			//관람등급
				$('input[name=info_genre]').attr('value',info_genre);			//장르
			}

		});
			
		}
</script>	

				<!-- 최신영화불러오기 -->
				<div class="container modal admin-modal-latest"
					style="display: none">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card border-1 mt-5">
								<div class="card-header" style="text-align: center">
									<button type="button" class="close-modal" onclick="modalClose()" style="border: none;">닫기</button>
									<h3 class="text-center font-weight-light my-4">최신영화등록</h3>
									<span>최신개봉 영화 목록 고르기</span><br><br>
									<select id="api" name="api"> </select>
								 <input onclick="apibutton()"type="button" value="검색">	
								</div>
								<div class="card-body">
									<div class="container">
										<div class="content">
											<div class="subscribe">
												<div class="motto">
													<form action="registMoviePro" >
														<div class="row mb-4">
					                                      	<h6 style="text-align:left">포스터</h6>
					                                   		<div class="col-md-3 moviePoster">
					                                       		<div id='View_area' class="poster" style='position:relative; height: 210px; dispaly: inline;'>
					                                       		</div>
					                                        </div>
					                                        
					                                        <div class="col-md-8">
																<div class="filebox">
															    <input type="file" name="profile_pt" id="profile_pt" class="upload-name" onchange="previewImage(this,'View_area')">
																</div>
					                                        </div>
					                                     </div>
										                                     
														<div class="row mb-3">
															<div class="col-md-6">
																<div class="form-floating mb-3 mb-md-0">
																	<input class="form-control" id="info_movie_code" name="info_movie_code" type="text" value="" />
																	<label for="info_movie_code">영화코드</label>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-floating">
																	<input class="form-control" id="info_movie_title" name="info_movie_title" type="text" value="" /> 
																	<label for="info_movie_title">영화제목</label>
																</div>
															</div>
														</div>
														<div class="row mb-3">
															<div class="col-md-6">
																<div class="form-floating">
																	<input class="form-control" id="info_year" name="info_year" type="text" value=""/>
																	<label for="info_year">제작년도</label>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-floating mb-3 mb-md-0">
																	<input class="form-control" id="info_time" name="info_time" type="text" value="" />
																	<label for="info_time">상영시간</label>
																</div>
															</div>
				
														</div>
														<div class="row mb-3">
															<div class="col-md-6">
																<div class="form-floating mb-3 mb-md-0">
																	<input class="form-control" id="info_showdate" name="info_showdate" type="date" value="2023-02-23"/>
																	<label for="info_showdate">상영일</label>
																</div>
															</div>
															<div class="col-md-6">
																<div class="form-floating mb-3 mb-md-0">
																	<input class="form-control" id="info_enddate" name="info_enddate" type="date" value="" />
																	 <label for="info_enddate">종영일</label>
																</div>
															</div>
														</div>
														<div class="row mb-3">
															<div class="col-md">
																<div class="form-floating mb-3 mb-md-0">
																	<input class="form-control" id="info_story" name="info_story" type="text" style="max-width: 100%"/>
																	<label for="info_story">줄거리</label>
																</div>
															</div>
														</div>
														<!-- hidden 영역 -->
														<input type="hidden" name = "info_director">
														<input type="hidden" name = "info_nation">
														<input type="hidden" name = "info_rating">
														<input type="hidden" name = "info_genre">
														<input type="hidden" name = "info_movie_poster">
														<!-- hidden 영역 -->
														<div class="row">
															<div class="d-grid">
																<input class="btn btn-primary btn-block" type="submit" value="등록"> 
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
				</div>


				<!-- 테이블 -->
				<div class="datatable-container">
					<h3 class="text-center font-weight-light my-4">최신영화등록</h3>
					<input class="btn btn-block btn-more" type="button" value="직접영화등록" onclick="doMovieRegister()"> 
					<input class="btn btn-block btn-more" type="button" value="최신영화불러오기" onclick="doLatest()">
					<table id="datatablesSimple" class="datatable-table">
						<thead>
							<tr>
								<th data-sortable="true" style="width: 8%;"><a href="infoMovieCodeSort" class="datatable-sorter">영화코드</a></th>
								<th data-sortable="true" style="width: 10%;"><a href="infoMovieNameSort" class="datatable-sorter">영화제목</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="infoYearSort"	class="datatable-sorter">제작년도</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="infoTimeSort"	class="datatable-sorter">상영시간</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="infoShowDateSort"	class="datatable-sorter">상영일</a></th>
								<th data-sortable="true" style="width: 8%;"><a href="infoEndDateSort"	class="datatable-sorter">종영일</a></th>
								<th data-sortable="true" style="width: 15%;"><a href="infoStorySort" class="datatable-sorter">줄거리</a></th>
								<th data-sortable="true" style="width: 10%;"><a href="#" class="">수정/삭제</a></th>
							</tr>
						</thead>
						<!-- 회원목록 -->
						<c:forEach var="movie" items="${movieList }">
						<tbody>
							<tr style="text-align: center;" data-index="0">
								<td>${movie.get("info_movie_code") }</td>
								<td>${movie.get("info_movie_title") }</td>
								<td>${movie.get("info_year") }</td>
								<td>${movie.get("info_time") }</td>
								<td>${movie.get("info_showdate") }</td>
								<td>${movie.get("info_enddate") }</td>
								<td id="info_story">${movie.get("info_story") }</td>
<%-- 								<td><img alt="" src="${movie.get('info_movie_poster') }"></td> --%>
								<td class="modi">
										 			 
								<input onclick="location.href='selectMovie?info_movie_code=${movie.get('info_movie_code')}'" class="btn btn-block btn-more" type="button" value="M O R E">
<!-- 								</a> -->
								</td>
							</tr>
						</tbody>
						</c:forEach>
							

	
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
