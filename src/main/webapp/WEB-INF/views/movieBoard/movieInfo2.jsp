<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path }/css/common.css" rel="stylesheet">
<link href="${path }/css/movieInfo.css" rel="stylesheet">
<link href="${path }/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/main.js"></script>
</head>
<body id="top">
  
<jsp:include page="../nav.jsp" />   
<!-- <script type="text/javascript"> -->
<!--      showTheater(0); -->
<!-- </script> -->

 <div id="container">
	<div id="content">

		<div class="wrap-movie-title">
			<h2 class="movie-title">상세보기</h2>
		</div>

		<div class="section group section-movie-info">

			<div class="wrap">
				<h3>
					<span class="rate-12">12</span>스즈메의 문단속 (Suzume)
				</h3>

				<img
					src="https://file.cineq.co.kr/i.aspx?movieid=20226270&amp;size=210"
					alt="포스터" class="poster posterlist" />
				<ul class="basic">
					<li><span>기 &nbsp; &nbsp; &nbsp;본 : </span> 일본 | 121 분 | 애니메이션</li>
					<li><span>개 봉 일 : </span> 23.03.08</li>
					<li><span>감 &nbsp; &nbsp; &nbsp;독 : </span> 신카이 마코토</li>
					<li><span>배 &nbsp; &nbsp; &nbsp;우 : </span> <a
						href="http://movie.naver.com/movie/bi/pi/basic.naver?code=363249">하라
							나노카</a>(이와토 스즈메 목소리), <a
						href="http://movie.naver.com/movie/bi/pi/basic.naver?code=305540">마츠무라
							호쿠토</a>(무나카타 소타 목소리), <a
						href="http://movie.naver.com/movie/bi/pi/basic.naver?code=408">후카츠
							에리</a>(이와토 타마키 목소리)</li>
					<li><span>등 &nbsp; &nbsp; &nbsp;급 : </span> 12세이상관람가</li>
				</ul>
				<a href="#" class="btn-rsv">예매하기</a>

				<h4 class="synopsis-title">줄거리</h4>

				<div class="synopsis">
					“이 근처에 폐허 없니? 문을 찾고 있어”<br>&nbsp;규슈의 한적한 마을에 살고 있는 소녀 ‘스즈메’는<br>&nbsp;문을
					찾아 여행 중인 청년 ‘소타’를 만난다.<br>&nbsp;<br>&nbsp;그의 뒤를 쫓아 산속
					폐허에서 발견한 낡은 문.<br>&nbsp;‘스즈메’가 무언가에 이끌리듯 문을 열자 마을에 재난의 위기가
					닥쳐오고<br>&nbsp;가문 대대로 문 너머의 재난을 봉인하는 ‘소타’를 도와 간신히 문을 닫는다.<br>&nbsp;<br>&nbsp;“닫아야만
					하잖아요, 여기를!”<br>&nbsp;재난을 막았다는 안도감도 잠시,<br>&nbsp;수수께끼의 고양이
					‘다이진’이 나타나 ‘소타’를 의자로 바꿔 버리고<br>&nbsp;일본 각지의 폐허에 재난을 부르는 문이 열리기
					시작하자<br>&nbsp;‘스즈메’는 의자가 된 ‘소타’와 함께 재난을 막기 위한 여정에 나선다.<br>&nbsp;<br>&nbsp;“꿈이
					아니었어”<br>&nbsp;규슈, 시코쿠, 고베, 도쿄<br>&nbsp;재난을 막기 위해 일본 전역을
					돌며 필사적으로 문을 닫아가던 중<br>&nbsp;어릴 적 고향에 닿은 ‘스즈메’는 잊고 있던 진실과 마주하게
					되는데…
				</div>
			</div>
			<!--.wrap-->
		</div>
	</div>
</div>
<script type="text/javascript">
    $(function () {
        $("a.btn-rsv", "div.section-movie-info").click(function (e) {
            e.preventDefault();
            $.desktop.reserve.open({
                playDate: '20230404',
                movieCode: '20226270'
            });
            return false;
        });
    })
</script>
</body>
</html>