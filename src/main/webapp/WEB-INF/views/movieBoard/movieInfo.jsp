<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- 
	관리페이지로 이동할 페이지로 여기서는 그 DB값만 받을 예정 
 -->
<meta charset="UTF-8">

<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body id="top">
  

    <div id="container">
        <div id="content">
            
<div class="wrap-movie-title">
    <h2 class="movie-title">상세보기</h2>
</div>

<div class="section group section-movie-info">

    <div class="wrap">
        <ul class="basic">
			<li id= 'info_story' ></li>
			
			<li id= 'info_still' ></li>
			<li id= 'info_nation' ></li>
			<li id= 'info_poster' ></li>
			<li id= 'info_rating' ></li>
			<li id= 'info_director' ></li>
			<li id= 'info_actors' ></li>
			<li id= 'info_time'>	</li>
			<li id= 'info_genre' ></li>
			
        </ul>
		${info_still}
							
           
        </div>
    </div><!--.wrap-->

</div>


        </div>
  <script type="text/javascript">
$(function() {

	$.ajax({
	url : 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json2.jsp?collection=kmdb_new2&ServiceKey=N6BL7Q77SG0M41244297&title='+"스즈메의 문단속",
	type : 'GET',
	dataType : 'json',
	success : function(Data) {
		console.log(Data);
		/*줄거리*/
		let info_story = Data.Data[0].Result[0].plots.plot[0].plotText;
		/*스틸컷*/
		let info_still = Data.Data[0].Result[0].stlls.split('|')[0];
		/*국가*/
		let info_nation = Data.Data[0].Result[0].nation;
		/*포스터*/
		let info_poster = Data.Data[0].Result[0].posters.split('|')[0];
		/*관람등급*/
		let info_rating = Data.Data[0].Result[0].rating;
		/*감독*/
		let info_director = Data.Data[0].Result[0].directors.director[0].directorNm;
		/*배우*/
		let info_actors = Data.Data[0].Result[0].actors.actor[0].actorNm
				  + ", " + Data.Data[0].Result[0].actors.actor[1].actorNm
				  + ", " + Data.Data[0].Result[0].actors.actor[2].actorNm;
		/*상영시간 */
		let info_time = Data.Data[0].Result[0].runtime;
		/*장르*/
		let info_genre = Data.Data[0].Result[0].genre;
		
		$('#info_story').html(info_story);
		$('#info_still').html('<img src="'+info_still+'"/>');
		$('#info_nation').html(info_nation);
		$('#info_poster').html('<img src="'+info_poster+'"/>');
		$('#info_rating').html(info_rating);
		$('#info_director').html(info_director);
		$('#info_actors').html(info_actors);
		$('#info_time').html(info_time);
		$('#info_genre').html(info_genre);

		
		
		}
	
		});
	});
</script>
</body>
</html>