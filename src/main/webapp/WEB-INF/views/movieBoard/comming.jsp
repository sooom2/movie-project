<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/inc.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/movieInfo.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<jsp:include page="../nav.jsp" />   
</head>
<body id="top">
<div id = "container">
 		<div id="content">
			<div class="selector"></div>
			<div class="section group section-movie-list comming">
   				<ul>
					<c:forEach var="movie" items="${movieList }">
					    <li data-moviecode="${movie.info_movie_code }">
						    <span class="over over-a">
						    	<a href="reservation" class="rsv">
						    		<span class="over-btn-rsv">${movie.status }</span></a>
						    	<a href="MovieInfo?info_movie_code=${movie.info_movie_code }" class="info">
						    		<span class="over-btn-info">상세정보</span></a>
					    	</span>
					    	<img src="${movie.info_movie_poster}" class="posterlist">
					    	<div class="movie-desc">
					    		<p class="${movie.rate }">,</p>
					    		<p title="${movie.info_movie_title }" class="tit">${movie.info_movie_title }</p>
			    			</div>
			    			
					    <div class="btn-util">
							 <div class="like-btn">
								<a href="javascript:;" class="icon heart">
									<img src="resources/images/ico/before-like.png" alt="찜하기">
									<span class="likeNum">${movie.like_count }</span>
								</a>
							</div>
			                <a href="#" class="button" data-no="${movie.info_movie_code }" title="영화 예매하기">${movie.status }</a>
			           		 </div>
			  			</li>
					</c:forEach>		    
   				</ul>
   			</div>
		</div>
	</div>
<script type="text/javascript">
  $(document).ready(function () {
        $(".section-movie-list").on("mouseenter", "ul > li > span.over > a", function () {
            $(this).parent().addClass("on");
            if ($(this).hasClass("info")) {
                $(this).parent().removeClass("down");
                $(this).parent().addClass("up");
            }
            if ($(this).hasClass("rsv")) {
                $(this).parent().removeClass("up");
                $(this).parent().addClass("down");
            }
        });
        
        $(".section-movie-list").on("mouseleave", "ul>li> span.over", function () {
            $(this).closest("ul").find("span.over").removeClass("on");
        });
 });
//         $("ul>li a.rsv", "div.comming").click(function (e) {
//             e.preventDefault();
//             var movieCode = $(this).closest("li").data("moviecode");

//             $.desktop.reserve.openMovie({
//                 movieCode: movieCode
//             });
//             return false;
  
		//heart 좋아요 클릭시! 하트 뿅
			
var $likeBtn = $('.icon.heart');
$likeBtn.click(function() {

	var info_movie_code = $(this).closest("li").data("moviecode")+"";
	
	//hasclass랑 중첩
	//
	$likeBtn.toggleClass('active');
		
	if ($likeBtn.hasClass('active')) {
		// ajax -> likeInsert(@controller)
		
		$.ajax({
			url : 'likeInsert',
			type : 'GET',
			dataType : 'String',
			data : {
				info_movie_code : info_movie_code
			},
			success : function(data){
				// 두가지 실행해야함
				// member_like : insert
				// movie_like_count : update
				// 성공했을때 찜하기 완료 표시
				
			}
		}) 
		$(this).find('img').attr({
				'src' : '${pageContext.request.contextPath}/resources/images/ico/after-like.png',
				alt : '찜하기 완료'})
								
	} else {
		// 좋아요 버튼을 클릭했을때 active가 아니면~ 부분
		
		//fas 
		$(this).find('i').removeClass('fas').addClass('far')
		
		$(this).find('img').attr({
			'src' : '${pageContext.request.contextPath}/resources/images/ico/before-like.png',
			alt : "찜하기"
		})
	}
});
</script>
	<jsp:include page="../footer.jsp"/>
</body>
</html>