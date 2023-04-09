<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<body class="landing-page landing-page2">
<<<<<<< Upstream, based on origin/member_file
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
		
<div class="main" style="background-image: url('images/main.png')">
    <div class="cover black" data-color="black"></div>
=======
<div class="cover black" data-color="black"></div>
>>>>>>> 1b4d7a3 영화 api로 불러오기
    <div class="container">
        <h1 class="logo cursive"></h1>
        <div class="content">
            <div class="subscribe">
                <div class="motto">
<<<<<<< Upstream, based on origin/member_file
                	
                	<span>최신개봉 영화 목록 (10개)</span><br><br>
                	<select id="api" name="api">
                		
                	
                	</select>
=======
                	<span>최신 개봉 영화</span><br>
                	<select id="api" name="api"></select>
>>>>>>> 1b4d7a3 영화 api로 불러오기
                	<input onclick="apibutton()" type="button" value="검색">
                	<table>
						<tr>
							<th>영화코드</th>
							<th>영화제목</th>
							<th>제작년도</th>
							<th>상영시간</th>
							<th>상영일</th>
							<th>종영일</th>
							<th>줄거리</th>
							<th>수정</th>
						</tr>
						<tr class ="movieList">
						
						</tr>
					</table>	
                    <table id="reg">
                    </table>
                </div>
            </div>
        </div>
    </div>
 <script>
// data 부분에 targetDt 하드코딩 날짜 하드코딩 되어있는 상태
// itemPerPage
// searchDailyBoxOfficeList에서는 dailyBoxOffice rank, movieCdm, movieNm 정도 담겨져 있고
// 담겨져 있는 movieCd를 searchMovieInfo에서 받아서 상세 정보가 나오는 형태

 		$(document).ready(function(){
 			$.ajax({
 				url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json',
 				data:{
 					'key' : 'f5eef3421c602c6cb7ea224104795888',
					'targetDt' : '20230407',
					'itemPerPage' : '10'
 					},
 				type : 'GET',
 				success : function(data) {
 					var html = '박스오피스 순위';
 					for (var i = 0; i < data.boxOfficeResult.dailyBoxOfficeList.length; i++) {
<<<<<<< Upstream, based on origin/member_file
 						
 						html += '<option value="'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieCd +'">'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieNm + '</option>';
 						
=======
 						html += '<option value="'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieCd +'">'
 												 + data.boxOfficeResult.dailyBoxOfficeList[i].movieNm +'</option>';
>>>>>>> 1b4d7a3 영화 api로 불러오기
 						$('#api').html(html);
 					}
 						
 				}
 			});
 		});
 		
 		function apibutton(){
 			
 			var movieCd = $('#api').val();
 			
 			$.ajax({
				url : 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=' + movieCd,
				type : 'GET',
				success : function(data) {
					html = '';
<<<<<<< Upstream, based on origin/member_file
					html += '<tr>';
					html += '<td>영화코드</td>';
					html += '<td><input type="text" id="midx" name="midx" value="'+ data.movieInfoResult.movieInfo.movieCd +'"></td>';
					html += '</tr>';
					html += '<tr>';
					html += '<td>영화제목</td>';
					html += '<td><input type="text" id="mName" name="mName" value="'+ data.movieInfoResult.movieInfo.movieNm +'"></td>';
					html += '</tr>';
					html += '<tr>';
					html += '<td>줄거리</td>';
					html += '<td></td>';
					html += '</tr>'
					html += '<tr>';
					html += '<td>감독/배우</td>';
					html += '<td><input type="text" id="mPer" name="mPer" value="'+ data.movieInfoResult.movieInfo.directors[0].peopleNm +'"></td>';
					html += '</tr>';
					html += '<tr>';
					html += '<td>개봉일</td>';
=======
					html += '<td><input type="text" id="movieCd" name="movieCd" value="'+ data.movieInfoResult.movieInfo.movieCd +'"></td>';
					html += '<td><input type="text" id="movieNm" name="movieNm" value="'+ data.movieInfoResult.movieInfo.movieNm +'"></td>';
					html += '<td><input type="text" id="prdtYear" name="prdtYear" value="'+ data.movieInfoResult.movieInfo.prdtYear +'"></td>';
					html += '<td><input type="text" id="showTm" name="showTm" value="'+ data.movieInfoResult.movieInfo.showTm +'"></td>';
// 					html += '<td><input type="text" id="mPer" name="mPer" value="'+ data.movieInfoResult.movieInfo.directors[0].peopleNm +'"></td>';
>>>>>>> 1b4d7a3 영화 api로 불러오기
					html += '<td><input type="text" id="mDate" name="mDate" placeholder="yyyy-mm-dd" value="'+ data.movieInfoResult.movieInfo.openDt +'"></td>';
					html += '<td><input type="text" value="" placeholder="종영일"></td>';
					html += '<td><input type="text" value="" placeholder="줄거리"></td>';
					html += '<td colspan="2"><input type="submit" value="영화추가"></td>';
					$('.movieList').html(html);
				}

			});
 			
 		}
 		
// 		$('#form').submit(function(){
			 // Get form
	 	     // var form = $('#form')[0];
	        // Create an FormData object 
// 	        var formData = new FormData();
// 	        formData.append("midx",$('#midx').val());
// 	        formData.append("mRunTime",$('#mRunTime').val());
// 			formData.append("mName",$('#mName').val());
// 			formData.append("mCont",$('#mCont').val());
// 			formData.append("mPer",$('#mPer').val());
// 			formData.append("mDate",$('#mDate').val());
// 			formData.append("mPhoto",$('#mPhoto')[0].files[0]);
			
// 	 		$.ajax({
// 				url : '',
// 				type : 'POST',
// 				data : formData,
// 	            processData: false,
// 	            contentType: false,
// 				success : function(data) {
// 					location.reload();
// 				}
				
<<<<<<< Upstream, based on origin/member_file
			});
	 		return false; 		
	 	});
	

 	
	
=======
// 			});
// 	 		return false; 		
// 	 	});
>>>>>>> 1b4d7a3 영화 api로 불러오기
	</script>
</body>

</html>
