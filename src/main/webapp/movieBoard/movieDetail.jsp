<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url:"http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=20124079",
			dataType:"json",
			success: function(data){
				alert(data.movieInfoResult.movieInfo.movieCd)	
			}
		});
	});

</script>
</head>
<body>
	<h1> 영화 상세정보</h1>
</body>
</html>