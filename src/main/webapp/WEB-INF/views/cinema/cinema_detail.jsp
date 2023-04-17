<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path }/resources/css/cinema.css" rel="stylesheet">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=UA-125235578-1"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/js/main.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<c:forEach var="cinema" items="${cinemaDetail }">
		<div id="container">
			<div id="content">
				<div class="section group section-theater-head"
					style="background: url('${path}/resources/images/cinema/${cinema.get('cinema_photo')}') center center no-repeat;">
					<div class="wrap">
						<span class="name-2"><span
							style="background: rgba(0, 0, 0, 0.4); padding-right: 5px; padding-left: 5px;"><span>${cinema.get('cinema_name') }</span></span></span>
						<span class="name-3"><span
							style="background: rgba(0, 0, 0, 0.4); padding: 5px; padding-right: 5px;"><span>${cinema.get('cinema_address') }</span></span></span>
					</div>
				</div>


				<div class="section group section-theater-body">
					<div class="wrap">
						<ul class="selector">
							<li class=""
								onclick="location.href='cinemaDetail?cinema_code=${cinema.get('cinema_code')}'">상영시간표</li>
							<li class=""
								onclick="location.href='cinemaLocation?cinema_code=${cinema.get('cinema_code')}'">약도/교통</li>
							<li class=""
								onclick="location.href ='cinemaEvent?cinema_code=${cinema.get('cinema_code')}'">이벤트</li>
							<li class=""
								onclick="location.href ='cinemaPrice?cinema_code=${cinema.get('cinema_code')}'">관람료</li>
						</ul>




						<!-- 날짜 -->

						<div class="cal">
							<span class="big-m"></span> 
							<span class="small-yyyym"></span>
							<ul>
								<li class="prev-btn"><a href="#" class="prev">이전</a></li>
								
<!-- <!-- 								오늘 --> 
<!-- 								<li class="datelist" data-date="" data-month="" data-year="" data-montheng="" style="display:"> -->
<!-- 									<a href="#" class="today"><span class="day"></span></a> -->
<!-- 								</li> -->
<!-- 								<li class="datelist" data-date="" data-month="" data-year="" data-montheng="" style="display:"> -->
<!-- 									<a href="#" class=""><span class="day"></span></a> -->
<!-- 								</li> -->

									
								
								
								
								<li class="next-btn"><a href="#" class="next">이전</a></li>
							</ul>
						</div>
						
						
						
						
						<script type="text/javascript">
// 							// 현재 날짜 가져오기
// 							$(function () {
// 								let cinemaDetail = JSON.parse('${cinemaDetailJson}');
// 								const currentDate = new Date();
// 								const currentMonth = currentDate.getMonth(); // 현재 월의 숫자(0~11)를 가져옴
// 								const monthNames = ["January", "February", "March", "April", "May", "June",
// 					                  "July", "August", "September", "October", "November", "December"];
// 								const currentYear = currentDate.getFullYear();
// 								const currentDay = currentDate.getDate();
								
// 								let index = 0;
// 								let viewCount = 7;
// 						        let selectedDate = $("ul>li.datelist>a.selected", "div.section div.cal").closest("li").data("date");
// 						        let selectedListType = "movie";
// 						        let cinemaCode = cinemaDetail.cinema_code;
								
// 								//달 표시
// 								$('.cal .big-m').text(monthNames[currentMonth]);
// 								//년 달 표시
// 								$('.cal .small-yyyym').text(currentYear + " " + monthNames[currentMonth]);
								
// 								$('.datelist .today span').text("오늘");
// 								$('.datelist .today span').after(currentDay);
								
								
								
								
// 						        function dateView() {
// 						            var start = (index * viewCount);
// 						            var end = start + viewCount;
// 						            $("ul>li.datelist", "div.section div.cal").hide();
						            
// 						            for (var i = start; i < end; i++) {
// 						                $("ul>li.datelist:eq(" + i + ")", "div.section div.cal").show();
// 						            }
		
// 						            $('.cal .big-m').text($("ul>li.datelist:eq(" + start + ")", "div.section div.cal").data("month"));
// 						            $('.cal .small-yyyym').text(
// 						                $("ul>li.datelist:eq(" + start + ")", "div.section div.cal").data("year") + " " +
// 						                $("ul>li.datelist:eq(" + start + ")", "div.section div.cal").data("montheng")
// 						            );
// 						        }
		
						        
						        
// 						        function loadMovie() {
// 						            var playDate = selectedDate.replace(/-/gi, '');
// 						            if (selectedListType == "time") {
// 						                $.post("/cinemaDetail", { TheaterCode: cinemaCode, PlayDate: playDate }, function (data) {
// 						                    $("div.theater-movie", "div.section-theater-body").html(data);
// 						                });
// 						            } else {
// 						                $.post("/cinemaDetail", { TheaterCode: theaterCode, PlayDate: playDate }, function (data) {
// 						                    $("div.theater-movie", "div.section-theater-body").html(data);
// 						                });
// 						            }
// 						        }
		
// 						        $("li>a.next", "div.cal").click(function (e) {
// 						            e.preventDefault();
// 						            index++;
// 						            if (index > 4) {
// 						                index = 4;
// 						                return false;
// 						            }
// 						            dateView();
// 						            return false;
// 						        });
		
// 						        $("li>a.prev", "div.cal").click(function (e) {
// 						            e.preventDefault();
// 						            index--;
// 						            if (index < 0) {
// 						                index = 0;
// 						                return false;
// 						            }
		
// 						            dateView();
// 						            return false;
// 						        });
		
// 						        $("li.datelist>a", "div.cal").click(function (e) {
// 						            e.preventDefault();
// 						            var $li = $(this).closest("li");
		
// 						            if ($(this).hasClass("disabled") == true) {
// 						                return false;
// 						            }
		
// 						            $("ul>li.datelist>a.selected", "div.cal").removeClass("selected");
// 						            $("ul>li.datelist>a._sat", "div.cal").addClass("sat").removeClass("_sat");
// 						            $("ul>li.datelist>a._sun", "div.cal").addClass("sun").removeClass("_sun");
		
// 						            $(this).addClass("selected");
		
// 						            if ($(this).hasClass("sun")) {
// 						                $(this).addClass("_sun").removeClass("sun");
// 						            }
// 						            if ($(this).hasClass("sat")) {
// 						                $(this).addClass("_sat").removeClass("sat");
// 						            }
		
// // 						            $("span.big-m", "div.cal").text($li.data("month"));
// 						            $("small-yyyym", "div.cal").text(
// 						                $li.data("year") + " " +
// 						                $li.data("montheng")
// 						            );
						            
// 						            selectedDate = $(this).closest("li").data("date");
// 						            loadMovie();
// 						            return false;
// 						        });
		
// 						        $("a", "div.selector-sub").click(function (e) {
// 						            e.preventDefault();
// 						            $("a", "div.selector-sub").parent().find("a").removeClass("selected");
// 						            $(this).addClass("selected");
// 						            selectedListType = $(this).data("listtype");
// 						            loadMovie();
// 						            return false;
// 						        });
		
		
// 						        loadMovie();
// 						    });
						</script>
						<script type="text/javascript">
						// 날짜 선택
						const date = new Date();
						
						const lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0); //마지막날
						const reserveDate = document.querySelector(".cal ul li"); // 예매날
						
						
						
					    // 숫자
						const month = String(date.getMonth() + 1).padStart(2, '0'); //월
						
						// 영어로 표기하기위한
					    const monthName = date.getMonth() ; //월
						const monthNames = ["January", "February", "March", "April", "May", "June",
			                  "July", "August", "September", "October", "November", "December"];
						
					    const weekOfDay = ["일", "월", "화", "수", "목", "금", "토"]; //일주일
					    const year = date.getFullYear(); //년 
					    
					    $('.cal span.big-m').text(monthNames[monthName]);
					    $('.cal span.small-yyyym').text(year + " " + monthNames[monthName]);
					    
					    
					    // i = 일
					   for (i = date.getDate(); i <= lastDay.getDate(); i++) {
						    const dayList = document.createElement("li");
						    dayList.classList.add("date-list");
						
						    const aTag = document.createElement("a");
						    aTag.setAttribute("href", "#");
						    aTag.classList.add("selectDate");
						
						    const spanWeekOfDay = document.createElement("span"); // 요일
						    const spanDay = document.createElement("span");
						    
						    spanDay.classList.add("selDate");
						
						    //weekOfDay[new Date(2023-04-00)]
						    const dayOfWeek = weekOfDay[new Date(year + "-" + month + "-" + i).getDay()];
							
// 						    alert(dayOfWeek); //월화수목~~~ 
							
						    //요일 넣기
						    if (dayOfWeek == "토") {
						        spanWeekOfDay.classList.add("sat");
						        spanDay.classList.add("sat");
						        aTag.classList.add("sat"); //토요일이면 a태그에 "sat" 클래스 추가
						    } else if (dayOfWeek == "일") {
						        spanWeekOfDay.classList.add("sun");
						        spanDay.classList.add("sun");
						        aTag.classList.add("sun"); //일요일이면 a태그에 "sun" 클래스 추가
						    }
						    
						    spanWeekOfDay.innerHTML = dayOfWeek;
						
						    //날짜 넣기
						    spanDay.innerHTML = i;
						    spanDay.setAttribute("data-cd", i);    // span 태그 안 : 각 버튼 data-cd 날짜 데이터 저장 (1,2,3,4,5...30)
						    spanDay.setAttribute("data-month", month);
						    spanDay.setAttribute("data-year", year);
						    spanDay.setAttribute("data-date", year+"-" + month + "-" + i );
						    aTag.append(spanWeekOfDay);
						    aTag.append(spanDay);
						    dayList.append(aTag);
						   $(".next-btn").before(dayList);
// 						    dayClickEvent(aTag);
						}

						
					   const selectDateList = document.querySelectorAll('.selectDate');
					   selectDateList.forEach(selectDate => {
					     selectDate.addEventListener('click', function() {
					       const previousSelectedDate = document.querySelector('.selectDate.selected');
					       if (previousSelectedDate) {
					         previousSelectedDate.classList.remove('selected');
					       
					       }
					       selectDate.classList.add('selected');
					       const selDateElement = this.querySelector('.selDate');
					       //선택한 날짜
						   const selDateData = selDateElement.dataset.date;
					       
					       alert(selDateData);
					       
					       
					       $.ajax({
					           type: "GET",
					           url: "cinemaDetail",
					           data: {
					        	   play_date: selDateData
					           },
					           success: function(result){
					        	   
					           },
					           error:function(request,status,error){
					               alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					           }
					       });
					       
					     });
					   });
					   
						
// 					   const selDateElement = document.querySelector('.selDate');
// 					   const selDateData = selDateElement.dataset.date;
// 					   console.log(selDateData); 
						
						</script>					


						<!-- 날짜 -->
						<div class="content">
							<ul class="desc">
								<li><span class="rate-all">전체</span> 전체 관람가</li>
								<li><span class="rate-12">12</span> 12세 관람가</li>
								<li><span class="rate-15">15</span> 15세 관람가</li>
								<li><span class="rate-x">청불</span> 청소년 관람불가</li>
							</ul>
							
							
							
							
							<c:forEach var="schList" items="${schList }">
							<div class="each-movie-time">
								<div class="movie-title">
									<span class="${schList.get('rate') }">15</span>${schList.get('info_movie_title') }
								</div>

								<div class="screen">
									<div class="screen-name" style="font-size: 15px; line-height: 20px;">
										<br>${schList.get('screen_name') }
									</div>
									<div class="time-block">

										<div class="time" data-playdate="${schList.get('sch_movie_date') }" data-theatercode=${schList.get('sch_screen_code') } data-moviecode="${schList.get('sch_movie_code') }">
											<a href="#"> ${schList.get('sch_start_time') }<span class="to"> ~ ${schList.get('sch_last_time') }</span> <span
												class="seats-status">94 / ${schList.get('seat_count') } 받아올총좌석수 </span>
<!-- 														  (남은좌석수) -->
											</a>
										</div>

									</div>
								</div>

							</div>
							</c:forEach>
							
							
							
							<!-- 주의사항 -->
						</div>
						<!--.wrap-->
						<div class="expl">
							<ul>
								<li>• 상영시간 20분 전까지만 취소가 가능합니다.</li>
								<li>• 지연입장에 의한 관람불편을 최소화하고자 본 영화는 약 10분후 시작합니다.</li>
								<li>• 쾌적한 관람 환경을 위해 상영시간 이전에 입장 부탁드립니다.</li>
								<li>• 모바일 캡쳐 화면 소지 시 입장 제한을 받을 수 있습니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<jsp:include page="../footer.jsp" />
</body>
</html>