<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url:"http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=20124079",
			dataType:"json",
			success: function(data){
				let movieCd = data.movieInfoResult.movieInfo.movieCd;
				let movieNm = data.movieInfoResult.movieInfo.movieNm;
				let openDt = data.movieInfoResult.movieInfo.openDt;
				
				let peopleNm = data.movieInfoResult.movieInfo.directors.peopleNm;
				let watchGradeNm = data.movieInfoResult.movieInfo.audits.watchGradeNm;
				let genreNm = data.movieInfoResult.movieInfo.genres.genreNm;
				
				let prdtStatNm = data.movieInfoResult.movieInfo.prdtStatNm;
				
				
				// 이렇게 한걸 관리자페이지에서 DB에 저장하면 좋을 것 같고
				// 관리자페이지에서 저장한 DB에서 저장한 데이터를 뷰에 뿌리는 방식으로
				// 관리자페이지에서 파라미터에 영화코드만 주고 저장하는 방식으로 만들기만하고
				// 영화 포스터가 문제니까 지금은 지정한 영화코드 몇개만 DB에 넣고 
				// 그에따른 포스터도 수작업으로 파일 갖고 있는 걸로
				//
				// 현재 감독(peopleNm), 심의정보(watchGradeNm), 장르(genreNm)가
				// 배열로 저장되어있어서 변수에 저장시 undefine 인 상태이므로 수정필요함
				// 감독, 심의정보, 장르 상위 경로는 위 코드에 적혀있음
				// 배우를 추가해도 배열로 저장되어있어서 처리하는 작업 필요할것 같음
				
				
				
				
				$("#movieCd").append(movieCd)
				$("#movieNm").append(movieNm)
				$("#openDt").append(openDt)
				$("#peopleNm").append(peopleNm)				//
				$("#watchGradeNm").append(watchGradeNm)		//
				$("#genreNm").append(genreNm)				//
				$("#prdtStatNm").append(prdtStatNm)
				
				
			}
		});
	});
</script>
</head>
<body>
	<h1> 영화 상세 정보</h1>
	<div>
			<p id = "movieCd">영화코드 : </p>
			<p id = "movieNm">영화이름 : </p>
			<p id = "openDt">개봉일 :  </p>
			<p id = "peopleNm">감독 :  </p>
			<p id = "watchGradeNm">심의정보 :  </p>
			<p id = "genreNm">장르 :  </p>
			<p id = "prdtStatNm">제작상태 :  </p>
	</div> 
</body>
</html>