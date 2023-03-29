<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<link href="./css/movie.css" rel="stylesheet">
<link href="./css/jquery.bxslider.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/main.js"></script>
<script type="text/javascript" src="./js/jquery.bxslider.min.js"></script>
<script type="text/javascript">



$(function(){
	//메인 슬라이더
    if($(".bxslider-main").length){
	
        var slider_main_info = [];
        $("div.section-main-slider ul.bxslider-main li").each(function(){
            slider_main_info[slider_main_info.length] = {
                kind: $(this).data("kind"), 
                title_ko: $(this).data("title_ko"), 
                title_fo: $(this).data("title_fo"), 
                desc: unescape($(this).data("desc"))
            };
        });

        slider_main = $('.bxslider-main').bxSlider({
            auto: true,
            speed: 500,
            minSlides: 1,
            maxSlides: 1,
            slideWidth: 4096,
            slideMargin: 0,
            infiniteLoop: true,
            adaptiveHeight: true,
            adaptiveHeightSpeed: 1,
            hideControlOnEnd: false,
            preloadImages: 'visible',
            controls: false,
            onSliderLoad: function(){
                if ( slider_main_info.length > 0 ) {
                    $(".section-main-slider .kind").html(slider_main_info[0]["kind"]);
                    $(".section-main-slider .title-ko").html(slider_main_info[0]["title_ko"]);
                    $(".section-main-slider .title-fo").html(slider_main_info[0]["title_fo"]);
                    $(".section-main-slider .desc").html(slider_main_info[0]["desc"]);
                }
            },
            onSlideBefore: function(){
                $(".section-main-slider > span:not(.left)").fadeOut();
            },
            onSlideAfter: function(){
                now = slider_main.getCurrentSlide();
                $(".section-main-slider .kind").html(slider_main_info[now]["kind"]);
                $(".section-main-slider .title-ko").html(slider_main_info[now]["title_ko"]);
                $(".section-main-slider .title-fo").html(slider_main_info[now]["title_fo"]);
                $(".section-main-slider .desc").html(slider_main_info[now]["desc"]);
                $(".section-main-slider > span:not(.left)").fadeIn();
            }
        });

        setTimeout(function(){
            slider_main.redrawSlider();
            $(".slider-main .bx-pager").append('<span class="custom-control pause">pause</span>');
        },1000);
    }
    var customControlStatus;
    $(document).on("click", ".custom-control", function () {
        if ($(".custom-control").hasClass("pause")) {
            slider_main.stopAuto();
            $(".custom-control").removeClass("pause").addClass("play");
            $(".custom-control").html("play");
            customControlStatus = 'play';
        } else {
            slider_main.startAuto();
            $(".custom-control").removeClass("play").addClass("pause");
            $(".custom-control").html("pause");
            customControlStatus = 'pause';
        }
    });
    $(window).on("orientationchange load resize", function () {
        if (!$(".custom-control").length) {
            if (customControlStatus == 'play') {
                $(".slider-main .bx-pager").append('<span class="custom-control play">play</span>');
            } else {
                $(".slider-main .bx-pager").append('<span class="custom-control pause">pause</span>');
            }
        }
    });

    
    $(document).on("click", ".slider-main .bx-pager-link", function(){
        slider_main.stopAuto();
        $(".custom-control").removeClass("pause").addClass("play");
        $(".custom-control").html("play");
        customControlStatus = 'play';
    });
    //메인 슬라이더
    
	// 영화목록
    if ($(".bxslider-bo").length) {
        slider_bo = $('.bxslider-bo').bxSlider({
            auto: false,
            speed: 500,
            minSlides: 5,
            maxSlides: 5,
            slideWidth: 170,
            slideMargin: 10,
            infiniteLoop: false,
            adaptiveHeight: true,
            adaptiveHeightSpeed: 1,
            hideControlOnEnd: true,
            preloadImages: 'visible',
            controls: true
        });
        setTimeout(function () {
            slider_bo.redrawSlider();
        }, 1000);
    }
    if ($(".bxslider-lr").length) {
        slider_lr = $('.bxslider-lr').bxSlider({
            auto: false,
            speed: 500,
            minSlides: 5,
            maxSlides: 5,
            slideWidth: 170,
            slideMargin: 10,
            infiniteLoop: false,
            adaptiveHeight: true,
            adaptiveHeightSpeed: 1,
            hideControlOnEnd: true,
            preloadImages: 'visible',
            controls: true
        });
        setTimeout(function () {
            slider_lr.redrawSlider();
        }, 1000);
    }
    if ($(".bxslider-cs").length) {
        slider_cs = $('.bxslider-cs').bxSlider({
            auto: false,
            speed: 500,
            minSlides: 5,
            maxSlides: 5,
            slideWidth: 170,
            slideMargin: 10,
            infiniteLoop: false,
            adaptiveHeight: true,
            adaptiveHeightSpeed: 1,
            hideControlOnEnd: true,
            preloadImages: 'visible',
            controls: true
        });
        setTimeout(function () {
            slider_cs.redrawSlider();
        }, 1000);
    }

    if ($(".main-movie-list").length) {
        $(".wrap-slider").hide();
        $(".wrap-bo").show();
        $(".main-movie-list .selector li").each(function () {
            $(this).click(function () {
                $(this).siblings().removeClass("selected");
                $(this).addClass("selected");
                var panel = $(this).data("panel");
                $(".wrap-slider").each(function () {
                    $(this).hide();
                    $(".wrap-" + panel).show();
                    window['slider_' + panel].redrawSlider();
                });
            });
        });
    }
	
    //팝업
    if($(".pop-main").length){
        if($.cookie("pop-main-hidden") != 1){
            $(".pop-main").show();
        }
        $(".pop-main .btn-close").click(function(){
            if($("#check_close_today:checked").length == 1){
                $.cookie("pop-main-hidden", 1, { expires: 1 });
            }
            $(".pop-main").hide();

            return false;
        });
    }

	// 목록
    $(".wrap-slider").on("mouseenter", "ul > li > span.over > a", function(){
        $(this).parent().addClass("on");

        if($(this).hasClass("info")){
            $(this).parent().removeClass("down");
            $(this).parent().addClass("up");
        }
        if($(this).hasClass("rsv")){
            $(this).parent().removeClass("up");
            $(this).parent().addClass("down");
        }
    });
    $(".wrap-slider").on("mouseleave", "ul > li > span.over", function(){
        $(this).removeClass("on");
    });

    $("ul>li a.rsv", "div.wrap-slider").click(function (e) {
        e.preventDefault();
        var movieCode = $(this).closest("li").data("moviecode");

        $.desktop.reserve.openMovie({
            movieCode: movieCode
        });
        return false;
    });
    //팝업창
    
    
    
});


</script>


</head>

<body id="top">

	<jsp:include page="nav.jsp"/>
	

	<div id="container">
		<div id="content">
			<!-- 메인슬라이더 -->
			<div class="section group section-main-slider" id="main-slider">
				<span class="kind"></span> 
				<span class="title-ko"></span> 
				<span class="title-fo"></span> 
				<span class="desc"></span>
				<span class="left" id="slider_left"></span>
				<div class="slider-main">
					<ul class="bxslider-main">
						<li data-kind="Movie"
						    data-title_ko="리바운드"
							data-title_fo="Rebound"
							data-desc="모두가 불가능이라 말할 때, ‘리바운드’라는 또 다른 기회를 잡는다.">
							<a href="https://www.cineq.co.kr/Movie/Info?MovieCode=20226489" style="background: url('https://file.cineq.co.kr/j.aspx?guid=fbcdfd86a58e4547a699262165460c5b') center center no-repeat;">
							</a>
						</li>
						<li data-kind="개봉 예정작"
							data-title_ko="던전 앤 드래곤: 도적들의 명예"
							data-title_fo="Dungeons &amp; Dragons: Honor Among Thieves"
							data-desc="매력만점 롤플레잉 액션 어드벤처 무비!">
							<a href="https://www.cineq.co.kr/Movie/Info?MovieCode=20226410" style="background: url('https://file.cineq.co.kr/j.aspx?guid=5ea8a5b9c747454198075f4741ab9e0a') center center no-repeat;">
							</a>
						</li>
						<li data-kind="개봉 예정작"
							data-title_ko="오토라는 남자"
							data-title_fo="A Man Called Otto"
							data-desc="혼자 사는 까칠한 이웃, &#39;오토&#39;가 전하는 코믹하고 감동적인 이야기">
							<a href="https://www.cineq.co.kr/Movie/Info?MovieCode=20230641" style="background: url('https://file.cineq.co.kr/j.aspx?guid=c6a450ddae4e44a586bcc6dad7eeada8') center center no-repeat;">
							</a>
						</li>
						<li data-kind="현재 상영작"
							data-title_ko="모나리자와 블러드 문"
							data-title_fo="MONA LISA and THE BLOOD MOON"
							data-desc="붉은 달이 뜨던 밤, 새로운 세상으로 향하는 &#39;모나&#39;의 모험">
							<a href="https://www.cineq.co.kr/Movie/Info?MovieCode=20224780" style="background: url('https://file.cineq.co.kr/j.aspx?guid=4999398e2ada45eebc67c666e1e429f7') center center no-repeat;">
							</a>
						</li>
						<li data-kind="현재 상영작"
							data-title_ko="파벨만스"
							data-title_fo="The Fablemans"
							data-desc="영화의 모든 순간과 사랑에 빠지다">
							<a href="https://www.cineq.co.kr/Movie/Info?MovieCode=20230767" style="background: url('https://file.cineq.co.kr/j.aspx?guid=3f23a8182f804183ae02d89cddc4c392') center center no-repeat;">
							</a>
						</li>
						<li data-kind="현재 상영작"
							data-title_ko="소울메이트"
							data-title_fo="Soulmate"
							data-desc="3월 15일, 당신의 &#39;소울메이트&#39;가 찾아옵니다.">
							<a href="https://www.cineq.co.kr/Movie/Info?MovieCode=20197654"
							style="background: url('https://file.cineq.co.kr/j.aspx?guid=299bb77c1bdf4edea51750d9541e807b') center center no-repeat;"></a>
						</li>
						<li data-kind="현재 상영작"
							data-title_ko="스즈메의 문단속"
							data-title_fo="Suzume" data-desc="2023년, ‘문단속을 위한 여행’이 시작된다!">
							<a href="https://www.cineq.co.kr/Movie/Info?MovieCode=20226270"
							style="background: url('https://file.cineq.co.kr/j.aspx?guid=c5bc2fedee7649d6b1a9638a3c9c1615') center center no-repeat;"></a>
						</li>
					</ul>
				</div>
			</div>
			
			<!-- 팝업 -->
<!-- 			<div class="pop-main" style=""> -->
<!--           		<img src="https://file.cineq.co.kr/j.aspx?guid=9f63e6042ff74645bdec9faf16b9ebe0"> -->
<!-- 	            <div class="bottom"> -->
<!-- 	                <input type="checkbox" id="check_close_today" class="close-today"><label for="check_close_today">오늘 그만보기</label> -->
<!-- 	                <a href="" class="btn-detail">자세히보기</a> -->
<!-- 	                <a href="" class="btn-close">닫기</a> -->
<!-- 	            </div> -->
<!--        		</div> -->
			<!-- 팝업 -->
			<div class="section group section-main-movie-list">
				<div class="title">MOVIE</div>
		    	<div class="main-movie-list">
			        <ul class="selector">
			            <li class="selected" data-panel="bo">박스오피스</li>
			            <li class="" data-panel="lr">최신개봉작</li>
			            <li class="" data-panel="cs">상영예정작</li>
			        </ul>
			        
			
					<!--  박스오피스 -->
			        <div class="wrap-slider wrap-bo">
			            <ul class="bxslider-bo">
			                <li data-moviecode="">
				                <span class="over over-a">
					                <a href="#" class="rsv"><span class="over-btn">예매하기</span></a>
					                <a href="" class="info"><span class="over-btn">상세정보</span></a>
				                </span>
				                <a href="">
				                <img src="images/movies/poster/m1.jpg" />
				                <div class="movie-desc">
				               		 <span class="rate-12">12세이상</span>스즈메의 문단속
				                </div>
				                
				                </a>
			                </li>
			                <li data-moviecode=""><span class="over over-a"><a href="#" class="rsv"><span class="over-btn">예매하기</span></a><a href="" class="info"><span class="over-btn">상세정보</span></a></span><a href=""><img src="images/movies/poster/m1.jpg" /><div class="movie-desc"><span class="rate-12">12세이상</span>스즈메의 문단속</div></a></li>
			                <li data-moviecode=""><span class="over over-a"><a href="#" class="rsv"><span class="over-btn">예매하기</span></a><a href="" class="info"><span class="over-btn">상세정보</span></a></span><a href=""><img src="images/movies/poster/m1.jpg" /><div class="movie-desc"><span class="rate-12">12세이상</span>스즈메의 문단속</div></a></li>
			                <li data-moviecode=""><span class="over over-a"><a href="#" class="rsv"><span class="over-btn">예매하기</span></a><a href="" class="info"><span class="over-btn">상세정보</span></a></span><a href=""><img src="images/movies/poster/m1.jpg" /><div class="movie-desc"><span class="rate-12">12세이상</span>스즈메의 문단속</div></a></li>
			                <li data-moviecode=""><span class="over over-a"><a href="#" class="rsv"><span class="over-btn">예매하기</span></a><a href="" class="info"><span class="over-btn">상세정보</span></a></span><a href=""><img src="images/movies/poster/m1.jpg" /><div class="movie-desc"><span class="rate-12">12세이상</span>스즈메의 문단속</div></a></li>
			                <li data-moviecode=""><span class="over over-a"><a href="#" class="rsv"><span class="over-btn">예매하기</span></a><a href="" class="info"><span class="over-btn">상세정보</span></a></span><a href=""><img src="images/movies/poster/m1.jpg" /><div class="movie-desc"><span class="rate-12">12세이상</span>스즈메의 문단속</div></a></li>
			            </ul>
			        </div>
			        
			        
					<!--  최신개봉작 -->
			        <div class="wrap-slider wrap-lr">
			            <ul class="bxslider-lr">
			            </ul>
			        </div>
			        
					<!--  상영예정작 -->
			        <div class="wrap-slider wrap-cs">
			            <ul class="bxslider-cs">
			            </ul>
			        </div>
		   		</div>
			</div>


		

			<!--  공지사항 -->
			<div class="section group section-main-notice">
				<div class="title">공지사항</div>
				<div class="wrap-notice">
					<ul class="notice-list">
						<li>
							<a href="">
								<span class="branch">전체글</span> | ~~~~~제목1~~~~~~~~
								<span class="date">23.03.15</span>
							</a>
						</li>
						<li>
							<a href="">
								<span class="branch">[00점]</span> | ~~~~~제목2~~~~~~~~
								<span class="date">23.02.14</span>
							</a>
						</li>
						<li>
							<a href="">
								<span class="branch">[00점]</span> | ~~~~~제목3~~~~~~~~
								<span class="date">23.02.14</span>
							</a>
						</li>
						<li>
							<a href="">
								<span class="branch">[00점]</span> | ~~~~~제목4~~~~~~~~
								<span class="date">23.02.14</span>
							</a>
						</li>
						<li>
							<a href="">
								<span class="branch">[00점]</span> | ~~~~~제목5~~~~~~~~
								<span class="date">23.02.14</span>
							</a>
						</li>
					</ul>
				</div>
				
				<div class="notice-more" onclick="location.href='/Customer/NoticeList'">+더보기</div>
				
			</div>
			
			
			
			<!-- 푸터 -->
			<footer id="footer">
				<div class="section group footer-service">
					<a href="" class="logo-footer">CINE Q</a>
					<ul>
						<li><a href="">회사소개</a></li>
						<li><a href="">IR</a></li>
						<li><a href="" class="loginpop">제휴/광고/부대사업 문의</a></li>
						<li><a href="" class="read1">이용약관</a></li>
						<li><a href="" class="read2" style="color: #E60012">개인정보처리방침</a></li>
						<li><a href="">고객센터</a></li>
						<li><a href="" class="read3">배정/편성기준</a></li>
						<li><a href="">사이트맵</a></li>
					</ul>
				</div>
				<div class="section group footer-contact">
					<ul>
						<li>사업자명: 0000</li>
						<li>사업자등록번호 00000</li>
						<li>통신판매업신고번호000007</li>
						<li>대표이사 00000</li>
					</ul>
					<span class="addr">00000000000 | 개인정보책임자 00000 | 고객센터 000000</span>
				</div>
				<div class="section group footer-copyright">
					<span>Copyright &copy;000000000000</span>
				</div>
			</footer>
		</div><!--  content -->
	</div><!-- container -->
	
	

</body>
</html>






