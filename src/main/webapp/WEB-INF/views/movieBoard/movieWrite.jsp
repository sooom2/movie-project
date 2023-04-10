<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<body class="landing-page landing-page2">
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
		height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
		
<div class="main" style="background-image: url('images/main.png')"></div>
    <div class="container">
    	<h1 class="logo cursive"></h1>
        <div class="content">
            <div class="subscribe">
                <div class="motto">
                	<span>최신개봉 영화 목록 </span><br>
                	<select id="api" name="api">
                	</select>
                	<span>최신 개봉 영화</span><br>
                	<select id="api" name="api"></select>
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
 						html += '<option value="'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieCd +'">'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieNm + '</option>';
 						html += '<option value="'+ data.boxOfficeResult.dailyBoxOfficeList[i].movieCd +'">'
 												 + data.boxOfficeResult.dailyBoxOfficeList[i].movieNm +'</option>';
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
					html += '<td><input type="text" id="movieCd" name="movieCd" value="'+ data.movieInfoResult.movieInfo.movieCd +'"></td>';
					html += '<td><input type="text" id="movieNm" name="movieNm" value="'+ data.movieInfoResult.movieInfo.movieNm +'"></td>';
					html += '<td><input type="text" id="prdtYear" name="prdtYear" value="'+ data.movieInfoResult.movieInfo.prdtYear +'"></td>';
					html += '<td><input type="text" id="showTm" name="showTm" value="'+ data.movieInfoResult.movieInfo.showTm +'"></td>';
// 					html += '<td><input type="text" id="mPer" name="mPer" value="'+ data.movieInfoResult.movieInfo.directors[0].peopleNm +'"></td>';
					html += '<td><input type="text" id="mDate" name="mDate" placeholder="yyyy-mm-dd" value="'+ data.movieInfoResult.movieInfo.openDt +'"></td>';
					html += '<td><input type="text" value="" placeholder="종영일"></td>';
					html += '<td><input type="text" value="" placeholder="줄거리"></td>';
					html += '<td colspan="2"><input type="submit" value="영화추가"></td>';
					$('.movieList').html(html);
				}

			});
 			
 		}
 		
// 	 		var xhr = new XMLHttpRequest();
// 	 		var url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&nation=대한민국');
// 	 		/*URL*/ 
// 	 		var queryParams = '?' + encodeURIComponent('ServiceKey=서비스키');
// 	 		/*Service Key*/ 
// 	 		queryParams += '&' + encodeURIComponent('val001') + '=' + encodeURIComponent('2018'));
// 	 		/*상영년도*/ 
// 	 		queryParams += '&' + encodeURIComponent('val002') + '=' + encodeURIComponent('01'));
// 	 		/*상영월*/ xhr.open('GET', url + queryParams);
// 	 		xhr.onreadystatechange = function () { 
// 	 			if (this.readyState == 4) {
// 	 			alert('Status: '+this.status+'Headers: '+JSON.stringify(this.getAllResponseHeaders())+'Body: '+this.responseText);
// 	 			}
	 		}
				
			});
	 		return false; 		
	 	});
	
// 			});
// 	 		return false; 		
// 	 	});
	</script>
</body>

</html>
