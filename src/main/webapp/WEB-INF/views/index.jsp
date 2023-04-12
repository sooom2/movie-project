<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <c:set var="path" value="${pageContext.request.contextPath}" /> --%>

<html>
<head>
<title>Insert title here</title>
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<link href="resources/css/common.css" rel="stylesheet">


<link href="resources/css/jquery.bxslider.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
<script type="text/javascript" src="resources/js/jquery.bxslider.min.js"></script>
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
// 				alert(movieCd);
				
			}
		});
	});
</script>


<script type="text/javascript">
	$(function() {
		//메인 슬라이 더
		if ($(".bxslider-main").length) {

			var slider_main_info = [];
			$("div.section-main-slider ul.bxslider-main li").each(function() {
				slider_main_info[slider_main_info.length] = {
					kind : $(this).data("kind"),
					title_ko : $(this).data("title_ko"),
					title_fo : $(this).data("title_fo"),
					desc : unescape($(this).data("desc"))
				};
			});

			slider_main = $('.bxslider-main').bxSlider(
					{
						auto : true,
						speed : 500,
						minSlides : 1,
						maxSlides : 1,
						slideWidth : 4096,
						slideMargin : 0,
						infiniteLoop : true,
						adaptiveHeight : true,
						adaptiveHeightSpeed : 1,
						hideControlOnEnd : false,
						preloadImages : 'visible',
						controls : false,
						onSliderLoad : function() {
							if (slider_main_info.length > 0) {
								$(".section-main-slider .kind").html(
										slider_main_info[0]["kind"]);
								$(".section-main-slider .title-ko").html(
										slider_main_info[0]["title_ko"]);
								$(".section-main-slider .title-fo").html(
										slider_main_info[0]["title_fo"]);
								$(".section-main-slider .desc").html(
										slider_main_info[0]["desc"]);
							}
						},
						onSlideBefore : function() {
							$(".section-main-slider > span:not(.left)")
									.fadeOut();
						},
						onSlideAfter : function() {
							now = slider_main.getCurrentSlide();
							$(".section-main-slider .kind").html(
									slider_main_info[now]["kind"]);
							$(".section-main-slider .title-ko").html(
									slider_main_info[now]["title_ko"]);
							$(".section-main-slider .title-fo").html(
									slider_main_info[now]["title_fo"]);
							$(".section-main-slider .desc").html(
									slider_main_info[now]["desc"]);
							$(".section-main-slider > span:not(.left)")
									.fadeIn();
						}
					});

			setTimeout(function() {
				slider_main.redrawSlider();
				$(".slider-main .bx-pager").append(
						'<span class="custom-control pause">pause</span>');
			}, 1000);
		}
		var customControlStatus;
		$(document).on("click", ".custom-control", function() {
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
		$(window)
				.on(
						"orientationchange load resize",
						function() {
							if (!$(".custom-control").length) {
								if (customControlStatus == 'play') {
									$(".slider-main .bx-pager")
											.append(
													'<span class="custom-control play">play</span>');
								} else {
									$(".slider-main .bx-pager")
											.append(
													'<span class="custom-control pause">pause</span>');
								}
							}
						});

		$(document).on("click", ".slider-main .bx-pager-link", function() {
			slider_main.stopAuto();
			$(".custom-control").removeClass("pause").addClass("play");
			$(".custom-control").html("play");
			customControlStatus = 'play';
		});
		//메인 슬라이더

		// 영화목록
		if ($(".bxslider-bo").length) {
			slider_bo = $('.bxslider-bo').bxSlider({
				auto : false,
				speed : 500,
				minSlides : 5,
				maxSlides : 5,
				slideWidth : 170,
				slideMargin : 10,
				infiniteLoop : false,
				adaptiveHeight : true,
				adaptiveHeightSpeed : 1,
				hideControlOnEnd : true,
				preloadImages : 'visible',
				controls : true
			});
			setTimeout(function() {
				slider_bo.redrawSlider();
			}, 1000);
		}
		if ($(".bxslider-lr").length) {
			slider_lr = $('.bxslider-lr').bxSlider({
				auto : false,
				speed : 500,
				minSlides : 5,
				maxSlides : 5,
				slideWidth : 170,
				slideMargin : 10,
				infiniteLoop : false,
				adaptiveHeight : true,
				adaptiveHeightSpeed : 1,
				hideControlOnEnd : true,
				preloadImages : 'visible',
				controls : true
			});
			setTimeout(function() {
				slider_lr.redrawSlider();
			}, 1000);
		}
		if ($(".bxslider-cs").length) {
			slider_cs = $('.bxslider-cs').bxSlider({
				auto : false,
				speed : 500,
				minSlides : 5,
				maxSlides : 5,
				slideWidth : 170,
				slideMargin : 10,
				infiniteLoop : false,
				adaptiveHeight : true,
				adaptiveHeightSpeed : 1,
				hideControlOnEnd : true,
				preloadImages : 'visible',
				controls : true
			});
			setTimeout(function() {
				slider_cs.redrawSlider();
			}, 1000);
		}

		if ($(".main-movie-list").length) {
			$(".wrap-slider").hide();
			$(".wrap-bo").show();
			$(".main-movie-list .selector li").each(function() {
				$(this).click(function() {
					$(this).siblings().removeClass("selected");
					$(this).addClass("selected");
					var panel = $(this).data("panel");
					$(".wrap-slider").each(function() {
						$(this).hide();
						$(".wrap-" + panel).show();
						window['slider_' + panel].redrawSlider();
					});
				});
			});
		}

		//팝업
		if ($(".pop-main").length) {
			if ($.cookie("pop-main-hidden") != 1) {
				$(".pop-main").show();
			}
			$(".pop-main .btn-close").click(function() {
				if ($("#check_close_today:checked").length == 1) {
					$.cookie("pop-main-hidden", 1, {
						expires : 1
					});
				}
				$(".pop-main").hide();

				return false;
			});
		}

		// 목록
		$(".wrap-slider").on("mouseenter", "ul > li > span.over > a",
				function() {
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
		$(".wrap-slider").on("mouseleave", "ul > li > span.over", function() {
			$(this).removeClass("on");
		});

		$("ul>li a.rsv", "div.wrap-slider").click(function(e) {
			e.preventDefault();
			var movieCode = $(this).closest("li").data("moviecode");

			$.desktop.reserve.openMovie({
				movieCode : movieCode
			});
			return false;
		});

		//heart 좋아요 클릭시! 하트 뿅
		$(function() {
			var $likeBtn = $('.icon.heart');

			$likeBtn.click(function() {
				$likeBtn.toggleClass('active');

				if ($likeBtn.hasClass('active')) {
					$(this).find('img').attr({
						'src' : 'resources/images/ico/after-like.png',
						alt : '찜하기 완료'
					});

				} else {
					$(this).find('i').removeClass('fas').addClass('far')
					$(this).find('img').attr({
						'src' : 'resources/images/ico/before-like.png',
						alt : "찜하기"
					})
				}
			})
		})
	});
</script>

</head>

<body id="top">

	<jsp:include page="nav.jsp" />

	<div id="content">
		<!-- 메인슬라이더 -->
		<div class="section group section-main-slider" id="main-slider">
			<span class="kind"></span> <span class="title-ko"></span> <span
				class="title-fo"></span> <span class="desc"></span> <span
				class="left" id="slider_left"></span>
			<div class="slider-main">
				<ul class="bxslider-main">
					<li data-kind="Movie" data-title_ko="리바운드" data-title_fo="Rebound"
						data-desc="모두가 불가능이라 말할 때, ‘리바운드’라는 또 다른 기회를 잡는다."><a href=""
						style="background: url('resources/images/main/movie/mv1.png') center center no-repeat;">
					</a></li>
					<li data-kind="개봉 예정작" data-title_ko="던전 앤 드래곤: 도적들의 명예"
						data-title_fo="Dungeons &amp; Dragons: Honor Among Thieves"
						data-desc="매력만점 롤플레잉 액션 어드벤처 무비!"><a href=""
						style="background: url('resources/images/main/movie/mv2.png') center center no-repeat;">
					</a></li>
					<li data-kind="개봉 예정작" data-title_ko="오토라는 남자"
						data-title_fo="A Man Called Otto"
						data-desc="혼자 사는 까칠한 이웃, &#39;오토&#39;가 전하는 코믹하고 감동적인 이야기"><a
						href=""
						style="background: url('resources/images/main/movie/mv3.png') center center no-repeat;">
					</a></li>
					<li data-kind="현재 상영작" data-title_ko="모나리자와 블러드 문"
						data-title_fo="MONA LISA and THE BLOOD MOON"
						data-desc="붉은 달이 뜨던 밤, 새로운 세상으로 향하는 &#39;모나&#39;의 모험"><a
						href=""
						style="background: url('resources/images/main/movie/mv4.png') center center no-repeat;">
					</a></li>
					<li data-kind="현재 상영작" data-title_ko="파벨만스"
						data-title_fo="The Fablemans" data-desc="영화의 모든 순간과 사랑에 빠지다">
						<a href=""
						style="background: url('resources/images/main/movie/mv5.png') center center no-repeat;">
					</a>
					</li>
					<li data-kind="현재 상영작" data-title_ko="소울메이트"
						data-title_fo="Soulmate"
						data-desc="3월 15일, 당신의 &#39;소울메이트&#39;가 찾아옵니다."><a href=""
						style="background: url('resources/images/main/movie/mv6.png') center center no-repeat;"></a>
					</li>
					<li data-kind="현재 상영작" data-title_ko="스즈메의 문단속"
						data-title_fo="Suzume" data-desc="2023년, ‘문단속을 위한 여행’이 시작된다!">
						<a href=""
						style="background: url('resources/images/main/movie/mv7.png') center center no-repeat;"></a>
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
				<c:forEach var="movie" items="${movie }">
				<div class="wrap-slider wrap-bo">
					<ul class="bxslider-bo">
						<c:forEach var="movie" items="${movie }">
						    <li data-moviecode="${movie.get('info_movie_code') }">
						    <span class="over over-a"><a href="#" class="rsv">예매하기</a>
						    <a href="/Movie/Info?MovieCode=${movie.get('info_movie_code') }" class="info">상세정보</a></span>
						    <img src="https://file.cineq.co.kr/i.aspx?movieid=${movie.get('info_movie_code') }&amp;size=210" class="posterlist">
						    <div class="movie-desc">
						    <span class="label"> </span> ${movie.get('info_movie_title') }
						    <div class="btn-util">
						    	<button type="button" class="button btn-like" data-no="01309400"><i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> <span>1.9k</span></button>
				                <a href="#" class="button purple bokdBtn" data-no="01309400" title="영화 예매하기">예매</a>  </div>
						    	</div>
						    </li>
						</c:forEach>	

<!-- 						<li data-moviecode=""><span class="over over-a"> <a -->
<!-- 								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a> -->
<!-- 								<a href="" class="info"><span class="over-btn-info">상세정보</span></a> -->
<!-- 						</span> <a href=""> <img src="resources/images/movies/poster/m1.jpg" /> -->
<!-- 								<div class="movie-desc">스즈메의 문단속</div> -->
<!-- 						</a> -->
<!-- 							<div class="grade" style="text-align: center"> -->
<!-- 								<span>예매율 : </span> <strong>55.0%</strong> -->
<!-- 							</div> -->

<!-- 							<div class="like-btn"> -->
<!-- 								<a href="javascript:;" class="icon heart"> <img -->
<!-- 									src="resources/images/ico/before-like.png" alt="찜하기"> <span -->
<!-- 									class="likeNum">70.M</span> -->
<!-- 								</a> -->
<!-- 							</div></li> -->
<!-- 						<li data-moviecode=""><span class="over over-a"> <a -->
<!-- 								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a> -->
<!-- 								<a href="" class="info"><span class="over-btn-info">상세정보</span></a> -->
<!-- 						</span> <a href=""> <img src="resources/images/movies/poster/m2.jpg" /> -->
<!-- 								<div class="movie-desc"> -->
<!-- 									</span>스즈메의 문단속 -->
<!-- 								</div> -->
<!-- 						</a> -->

<!-- 							<div class="grade" style="text-align: center"> -->
<!-- 								<span>예매율 : </span> <strong>55.0%</strong> -->
<!-- 							</div> -->
<!-- 							<div class="like-btn"> -->
<!-- 								<a href="javascript:;" class="icon heart"> <img -->
<!-- 									src="resources/images/ico/before-like.png" alt="찜하기"> <span -->
<!-- 									class="likeNum">70.M</span> -->
<!-- 								</a> -->
<!-- 							</div></li> -->
<!-- 						<li data-moviecode=""><span class="over over-a"> <a -->
<!-- 								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a> -->
<!-- 								<a href="" class="info"><span class="over-btn-info">상세정보</span></a> -->
<!-- 						</span> <a href=""> <img src="resources/images/movies/poster/m3.jpg" /> -->
<!-- 								<div class="movie-desc">스즈메의 문단속</div> -->
<!-- 						</a> -->
<!-- 							<div class="grade" style="text-align: center"> -->
<!-- 								<span>예매율 : </span> <strong>55.0%</strong> -->
<!-- 							</div> -->
<!-- 							<div class="like-btn"> -->
<!-- 								<a href="javascript:;" class="icon heart"> <img -->
<!-- 									src="resources/images/ico/before-like.png" alt="찜하기"><span -->
<!-- 									class="likeNum">608</span> -->
<!-- 								</a> -->
<!-- 							</div></li> -->
<!-- 						<li data-moviecode=""><span class="over over-a"> <a -->
<!-- 								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a> -->
<!-- 								<a href="" class="info"><span class="over-btn-info">상세정보</span></a> -->
<!-- 						</span> <a href=""> <img src="resources/images/movies/poster/m1.jpg" /> -->
<!-- 								<div class="movie-desc">스즈메의 문단속</div> -->
<!-- 						</a> -->
<!-- 							<div class="grade" style="text-align: center"> -->
<!-- 								<span>예매율 : </span> <strong>55.0%</strong> -->
<!-- 							</div> -->
<!-- 							<div class="like-btn"> -->
<!-- 								<a href="javascript:;" class="icon heart"> <img -->
<!-- 									src="resources/images/ico/before-like.png" alt="찜하기"><span -->
<!-- 									class="likeNum">50K</span> -->
<!-- 								</a> -->
<!-- 							</div></li> -->
<!-- 						<li data-moviecode=""><span class="over over-a"> <a -->
<!-- 								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a> -->
<!-- 								<a href="" class="info"><span class="over-btn-info">상세정보</span></a> -->
<!-- 						</span> <a href=""> <img src="resources/images/movies/poster/m1.jpg" /> -->
<!-- 								<div class="movie-desc">스즈메의 문단속</div> -->
<!-- 						</a> -->
<!-- 							<div class="grade" style="text-align: center"> -->
<!-- 								<span>예매율 : </span> <strong>55.0%</strong> -->
<!-- 							</div> -->
<!-- 							<div class="like-btn"> -->
<!-- 								<a href="javascript:;" class="icon heart"> <img -->
<!-- 									src="resources/images/ico/before-like.png" alt="찜하기"><span -->
<!-- 									class="likeNum">60K</span> -->
<!-- 								</a> -->
<!-- 							</div></li> -->
<!-- 						<li data-moviecode=""><span class="over over-a"> <a -->
<!-- 								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a> -->
<!-- 								<a href="" class="info"><span class="over-btn-info">상세정보</span></a> -->
<!-- 						</span> <a href=""> <img src="resources/images/movies/poster/m1.jpg" /> -->
<!-- 								<div class="movie-desc">스즈메의 문단속</div> -->
<!-- 						</a> -->
<!-- 							<div class="grade" style="text-align: center"> -->
<!-- 								<span>예매율 : </span> <strong>55.0%</strong> -->
<!-- 							</div> -->
<!-- 							<div class="like-btn"> -->
<!-- 								<a href="javascript:;" class="icon heart"> <img -->
<!-- 									src="resources/images/ico/before-like.png" alt="찜하기"><span -->
<!-- 									class="likeNum">46K</span> -->
<!-- 								</a> -->
<!-- 							</div></li> -->
<!-- 						<li data-moviecode=""><span class="over over-a"> <a -->
<!-- 								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a> -->
<!-- 								<a href="" class="info"><span class="over-btn-info">상세정보</span></a> -->
<!-- 						</span> <a href=""> <img src="resources/images/movies/poster/m1.jpg" /> -->
<!-- 								<div class="movie-desc">스즈메의 문단속</div> -->
<!-- 						</a> -->
<!-- 							<div class="grade" style="text-align: center"> -->
<!-- 								<span>예매율 : </span> <strong>55.0%</strong> -->
<!-- 							</div> -->
<!-- 							<div class="like-btn"> -->
<!-- 								<a href="javascript:;" class="icon heart"> <img -->
<!-- 									src="resources/images/ico/before-like.png" alt="찜하기"><span -->
<!-- 									class="likeNum">21</span> -->
<!-- 								</a> -->
<!-- 							</div></li> -->
					</ul>
				</div>
				</c:forEach>

				<!--  최신개봉작 -->
				<div class="wrap-slider wrap-lr">
					<ul class="bxslider-lr">
						<!--  영화 하나 -->
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m2.jpg" />
								<div class="movie-desc">
									<!-- 								<span class="rate-15">15세이상</span> -->
									소울메이트
								</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<!--  영화 하나 -->
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m2.jpg" />
								<div class="movie-desc">소울메이트</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m2.jpg" />
								<div class="movie-desc">소울메이트</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m2.jpg" />
								<div class="movie-desc">소울메이트</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m2.jpg" />
								<div class="movie-desc">
									</span>소울메이트
								</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m2.jpg" />
								<div class="movie-desc">
									</span>소울메이트
								</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m2.jpg" />
								<div class="movie-desc">
									</span>소울메이트
								</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>


					</ul>
				</div>

				<!--  상영예정작 -->
				<div class="wrap-slider wrap-cs">
					<ul class="bxslider-cs">
						<!--  영화 하나 -->
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m3.jpg" />
								<div class="movie-desc">
									</span>리바운드
								</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<!--  영화 하나 -->
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m3.jpg" />
								<div class="movie-desc">리바운드</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m3.jpg" />
								<div class="movie-desc">리바운드</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m3.jpg" />
								<div class="movie-desc">리바운드</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m3.jpg" />
								<div class="movie-desc">리바운드</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m3.jpg" />
								<div class="movie-desc">리바운드</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
						<li data-moviecode=""><span class="over over-a"> <a
								href="#" class="rsv"><span class="over-btn-rsv">예매하기</span></a>
								<a href="" class="info"><span class="over-btn-info">상세정보</span></a>
						</span> <a href=""> <img src="resources/images/movies/poster/m3.jpg" />
								<div class="movie-desc">리바운드</div>
						</a> <!--  좋아요 -->
							<div class="like-btn">
								<a href="javascript:;" class="icon heart"> <img
									src="resources/images/ico/before-like.png" alt="찜하기"><span
									class="likeNum">21</span>
								</a>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="section group main-board">

			<ul class="giftcon_list_wrap">

				<li class="pakage">
					<dl class="giftcon_list">
					<dt>
							스토어상품<a href="store_main" alt="" class="btn_more pak">더보기</a>
					</dt>
				<c:forEach var="gift" items="${gift }"> 
						
			
						<dd>
							<a href="store_detail?item_code=${gift.item_code }">
								<div class="img_wrap" data-scale="false">
									<img src="${gift.item_image }" alt="상품이미지">
								</div>
								<div class="giftcon_info_wrap">
									<span>${gift.item_name }</span> <strong>${gift.item_price }원</strong>
								</div>
							</a>
						</dd>

				</c:forEach>
					</dl>
				</li>
				<li class="bestReview">
					<dl class="giftcon_list">
						<dt>
							베스트리뷰<a href="" alt="베스트리뷰" class="btn_more">더보기</a>
						</dt>

						<dd>
							<ul class="review_con_list" id="review_con_list2">
								<li><span class="img_info"><img
										src="resources/images/main/ic_survey_01.png" alt=""></span>
									<div class="top_info">
										<span class="name">조*준</span><span class="txt_ic_score"><span
											class="stargradebg"><span class="blindbg grade8"><span
													class="stargradecolor "></span></span></span><span class="gradenum">8</span></span><span
											class="date_info">2023.04.04</span>
									</div>
									<div class="review_info">음악이 압도적. 나오면서 귓가에서 계속 재생됨</div>
									</li>
								<li><span class="img_info"><img
										src="resources/images/main//ic_survey_02.png" alt=""></span>
									<div class="top_info">
										<span class="name">조*영</span><span class="txt_ic_score"><span
											class="stargradebg"><span class="blindbg grade7"><span
													class="stargradecolor "></span></span></span><span class="gradenum">7</span></span><span
											class="date_info">2023.04.04</span>
									</div>
									<div class="review_info">개연성이 좀 부족하고 스토리는 호불호 갈릴 것 같은데,
										일본인들의 지진에 대한 정서를 드러내는 표현방법이 신선했습니다. OST가 좋아요.</div>
									</li>
								<li><span class="img_info"><img
										src="resources/images/main/ic_survey_05.png" alt=""></span>
									<div class="top_info">
										<span class="name">이*이</span><span class="txt_ic_score"><span
											class="stargradebg"><span class="blindbg grade5"><span
													class="stargradecolor "></span></span></span><span class="gradenum">5</span></span><span
											class="date_info">2023.04.04</span>
									</div>
									<div class="review_info">그냥 노잼 보는 내내 시간이 아까웠음 호불호 많이 갈리는데
										스토리는 불호가 더 많은듯</div>
									</li>
							</ul>
						</dd>

						<dd></dd>

						<dd></dd>

					</dl>
				</li>
			</ul>
			<div class="noticeClient_wrap">
				<div class="contents">
					<div class="noticeClient_container">
						<div class="noticeClient_content">
							<div id="ctl00_PlaceHolderContent_notice_wrap"
								class="notice_wrap">
								<strong>공지사항</strong> <a href="" class="btn_link">[00][000]
									휴점일 공지 (4월 3일)</a>
								<a href="cc_home" id="notice_more" class="btn_more">더보기</a>
							</div>
							<div class="client_wrap">
								<dl class="client_list">
									<dt>
										<strong>고객센터</strong>
									</dt>
									<dd>
										<strong>1544-1122</strong> <span>고객센터 운영시간 (평일
											09:00~18:00)
											<p>업무시간 외 자동응답 안내 가능합니다.</p>
										</span>
									</dd>
								</dl>
								<div class="client_btn_wrap" id="client_btn_wrap">
									<a href="faq">FAQ</a> 
									<a href="oneOnOne">1:1 문의</a> 
									<a href="lost_board">분실물 문의</a>
								</div>
							</div>
						</div>
						<div class="qr_wrap">
							<strong>앱 다운로드</strong> <span>CGV앱에서 더 편리하게 이용하세요</span>
							<div class="img_wrap" data-scale="false">
								<img src="resources/images/main/img_qrcode.png" alt="QR CODE">
							</div>
							<p>
								QR코드를 스캔하고<br>앱설치 페이지로 바로 이동하세요
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--  content -->

		<jsp:include page="footer.jsp" />
</body>
</html>






