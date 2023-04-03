<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<meta charset="UTF-8">

<link rel="shortcut icon" href="../images/rsv/res_test.png" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">

<title>RESERVATION_Ver1</title>
<script src="../js/jquery-3.6.4.js"></script>
<link href="../css/notosanskr.css" rel="stylesheet">
<link href="../css/notosanskr2.css" rel="stylesheet">
<!-- <link href="../css/common.css" rel="stylesheet"> -->
<!-- <link href="../css/inc.css" rel="stylesheet"> -->
<!-- <link href="../css/sub.css" rel="stylesheet"> -->


<!--     <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet" type="text/css"> -->

<!--     <link href="/bundles/css?v=scHQtpyBsAqx4Wl3_5LW1UeSElY2biEXODBKNwsuNA01" rel="stylesheet"> -->

<!--     <script src="/bundles/script?v=Gu3NQdOztCK0wWuR8z72cJGoW3bwvY8qxbz0BuaXQSs1"></script> -->





<script>
    $(function () {
        $("a.read1", "div.footer-service").click(function (e) {
            e.preventDefault();
            $.desktop.member.terms({
                tabType: 1
            });
        });

        $("a.read2", "div.footer-service").click(function (e) {
            e.preventDefault();
            $.desktop.member.terms({
                tabType: 2
            });
        });

        $("a.read3", "div.footer-service").click(function (e) {
            e.preventDefault();
            $.desktop.member.termstimetable({
                tabType: 1
            });
        });
    });
</script>



    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-125235578-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

        gtag('config', 'UA-125235578-1');
        $( document ).ready(function() {
                        
        });
</script>
<script type="text/javascript">
$(function () {
    $.desktop.reservepop = {};
    $.desktop.reservepop = {
        option: {
            theaterCode: "",
            movieCode: "",
            playDate: "",
            screenPlanId: "",
            playNumber: "",
            sortType: 1,
            grade: "",
            screenPropertyCode : 0
        },

        initLoad: true,
        selectedMovieCode: new Array(),
        firstScreenPlanId: "",
        dateWidget: null,
        mouseOverMinimap: null,

        init: function () {
            $.desktop.reservepop.option.theaterCode = $("div.popup").data("theatercode");
            $.desktop.reservepop.option.movieCode = $("div.popup").data("moviecode");
            $.desktop.reservepop.option.playDate = $("div.popup").data("playdate");
            $.desktop.reservepop.option.screenPlanId = $("div.popup").data("screenplanid");
            $.desktop.reservepop.option.playNumber = $("div.popup").data("playnumber");

            $.desktop.firstScreenPlanId = $.desktop.reservepop.option.screenPlanId;
            $.desktop.reservepop.initLoad = true;
            $.desktop.reservepop.selectedMovieCode = new Array();

            if ($.desktop.reservepop.option.movieCode != "") {
                $.desktop.reservepop.selectedMovieCode.push($.desktop.reservepop.option.movieCode);
            }

            $.desktop.reservepop._initEvent();
            $.desktop.reservepop._initSelected();

            $.desktop.reservepop.loadDate($.desktop.reservepop.option.playDate);
            $.desktop.reservepop.loadMovie($.desktop.reservepop.option.sortType);

            $.desktop.reservepop.dateWidget = $("div.wrap-date #rsvcal", "div.popup").hide().datepicker({
                minDate: "2023-04-03",
                maxDate: "2023-05-03",
                dateFormat: "yy-mm-dd",
                onSelect: function (d, i) {
                    var selectedDate = d.replace(/-/gi, "");
                    $.desktop.reservepop.loadPlayDate(selectedDate, selectedDate);
                }
            });
        },

        _initEvent: function () {

            $("div.wrap-date", "div.popup").on("click", ".btn-show-cal", function (e) {
                if ($.desktop.reservepop.dateWidget.datepicker("widget").is(":hidden")) {
                    $.desktop.reservepop.dateWidget.datepicker("show").datepicker("widget").show().position({
                        my: "right bottom",
                        at: "right top",
                        of: this
                    });
                } else {
                    $.desktop.reservepop.dateWidget.hide();
                }
                e.preventDefault();
            });

            $("a.close-modal", "div.popup").click(function () {
                if (confirm("모든 선택정보가 사라집니다. 계속하시겠습니까?") == false) {
                    return false;
                }

                $.modal.close();
                return false;
            });

            $("div.section-pop-top", "div.popup").on("click", "a.btn-rsv-reset", function () {
                if (confirm("모든 선택정보가 사라집니다. 계속하시겠습니까?") == false) {
                    return false;
                }
                var theaterCode = $("div#popup_olddata").data("theatercode");
                var movieCode = $("div#popup_olddata").data("moviecode");
                var playDate = $("div#popup_olddata").data("playdate");
                var screenPlanId = $("div#popup_olddata").data("screenplanid");
                var playNumber = $("div#popup_olddata").data("playnumber");

                $.desktop.reserve.openPrev(
                    {
                        playDate: playDate,
                        theaterCode: theaterCode,
                        movieCode: "",
                        screenPlanId: "",
                        playNumber: "",
                    }
                );
            });

            $("div.wrap-date", "div.popup").on("click", "a.viewDate", function (event) {
                var viewDate = $(this).data("viewdate");
                if (viewDate != "") {
                    $.desktop.reservepop.loadDate(viewDate);
                }
                event.preventDefault();
                return false;
            });

            $("div.wrap-date", "div.popup").on("click", "li.datelist>a", function (event) {
                if ($(this).hasClass("disabled") == false) {
                    var date = $(this).data("date");
                    var selectDate = $(this).data("selectdate");
                    $("div.wrap-date #rsvcal", "div.popup").val(selectDate);

                    $.desktop.reservepop.option.playDate = date;
                    $(this).closest("ul").find("li.datelist>a").removeClass("selected");
                    $(this).closest("ul").find("li.datelist>a._sat").addClass("sat").removeClass("_sat");
                    $(this).closest("ul").find("li.datelist>a._sun").addClass("sun").removeClass("_sun");

                    $(this).addClass("selected");

                    if ($(this).hasClass("sun")) {
                        $(this).addClass("_sun").removeClass("sun");
                    }
                    if ($(this).hasClass("sat")) {
                        $(this).addClass("_sat").removeClass("sat");
                    }

                    $.desktop.reservepop.loadMovie();
                }
                event.preventDefault();
                return false;
            })

            $("div.theater-box", "div.popup").on("click", "a", function (event) {
                if ($.desktop.reservepop.option.theaterCode != $(this).data("theatercode")) {
                    $.desktop.reservepop.option.theaterCode = $(this).data("theatercode");
                    $("div.wrap-theater div.theater-box a.theater", "div.popup").removeClass("selected");
                    $(this).addClass("selected");
                    $.desktop.reservepop.selectedMovieCode = new Array();
                    $.desktop.reservepop.loadDate($.desktop.reservepop.option.playDate);
                    $.desktop.reservepop.loadMovie();
                    $.desktop.reservepop.loadScreenPlan($.desktop.reservepop.selectedMovieCode);
                }
                event.preventDefault();
                return false;
            });


            $("div.wrap-movielist", "div.popup").on("click", ".p-movie-check", function (event) {
                $.desktop.reservepop.selectedMovieCode = new Array();
                $("input.p-movie-check:checked", "div.wrap-movielist").each(function (e) {
                    $.desktop.reservepop.selectedMovieCode.push($(this).val());
                });
                $.desktop.reservepop.loadScreenPlan($.desktop.reservepop.selectedMovieCode);
            });

            $("div.wrap-movielist", "div.popup").on("click", "div.btn-box1>a", function (event) {
                event.preventDefault();
                var type = $(this).data("type");
                if (type == "select") {
                    $.desktop.reservepop.selectedMovieCode = new Array();
                    $("div.wrap-movielist input.p-movie-check", "div.popup").each(function () {
                        if ($(this).prop("disabled") == false) {
                            $.desktop.reservepop.selectedMovieCode.push($(this).val());
                            $(this).prop("checked", true);
                        }
                    });
                    $.desktop.reservepop.loadMovie();
                } else if (type == "reload") {
                    $.desktop.reservepop.selectedMovieCode = new Array();
                    $.desktop.reservepop.loadMovie();
                    $.desktop.reservepop.loadScreenPlan($.desktop.reservepop.selectedMovieCode);
                }
                return false;
            });

            $("div.wrap-movielist").on("click", "div.btn-box2>a", function (event) {
                event.preventDefault();
                if ($(this).hasClass("selected") == false) {
                    var sorttype = $(this).data("sorttype");
                    $(this).closest("div.btn-box2").find("a").removeClass("selected");
                    $(this).addClass("selected");
                    $.desktop.reservepop.loadMovie(sorttype);
                }
                return false;
            });

            $("div.wrap-timetable", "div.popup").on("mouseenter", ".time", function (e) {
                $("div.wrap-timetable div.pop-map", "div.popup").remove();
                var $this = $(this);
                var screenPlanId = $(this).data("screenplanid");
                $.desktop.reservepop.mouseOverMinimap = screenPlanId;
                $.post("/popup/ReserveMinimap", { screenPlanId: screenPlanId }, function (data) {
                    if ($.desktop.reservepop.mouseOverMinimap == screenPlanId) {
                        var $timeTable = $("<div class='pop-map'>" + data + "</div>");
                        $("div.wrap-timetable", "div.popup").append($timeTable);
                        var pos_this = $this.position();
                        var h_pop = $timeTable.height();
                        var w_pop = $timeTable.width();
                        var h_this = $this.height();
                        var w_this = $this.width();
                        $timeTable.css("top", parseInt(pos_this.top - h_pop - h_this + 7));
                        if ($this.index() % 3 == 2) {
                            $timeTable.css("left", parseInt(pos_this.left + w_this - w_pop - 7));
                        } else {
                            $timeTable.css("left", parseInt(pos_this.left));
                        }
                        $timeTable.css("margin-left", $this.css("margin-left"));

                        if ($.desktop.reservepop.mouseOverMinimap != screenPlanId) {
                            $timeTable.remove();
                        }
                    }
                })
            });

            $("div.wrap-timetable", "div.popup").on("mouseleave", ".time", function () {
                $("div.wrap-timetable div.pop-map", "div.popup").remove();
            });


            $("div.wrap-timetable", "div.popup").on("click", ".time", function (e) {
                $(".wrap-timetable .time").removeClass("on");
                $.desktop.reservepop.option.screenPlanId = $(this).data("screenplanid");
                $.desktop.reservepop.option.grade = $(this).data("grade");
                $.desktop.reservepop.option.screenPropertyCode = $(this).data("sproperty");



                $(this).toggleClass("on");
            });

            $(".section-pop-bottom", "div.popup").on("click", "a.btn-rsv-next", function (event) {
                event.preventDefault();

                if ($.desktop.reservepop.option.theaterCode == "") {
                    alert("영화관을 선택하세요.");
                    return false;
                }

                if ($.desktop.reservepop.option.playDate == "") {
                    alert("날짜를 선택하세요.");
                    return false;
                }

                if ($.desktop.reservepop.option.screenPlanId == "") {
                    alert("영화 시간을 선택하세요.");
                    return false;
                }

                if ((parseInt($.desktop.reservepop.option.screenPropertyCode) & 8) != 0) {
                    alert("해당 시간표는 시사회입니다. 예매가 불가능합니다")
                    return false;
                }

                if ($.desktop.reservepop.option.grade == "18" || $.desktop.reservepop.option.grade == "x") {
                    alert("청불등급\r\n\r\n본 영화는 청소년 관람불가 영화입니다.\r\n\r\n만 18세 미만의 고객님(영, 유아)은 보호자(부모님 포함)를 동반하여도 관람하실 수 없습니다.\r\n만 18세 이상이라도 초/중/고 재학중인 고객님은 영화를 관람하실 수 없습니다.\r\n영화 관람 시, 반드시 신분증을 지참해주세요.");
                } else if ($.desktop.reservepop.option.grade == "15") {
                    alert("15세 이상 등급\r\n\r\n본 영화는 15세 이상 관람 영화입니다.\r\n\r\n만 15세 미만 고객님(영, 유아포함)께서는 반드시 보호자(부모님 포함) 동반하에 관람이 가능합니다.");
                } else if ($.desktop.reservepop.option.grade == "12") {
                    alert("12세 이상 등급\r\n\r\n본 영화는 12세 이상 관람 영화입니다.\r\n\r\n만 12세 미만 고객님(영, 유아포함)께서는 반드시 보호자(부모님 포함) 동반하에 관람이 가능합니다");
                }

                $.desktop.seatchoice.open(
                    {
                        playDate: $.desktop.reservepop.option.playDate,
                        theaterCode: $.desktop.reservepop.option.theaterCode,
                        screenPlanId: $.desktop.reservepop.option.screenPlanId
                    }
                );

                return false;
            });
        },

        _initSelected: function () {
            $("div.wrap-theater div.theater-box", "div.popup").find("a").removeClass("selected");
            $("div.wrap-theater div.theater-box", "div.popup").find("a[data-theatercode=" + $.desktop.reservepop.option.theaterCode + "]").addClass("selected");
        },

        loadDate: function (viewDate) {
            $.post("/popup/ReserveDateList", {
                theaterCode: $.desktop.reservepop.option.theaterCode,
                selectDate: $.desktop.reservepop.option.playDate,
                viewDate: viewDate,
            }, function (data) {
                var $data = $(data);
                var maxdate = $data.data("maxdate");
                $("div.wrap-date #rsvcal", "div.popup").hide().datepicker("option", "maxDate", maxdate);
                $("div.wrap-date ul.cal-week", "div.popup").html($data.html());

            });
        },

        loadPlayDate: function (playDate) {
            $.post("/popup/ReserveDateList", {
                theaterCode: $.desktop.reservepop.option.theaterCode,
                selectDate: playDate,
                viewDate: playDate,
            }, function (data) {
                var $data = $(data);
                var maxdate = $data.data("maxdate");
                $("div.wrap-date #rsvcal", "div.popup").datepicker("option", "maxDate", maxdate);
                $("div.wrap-date ul.cal-week", "div.popup").html($data.html());
                $.desktop.reservepop.option.playDate = playDate;
                $(this).closest("ul").find("li.datelist>a").removeClass("selected");
                $(this).addClass("selected");

                $.desktop.reservepop.loadMovie();
            });
        },

        loadMovie: function (sortType) {
            $.desktop.reservepop.option.sortType = sortType == undefined ? $.desktop.reservepop.option.sortType : sortType;

            if ($("div.wrap-date ul.cal-week a[data-date=" + $.desktop.reservepop.option.playDate + "]", "div.popup").hasClass("disabled") == true) {
                $("div.wrap-movielist input.p-movie-check", "div.popup").prop("disabled", true).prop("checked", false);
                $.desktop.reservepop.clearScreenPlan();
                return;
            }

            $.post("/popup/ReserveMovieList", {
                "PlayDate": $.desktop.reservepop.option.playDate,
                "TheaterCode": $.desktop.reservepop.option.theaterCode,
                "movieCode": $.desktop.reservepop.selectedMovieCode.toString(),
                "SortType": $.desktop.reservepop.option.sortType
            }, function (data) {
                $("div.wrap-movielist", "div.popup").html(data);

                var selectMovieCode = new Array();
                $("div.wrap-movielist input.p-movie-check", "div.popup").each(function () {
                    for (var i = 0; i < $.desktop.reservepop.selectedMovieCode.length; i++) {
                        if ($(this).val() == $.desktop.reservepop.selectedMovieCode[i]) {
                            if ($(this).prop("disabled") == true) {
                                $(this).prop("checked", false).removeProp("checked");
                            } else {
                                selectMovieCode.push($.desktop.reservepop.selectedMovieCode[i])
                            }
                            break;
                        }
                    }
                });

                $.desktop.reservepop.loadScreenPlan(selectMovieCode);
            });
        },

        loadScreenPlan: function (movieCodeList) {
            if (movieCodeList.length == 0) {
                $.desktop.reservepop.clearScreenPlan();
                return;
            }

            $.post("/popup/ReserveScreenPlan", {
                "theaterCode": $.desktop.reservepop.option.theaterCode,
                "playDate": $.desktop.reservepop.option.playDate,
                "movieCode": movieCodeList.toString()
            }, function (data) {
                if ($.trim(data) == "")
                    $.desktop.reservepop.clearScreenPlan();
                else
                    $("div.wrap-timetable", "div.popup").html(data);
                if ($.desktop.firstScreenPlanId != "")
                    $("div.wrap-timetable div[data-screenplanid=" + $.desktop.firstScreenPlanId + "]", "div.popup").click();

                $.desktop.firstScreenPlanId = "";
            });
        },

        clearScreenPlan: function () {
            $("div.wrap-timetable", "div.popup").html('<p class="ready">영화관과 영화를 선택하면 시간표가 나옵니다.</p>');
        }
    }
});

</script>
<script type="text/javascript">
    $(function () {
        $.desktop.reservepop.init();
    })

</script></div></div></body>

<script type="text/javascript">
	$(function() {
		$(".nomemberloginpop").click(function() {
			if ($(this).prop("tagName") == "A") {
				var redirect = $(this).prop("href");
				$.desktop.login.openNoMember(function() {
					window.location.href = redirect;
				});
			} else {
				window.location.reload(true);
			}
			return false;
		});

		$(".loginpop").click(
				function(e) {
					if ($("header").data("loginstatus") == 0) {
						e.preventDefault();
						var redirect = $(this).data("redirect"), reload = $(
								this).data("reload"), callback = $(this).data(
								"callback");
						if (callback != null && callback != "") {
							$.desktop.login.open(function(phoneStatus,
									isNomember) {
								if (isNomember) {
									window.location.reload(true);
									return;
								}
								var _callback = eval(callback);
								_callback.apply();
							});
						} else if (reload != null && reload != "") {
							$.desktop.login.open(function() {
								window.location.reload(true);
							});
						} else if (redirect != null && redirect != "") {
							$.desktop.login.open(function(phoneStatus,
									isNomember) {
								if (isNomember) {
									window.location.reload(true);
									return;
								}
								window.location.href = redirect;
							});
						} else if ($(this).prop("tagName") == "A") {
							redirect = $(this).prop("href");
							$.desktop.login.open(function(phoneStatus,
									isNomember) {
								if (isNomember) {
									window.location.reload(true);
									return;
								}
								window.location.href = redirect;
							});
						}
						return false;
					}
				});
	});
</script>

<script type="text/javascript">
	$(function() {
		$("header").on("click", ".logoutpop", function() {
			$.ajax({
				url : "/Member/LogoutPop",
				dataType : "json",
				method : "POST",
				success : function(data) {
					if (data.ResultCode == 1) {
						$.desktop.login.logout(function() {
							window.location.href = "/";
						})
					} else {
						alert(data.Message);
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert("로그아웃 시도중 오류가 발생하였습니다.");
					console.log(errorThrown);
				}
			});
			return false;
		});
	});
</script>


<script type="text/javascript">
	function simpleReserv(playDate, theaterCode, movieCode) {
		$.desktop.reserve.open({
			playDate : playDate,
			theaterCode : theaterCode,
			movieCode : movieCode
		});
		return false;
	}

	$(function() {
		$(".simplereservepop").click(function(e) {
			e.preventDefault();
			$.desktop.reserve.open({
				playDate : ''
			});
			return false;
		})
	})
</script>
<style type="text/css"></style>
</head>
<body>
	<div class="section-pop-top">
		<!--<h3 class="title">제목</h3>-->
		<a href="#" class="btn-rsv-reset">다시 예매</a>
	</div>
	<div class="section-pop-left">
		<div class="wrap-date">
			<h4 class="title">날짜</h4>
			<a href="#" class="btn-show-cal">달력보기</a> <input type="hidden"
				name="cal" id="rsvcal" class="input-cal hasDatepicker"
				value="2023-04-01" style="display: none;">
			<ul class="cal-week">
				<li><a href="#" class="prev viewDate" data-viewdate="">이전</a></li>
				<li class="datelist"><a href="#" data-date="20230401"
					data-selectdate="2023-04-01" class="today disabled sat"><span
						class="day">오늘</span>1</a></li>
				<li class="datelist"><a href="#" data-date="20230402"
					data-selectdate="2023-04-02" class=" selected _sun"><span
						class="day">일</span>2</a></li>
				<li class="datelist"><a href="#" data-date="20230403"
					data-selectdate="2023-04-03" class=""><span class="day">월</span>3</a></li>
				<li class="datelist"><a href="#" data-date="20230404"
					data-selectdate="2023-04-04" class=""><span class="day">화</span>4</a></li>
				<li class="datelist"><a href="#" data-date="20230405"
					data-selectdate="2023-04-05" class=""><span class="day">수</span>5</a></li>
				<li class="datelist"><a href="#" data-date="20230406"
					data-selectdate="2023-04-06" class=""><span class="day">목</span>6</a></li>
				<li class="datelist"><a href="#" data-date="20230407"
					data-selectdate="2023-04-07" class=""><span class="day">금</span>7</a></li>
				<li class="datelist"><a href="#" data-date="20230408"
					data-selectdate="2023-04-08" class=" sat"><span class="day">토</span>8</a></li>
				<li class="datelist"><a href="#" data-date="20230409"
					data-selectdate="2023-04-09" class=" sun"><span class="day">일</span>9</a></li>
				<li class="datelist"><a href="#" data-date="20230410"
					data-selectdate="2023-04-10" class=""><span class="day">월</span>10</a></li>
				<li><a href="#" class="next viewDate" data-viewdate="20230411">이전</a></li>
			</ul>
		</div>
		<div class="wrap-theater">
			<h4 class="title">영화관</h4>
			<div class="theater-box">
				<a href="#" class="theater selected" data-theatercode="1001">DB영화관1</a> 
				<a href="#" class="theater" data-theatercode="4001">DB영화관2</a> 
				<a href="#" class="theater" data-theatercode="4101">DB영화관3</a> 
				<a href="#" class="theater " data-theatercode="6001">DB영화관4</a>
				<a href="#" class="theater" data-theatercode="6002">DB영화관5</a> 
				<a href="#" class="theater" data-theatercode="6003">DB영화관6</a> 
				<a href="#" class="theater" data-theatercode="2102">DB영화관7</a> 
				<a href="#" class="theater" data-theatercode="4002">DB영화관8</a> 
				<a href="#" class="theater" data-theatercode="6101">DB영화관9</a> 
				<a href="#" class="theater" data-theatercode="6005">DB영화관10</a>
			</div>
		</div>
		<div class="wrap-theater wrap-movielist">



			<h4 class="title">영화</h4>
			<div class="btn-box1">
				<a href="#" class="" data-type="select">전체 선택</a> <a href="#"
					class="" data-type="reload">전체 해제</a>
			</div>
			<div class="btn-box2">
				<a href="#" class="selected" data-sorttype="1">예매율순</a> <a href="#"
					class="" data-sorttype="2">가나다순</a>
			</div>
			<ul class="list-movie-name" style="height: 278px;">
				<li><input type="checkbox" id="pm_20226270"
					name="movie_movieCode" value="20226270" class="p-movie-check"
					checked=""><label for="pm_20226270"><span
						class="rate-12">12</span>스즈메의 문단속</label><span class="check"></span></li>
				<li><input type="checkbox" id="pm_20197654"
					name="movie_movieCode" value="20197654" class="p-movie-check"><label
					for="pm_20197654"><span class="rate-12">12</span>소울메이트</label><span
					class="check"></span></li>
				<li><input type="checkbox" id="pm_20228555"
					name="movie_movieCode" value="20228555" class="p-movie-check"><label
					for="pm_20228555"><span class="rate-12">12</span>더 퍼스트 슬램덩크</label><span
					class="check"></span></li>
				<li><input type="checkbox" id="pm_20224780"
					name="movie_movieCode" value="20224780" class="p-movie-check"><label
					for="pm_20224780"><span class="rate-15">15</span>모나리자와 블러드
						문</label><span class="check"></span></li>
				<li><input type="checkbox" id="pm_20210544"
					name="movie_movieCode" value="20210544" class="p-movie-check"><label
					for="pm_20210544"><span class="rate-15">15</span>웅남이</label><span
					class="check"></span></li>
				<li><input type="checkbox" id="pm_20239905"
					name="movie_movieCode" value="20239905" class="p-movie-check"><label
					for="pm_20239905"><span class="rate-all">0</span>꼬마돼지 베이브의
						바다 대모험</label><span class="check"></span></li>
				<li><input type="checkbox" id="pm_20226410"
					name="movie_movieCode" value="20226410" class="p-movie-check"><label
					for="pm_20226410"><span class="rate-12">12</span>던전 앤 드래곤:
						도적들의 명예</label><span class="check"></span></li>
				<li><input type="checkbox" id="pm_20230641"
					name="movie_movieCode" value="20230641" class="p-movie-check"><label
					for="pm_20230641"><span class="rate-12">12</span>오토라는 남자</label><span
					class="check"></span></li>

				<li><input type="checkbox" id="pm_20226489"
					name="movie_movieCode" value="20226489" disabled=""
					class="p-movie-check"><label for="pm_20226489"><span
						class="rate-12">12</span>리바운드</label><span class="check"></span></li>
				<li><input type="checkbox" id="pm_20231010"
					name="movie_movieCode" value="20231010" disabled=""
					class="p-movie-check"><label for="pm_20231010"><span
						class="rate-15">15</span>에어</label><span class="check"></span></li>
			</ul>
		</div>
	</div>
	<div class="section-pop-right">
		<div class="wrap-timetable-head">
			<h4 class="title">시간표</h4>
		</div>
		<div class="wrap-timetable">




			<!-- inside .wrap-timetable -->
			<div class="title">
				<span class="rate-12">12</span>스즈메의 문단속
			</div>
			<div class="theater-info">
				4관 <span class="all-seats">(95석)</span>
			</div>
			<div class="time-box">

				<div class="time on" data-sproperty="0" data-playdate="20230402"
					data-screenplanid="641067" data-playnumber="3" data-grade="12">

					<span class="from">14:55<span class="to">~17:06</span></span> <span
						class="seats "> 92석 </span>
				</div>


				<div class="time" data-sproperty="0" data-playdate="20230402"
					data-screenplanid="641078" data-playnumber="5" data-grade="12">

					<span class="from">20:00<span class="to">~22:11</span></span> <span
						class="seats "> 95석 </span>
				</div>

			</div>


			<!-- inside .wrap-timetable -->
			<div class="title">
				<span class="rate-12">12</span>스즈메의 문단속
			</div>
			<div class="theater-info">
				2관 <span class="all-seats">(144석)</span>
			</div>
			<div class="time-box">

				<div class="time" data-sproperty="1" data-playdate="20230402"
					data-screenplanid="641057" data-playnumber="1" data-grade="12">

					<span class="from">10:40<span class="to">~12:51</span></span> <span
						class="seats "> 126석 <span
						style="position: absolute; top: 13px; left: 85px; font-size: 10px; color: mediumpurple;">(조조)</span>
					</span>
				</div>


				<div class="time" data-sproperty="0" data-playdate="20230402"
					data-screenplanid="641063" data-playnumber="2" data-grade="12">

					<span class="from">13:15<span class="to">~15:26</span></span> <span
						class="seats "> 141석 </span>
				</div>


				<div class="time" data-sproperty="0" data-playdate="20230402"
					data-screenplanid="641071" data-playnumber="3" data-grade="12">

					<span class="from">15:50<span class="to">~18:01</span></span> <span
						class="seats "> 138석 </span>
				</div>


				<div class="time" data-sproperty="0" data-playdate="20230402"
					data-screenplanid="641077" data-playnumber="4" data-grade="12">

					<span class="from">18:25<span class="to">~20:36</span></span> <span
						class="seats "> 142석 </span>
				</div>


				<div class="time" data-sproperty="2" data-playdate="20230402"
					data-screenplanid="641082" data-playnumber="5" data-grade="12">

					<span class="from">21:00<span class="to">~23:11</span></span> <span
						class="seats "> 144석 <span
						style="position: absolute; top: 13px; left: 85px; font-size: 10px; color: blue;">(심야)</span>
					</span>
				</div>

			</div>

			<div class="pop-map"
				style="top: 113px; left: 648px; margin-left: -5px;">


				<div class="map mini">
					<span class="screen">SCREEN</span> <span class="exit left">비상구</span>
					<span class="exit right">비상구</span>

					<ul class="row">
						<li><input type="checkbox" class="choose-seat accessible"
							id="A1" name="seats[]" value="A1" accessible=""><label
							for="A1" class="mini">A1</label></li>
						<li><input type="checkbox" class="choose-seat accessible"
							id="A2" name="seats[]" value="A2" accessible=""><label
							for="A2" class="mini">A2</label></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="A4"
							name="seats[]" value="A4"><label for="A4" class="mini">A4</label></li>
						<li><input type="checkbox" class="choose-seat " id="A5"
							name="seats[]" value="A5"><label for="A5" class="mini">A5</label></li>
						<li><input type="checkbox" class="choose-seat " id="A6"
							name="seats[]" value="A6"><label for="A6" class="mini">A6</label></li>
						<li><input type="checkbox" class="choose-seat " id="A7"
							name="seats[]" value="A7"><label for="A7" class="mini">A7</label></li>
						<li><input type="checkbox" class="choose-seat " id="A8"
							name="seats[]" value="A8"><label for="A8" class="mini">A8</label></li>
						<li><input type="checkbox" class="choose-seat " id="A9"
							name="seats[]" value="A9"><label for="A9" class="mini">A9</label></li>
						<li><input type="checkbox" class="choose-seat " id="A10"
							name="seats[]" value="A10"><label for="A10" class="mini">A10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="B1"
							name="seats[]" value="B1"><label for="B1" class="mini">B1</label></li>
						<li><input type="checkbox" class="choose-seat " id="B2"
							name="seats[]" value="B2"><label for="B2" class="mini">B2</label></li>
						<li><input type="checkbox" class="choose-seat " id="B3"
							name="seats[]" value="B3"><label for="B3" class="mini">B3</label></li>
						<li><input type="checkbox" class="choose-seat " id="B4"
							name="seats[]" value="B4"><label for="B4" class="mini">B4</label></li>
						<li><input type="checkbox" class="choose-seat " id="B5"
							name="seats[]" value="B5"><label for="B5" class="mini">B5</label></li>
						<li><input type="checkbox" class="choose-seat " id="B6"
							name="seats[]" value="B6"><label for="B6" class="mini">B6</label></li>
						<li><input type="checkbox" class="choose-seat " id="B7"
							name="seats[]" value="B7"><label for="B7" class="mini">B7</label></li>
						<li><input type="checkbox" class="choose-seat " id="B8"
							name="seats[]" value="B8"><label for="B8" class="mini">B8</label></li>
						<li><input type="checkbox" class="choose-seat " id="B9"
							name="seats[]" value="B9"><label for="B9" class="mini">B9</label></li>
						<li><input type="checkbox" class="choose-seat " id="B10"
							name="seats[]" value="B10"><label for="B10" class="mini">B10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="C1"
							name="seats[]" value="C1"><label for="C1" class="mini">C1</label></li>
						<li><input type="checkbox" class="choose-seat " id="C2"
							name="seats[]" value="C2"><label for="C2" class="mini">C2</label></li>
						<li><input type="checkbox" class="choose-seat " id="C3"
							name="seats[]" value="C3"><label for="C3" class="mini">C3</label></li>
						<li><input type="checkbox" class="choose-seat " id="C4"
							name="seats[]" value="C4"><label for="C4" class="mini">C4</label></li>
						<li><input type="checkbox" class="choose-seat " id="C5"
							name="seats[]" value="C5"><label for="C5" class="mini">C5</label></li>
						<li><input type="checkbox" class="choose-seat " id="C6"
							name="seats[]" value="C6"><label for="C6" class="mini">C6</label></li>
						<li><input type="checkbox" class="choose-seat " id="C7"
							name="seats[]" value="C7"><label for="C7" class="mini">C7</label></li>
						<li><input type="checkbox" class="choose-seat " id="C8"
							name="seats[]" value="C8"><label for="C8" class="mini">C8</label></li>
						<li><input type="checkbox" class="choose-seat " id="C9"
							name="seats[]" value="C9"><label for="C9" class="mini">C9</label></li>
						<li><input type="checkbox" class="choose-seat " id="C10"
							name="seats[]" value="C10"><label for="C10" class="mini">C10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="D1"
							name="seats[]" value="D1"><label for="D1" class="mini">D1</label></li>
						<li><input type="checkbox" class="choose-seat " id="D2"
							name="seats[]" value="D2"><label for="D2" class="mini">D2</label></li>
						<li><input type="checkbox" class="choose-seat " id="D3"
							name="seats[]" value="D3"><label for="D3" class="mini">D3</label></li>
						<li><input type="checkbox" class="choose-seat " id="D4"
							name="seats[]" value="D4"><label for="D4" class="mini">D4</label></li>
						<li><input type="checkbox" class="choose-seat " id="D5"
							name="seats[]" value="D5"><label for="D5" class="mini">D5</label></li>
						<li><input type="checkbox" class="choose-seat " id="D6"
							name="seats[]" value="D6"><label for="D6" class="mini">D6</label></li>
						<li><input type="checkbox" class="choose-seat " id="D7"
							name="seats[]" value="D7"><label for="D7" class="mini">D7</label></li>
						<li><input type="checkbox" class="choose-seat " id="D8"
							name="seats[]" value="D8"><label for="D8" class="mini">D8</label></li>
						<li><input type="checkbox" class="choose-seat " id="D9"
							name="seats[]" value="D9"><label for="D9" class="mini">D9</label></li>
						<li><input type="checkbox" class="choose-seat " id="D10"
							name="seats[]" value="D10"><label for="D10" class="mini">D10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="E1"
							name="seats[]" value="E1"><label for="E1" class="mini">E1</label></li>
						<li><input type="checkbox" class="choose-seat " id="E2"
							name="seats[]" value="E2"><label for="E2" class="mini">E2</label></li>
						<li><input type="checkbox" class="choose-seat " id="E3"
							name="seats[]" value="E3"><label for="E3" class="mini">E3</label></li>
						<li><input type="checkbox" class="choose-seat " id="E4"
							name="seats[]" value="E4"><label for="E4" class="mini">E4</label></li>
						<li><input type="checkbox" class="choose-seat " id="E5"
							name="seats[]" value="E5"><label for="E5" class="mini">E5</label></li>
						<li><input type="checkbox" class="choose-seat " id="E6"
							name="seats[]" value="E6"><label for="E6" class="mini">E6</label></li>
						<li><input type="checkbox" class="choose-seat " id="E7"
							name="seats[]" value="E7"><label for="E7" class="mini">E7</label></li>
						<li><input type="checkbox" class="choose-seat " id="E8"
							name="seats[]" value="E8"><label for="E8" class="mini">E8</label></li>
						<li><input type="checkbox" class="choose-seat " id="E9"
							name="seats[]" value="E9"><label for="E9" class="mini">E9</label></li>
						<li><input type="checkbox" class="choose-seat " id="E10"
							name="seats[]" value="E10"><label for="E10" class="mini">E10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="F1"
							name="seats[]" value="F1"><label for="F1" class="mini">F1</label></li>
						<li><input type="checkbox" class="choose-seat " id="F2"
							name="seats[]" value="F2"><label for="F2" class="mini">F2</label></li>
						<li><input type="checkbox" class="choose-seat " id="F3"
							name="seats[]" value="F3"><label for="F3" class="mini">F3</label></li>
						<li><input type="checkbox" class="choose-seat " id="F4"
							name="seats[]" value="F4"><label for="F4" class="mini">F4</label></li>
						<li><input type="checkbox" class="choose-seat " id="F5"
							name="seats[]" value="F5"><label for="F5" class="mini">F5</label></li>
						<li><input type="checkbox" class="choose-seat " id="F6"
							name="seats[]" value="F6"><label for="F6" class="mini">F6</label></li>
						<li><input type="checkbox" class="choose-seat " id="F7"
							name="seats[]" value="F7"><label for="F7" class="mini">F7</label></li>
						<li><input type="checkbox" class="choose-seat " id="F8"
							name="seats[]" value="F8"><label for="F8" class="mini">F8</label></li>
						<li><input type="checkbox" class="choose-seat " id="F9"
							name="seats[]" value="F9"><label for="F9" class="mini">F9</label></li>
						<li><input type="checkbox" class="choose-seat " id="F10"
							name="seats[]" value="F10"><label for="F10" class="mini">F10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="G1"
							name="seats[]" value="G1"><label for="G1" class="mini">G1</label></li>
						<li><input type="checkbox" class="choose-seat " id="G2"
							name="seats[]" value="G2"><label for="G2" class="mini">G2</label></li>
						<li><input type="checkbox" class="choose-seat " id="G3"
							name="seats[]" value="G3"><label for="G3" class="mini">G3</label></li>
						<li><input type="checkbox" class="choose-seat " id="G4"
							name="seats[]" value="G4"><label for="G4" class="mini">G4</label></li>
						<li><input type="checkbox" class="choose-seat " id="G5"
							name="seats[]" value="G5"><label for="G5" class="mini">G5</label></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="G7"
							name="seats[]" value="G7"><label for="G7" class="mini">G7</label></li>
						<li><input type="checkbox" class="choose-seat " id="G8"
							name="seats[]" value="G8"><label for="G8" class="mini">G8</label></li>
						<li><input type="checkbox" class="choose-seat " id="G9"
							name="seats[]" value="G9"><label for="G9" class="mini">G9</label></li>
						<li><input type="checkbox" class="choose-seat " id="G10"
							name="seats[]" value="G10"><label for="G10" class="mini">G10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="H1"
							name="seats[]" value="H1"><label for="H1" class="mini">H1</label></li>
						<li><input type="checkbox" class="choose-seat " id="H2"
							name="seats[]" value="H2"><label for="H2" class="mini">H2</label></li>
						<li><input type="checkbox" class="choose-seat " id="H3"
							name="seats[]" value="H3"><label for="H3" class="mini">H3</label></li>
						<li><input type="checkbox" class="choose-seat " id="H4"
							name="seats[]" value="H4"><label for="H4" class="mini">H4</label></li>
						<li><input type="checkbox" class="choose-seat " id="H5"
							name="seats[]" value="H5"><label for="H5" class="mini">H5</label></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="H7"
							name="seats[]" value="H7"><label for="H7" class="mini">H7</label></li>
						<li><input type="checkbox" class="choose-seat " id="H8"
							name="seats[]" value="H8"><label for="H8" class="mini">H8</label></li>
						<li><input type="checkbox" class="choose-seat " id="H9"
							name="seats[]" value="H9"><label for="H9" class="mini">H9</label></li>
						<li><input type="checkbox" class="choose-seat " id="H10"
							name="seats[]" value="H10"><label for="H10" class="mini">H10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="I1"
							name="seats[]" value="I1"><label for="I1" class="mini">I1</label></li>
						<li><input type="checkbox" class="choose-seat " id="I2"
							name="seats[]" value="I2"><label for="I2" class="mini">I2</label></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="I4"
							name="seats[]" value="I4"><label for="I4" class="mini">I4</label></li>
						<li></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="I7"
							name="seats[]" value="I7"><label for="I7" class="mini">I7</label></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="I9"
							name="seats[]" value="I9"><label for="I9" class="mini">I9</label></li>
						<li><input type="checkbox" class="choose-seat " id="I10"
							name="seats[]" value="I10"><label for="I10" class="mini">I10</label></li>
					</ul>
					<ul class="row">
						<li><input type="checkbox" class="choose-seat " id="J1"
							name="seats[]" value="J1"><label for="J1" class="mini">J1</label></li>
						<li><input type="checkbox" class="choose-seat " id="J2"
							name="seats[]" value="J2"><label for="J2" class="mini">J2</label></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="J4"
							name="seats[]" value="J4"><label for="J4" class="mini">J4</label></li>
						<li></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="J7"
							name="seats[]" value="J7"><label for="J7" class="mini">J7</label></li>
						<li></li>
						<li><input type="checkbox" class="choose-seat " id="J9"
							name="seats[]" value="J9"><label for="J9" class="mini">J9</label></li>
						<li><input type="checkbox" class="choose-seat " id="J10"
							name="seats[]" value="J10"><label for="J10" class="mini">J10</label></li>
					</ul>
				</div>
				<script>
    $(function () {
        $("div.map", "div.popup").on("click", ".choose-seat", function () {
            return false;
        });
    })
    
</script>
			</div>
		</div>
	</div>
	<div class="section-pop-bottom">
		<div class="wrap-rsv-select">
			<a href="#" class="btn-rsv-next">다음</a>
		</div>
	</div>
	<a class="close-modal" href="#">Close</a>
</body>
</html>