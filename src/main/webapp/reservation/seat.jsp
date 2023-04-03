<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="../css/notosanskr.css" rel="stylesheet">
<link href="../css/notosanskr2.css" rel="stylesheet">
<link href="../css/common.css" rel="stylesheet">
<link href="../css/inc.css" rel="stylesheet">
<link href="../css/sub.css" rel="stylesheet">
<div class="popup seatChoice" data-theatercode="6001"
	data-moviecode="20197654" data-playdate="20230402"
	data-screenplanid="641081">
	<div class="section-pop-top">
		<h3 class="title">인원/좌석선택</h3>
		<a href="#" class="btn-rsv-reset">다시 예매</a>
	</div>

	<div class="section-pop-movie">
		<img
			src="../images/rsv/res_test.png"
			class="poster" alt="DB이미지파일 불러오기">

		<div class="title">
			<span class="rate-12">12</span>소울메이트
		</div>
		<table class="table-movie-info">
			<tbody>
				<tr>
					<th>영화관</th>
					<td>경주보문</td>
				</tr>
				<tr>
					<th>상영관</th>
					<td>6관</td>
				</tr>
				<tr>
					<th>날짜</th>
					<td>2023.04.02(일)</td>
				</tr>
				<tr>
					<th>시간</th>
					<td class="time">20:30</td>
				</tr>
				<tr>
					<th>인원</th>
					<td class="number"></td>
				</tr>
				<tr>
					<th>좌석</th>
					<td class="seats"></td>
				</tr>
			</tbody>
		</table>

		<span class="total-price"><span>0</span> 원</span>

	</div>
	<!--.section-pop-movie-->

	<div class="section-pop-theater">
		<div class="wrap-number-info">
			<span class="kind">성인</span> <select class="input-select id_2844"
				data-salepriceid="2844" data-price="10000" data-salepricename="성인"
				data-salepricecode="112">
				<option value="0">0 명</option>
				<option value="1">1 명</option>
				<option value="2">2 명</option>
				<option value="3">3 명</option>
				<option value="4">4 명</option>
				<option value="5">5 명</option>
				<option value="6">6 명</option>
				<option value="7">7 명</option>
				<option value="8">8 명</option>
			</select> <span class="kind">청소년</span> <select class="input-select id_2856"
				data-salepriceid="2856" data-price="9000" data-salepricename="청소년"
				data-salepricecode="212">
				<option value="0">0명</option>
				<option value="1">1명</option>
				<option value="2">2명</option>
				<option value="3">3명</option>
				<option value="4">4명</option>
				<option value="5">5명</option>
				<option value="6">6명</option>
				<option value="7">7명</option>
				<option value="8">8명</option>
			</select> <span class="kind">우대</span> <select class="input-select id_142"
				data-salepriceid="142" data-price="5000" data-salepricename="우대"
				data-salepricecode="710" onchange="javascript:specialselected()"
				id="specialsel">
				<option value="0">0명</option>
				<option value="1">1명</option>
				<option value="2">2명</option>
				<option value="3">3명</option>
				<option value="4">4명</option>
				<option value="5">5명</option>
				<option value="6">6명</option>
				<option value="7">7명</option>
				<option value="8">8명</option>
			</select>

		</div>
		<!--.number-info-->

		<div class="wrap-seats">
			<div class="title-head">
				<span class="title-time">20:30</span>
			</div>

			<div class="note">
				안내
				<ul>
					<li><span class="selected"></span>선택좌석</li>
					<li><span class="normal"></span>선택가능</li>
					<li><span class="disabled"></span>선택불가</li>
				</ul>
			</div>

			<div class="map big seatmap">



				<span class="screen">SCREEN</span>

				<ul class="row" data-rowname="A">
					<li class="head">A</li>
					<li><input type="checkbox" class="choose-seat " id="A1"
						value="A1" data-seatgroup="1" data-rowname="A" data-colnumber="1"
						data-seatmapid="858" data-screenid="6" data-screenplanid="641081"><label
						for="A1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="A2"
						value="A2" data-seatgroup="1" data-rowname="A" data-colnumber="2"
						data-seatmapid="898" data-screenid="6" data-screenplanid="641081"><label
						for="A2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="A3"
						value="A3" data-seatgroup="1" data-rowname="A" data-colnumber="3"
						data-seatmapid="899" data-screenid="6" data-screenplanid="641081"><label
						for="A3" class="mini">3</label></li>
					<li><input type="checkbox" class="choose-seat " id="A4"
						value="A4" data-seatgroup="1" data-rowname="A" data-colnumber="4"
						data-seatmapid="900" data-screenid="6" data-screenplanid="641081"><label
						for="A4" class="mini">4</label></li>
					<li><input type="checkbox" class="choose-seat " id="A5"
						value="A5" data-seatgroup="1" data-rowname="A" data-colnumber="5"
						data-seatmapid="901" data-screenid="6" data-screenplanid="641081"><label
						for="A5" class="mini">5</label></li>
					<li><input type="checkbox" class="choose-seat " id="A6"
						value="A6" data-seatgroup="1" data-rowname="A" data-colnumber="6"
						data-seatmapid="902" data-screenid="6" data-screenplanid="641081"><label
						for="A6" class="mini">6</label></li>
					<li><input type="checkbox" class="choose-seat " id="A7"
						value="A7" data-seatgroup="1" data-rowname="A" data-colnumber="7"
						data-seatmapid="903" data-screenid="6" data-screenplanid="641081"><label
						for="A7" class="mini">7</label></li>
					<li><input type="checkbox" class="choose-seat " id="A8"
						value="A8" data-seatgroup="1" data-rowname="A" data-colnumber="8"
						data-seatmapid="904" data-screenid="6" data-screenplanid="641081"><label
						for="A8" class="mini">8</label></li>
					<li></li>
					<li><input type="checkbox" class="choose-seat"
						id="A10" value="A10" data-seatgroup="2" data-rowname="A"
						data-colnumber="10" data-seatmapid="906" data-screenid="6"
						data-screenplanid="641081" accessible=""><label for="A10"
						class="mini">10</label></li>
					<li><input type="checkbox" class="choose-seat"
						id="A11" value="A11" data-seatgroup="2" data-rowname="A"
						data-colnumber="11" data-seatmapid="907" data-screenid="6"
						data-screenplanid="641081" accessible=""><label for="A11"
						class="mini">11</label></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<ul class="row" data-rowname="B">
					<li class="head">B</li>
					<li><input type="checkbox" class="choose-seat " id="B1"
						value="B1" data-seatgroup="1" data-rowname="B" data-colnumber="1"
						data-seatmapid="774" data-screenid="6" data-screenplanid="641081"><label
						for="B1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="B2"
						value="B2" data-seatgroup="1" data-rowname="B" data-colnumber="2"
						data-seatmapid="775" data-screenid="6" data-screenplanid="641081"><label
						for="B2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="B3"
						value="B3" data-seatgroup="1" data-rowname="B" data-colnumber="3"
						data-seatmapid="776" data-screenid="6" data-screenplanid="641081"><label
						for="B3" class="mini">3</label></li>
					<li><input type="checkbox" class="choose-seat " id="B4"
						value="B4" data-seatgroup="1" data-rowname="B" data-colnumber="4"
						data-seatmapid="777" data-screenid="6" data-screenplanid="641081"><label
						for="B4" class="mini">4</label></li>
					<li><input type="checkbox" class="choose-seat " id="B5"
						value="B5" data-seatgroup="1" data-rowname="B" data-colnumber="5"
						data-seatmapid="778" data-screenid="6" data-screenplanid="641081"><label
						for="B5" class="mini">5</label></li>
					<li><input type="checkbox" class="choose-seat " id="B6"
						value="B6" data-seatgroup="1" data-rowname="B" data-colnumber="6"
						data-seatmapid="779" data-screenid="6" data-screenplanid="641081"><label
						for="B6" class="mini">6</label></li>
					<li><input type="checkbox" class="choose-seat " id="B7"
						value="B7" data-seatgroup="1" data-rowname="B" data-colnumber="7"
						data-seatmapid="780" data-screenid="6" data-screenplanid="641081"><label
						for="B7" class="mini">7</label></li>
					<li><input type="checkbox" class="choose-seat " id="B8"
						value="B8" data-seatgroup="1" data-rowname="B" data-colnumber="8"
						data-seatmapid="781" data-screenid="6" data-screenplanid="641081"><label
						for="B8" class="mini">8</label></li>
					<li><input type="checkbox" class="choose-seat " id="B9"
						value="B9" data-seatgroup="1" data-rowname="B" data-colnumber="9"
						data-seatmapid="782" data-screenid="6" data-screenplanid="641081"><label
						for="B9" class="mini">9</label></li>
					<li><input type="checkbox" class="choose-seat " id="B10"
						value="B10" data-seatgroup="1" data-rowname="B"
						data-colnumber="10" data-seatmapid="783" data-screenid="6"
						data-screenplanid="641081"><label for="B10" class="mini">10</label></li>
					<li><input type="checkbox" class="choose-seat " id="B11"
						value="B11" data-seatgroup="1" data-rowname="B"
						data-colnumber="11" data-seatmapid="784" data-screenid="6"
						data-screenplanid="641081"><label for="B11" class="mini">11</label></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<ul class="row" data-rowname="C">
					<li class="head">C</li>
					<li><input type="checkbox" class="choose-seat " id="C1"
						value="C1" data-seatgroup="1" data-rowname="C" data-colnumber="1"
						data-seatmapid="787" data-screenid="6" data-screenplanid="641081"><label
						for="C1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="C2"
						value="C2" data-seatgroup="1" data-rowname="C" data-colnumber="2"
						data-seatmapid="788" data-screenid="6" data-screenplanid="641081"><label
						for="C2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="C3"
						value="C3" data-seatgroup="1" data-rowname="C" data-colnumber="3"
						data-seatmapid="789" data-screenid="6" data-screenplanid="641081"><label
						for="C3" class="mini">3</label></li>
					<li><input type="checkbox" class="choose-seat " id="C4"
						value="C4" data-seatgroup="1" data-rowname="C" data-colnumber="4"
						data-seatmapid="790" data-screenid="6" data-screenplanid="641081"><label
						for="C4" class="mini">4</label></li>
					<li><input type="checkbox" class="choose-seat " id="C5"
						value="C5" data-seatgroup="1" data-rowname="C" data-colnumber="5"
						data-seatmapid="791" data-screenid="6" data-screenplanid="641081"><label
						for="C5" class="mini">5</label></li>
					<li><input type="checkbox" class="choose-seat " id="C6"
						value="C6" data-seatgroup="1" data-rowname="C" data-colnumber="6"
						data-seatmapid="792" data-screenid="6" data-screenplanid="641081"><label
						for="C6" class="mini">6</label></li>
					<li><input type="checkbox" class="choose-seat " id="C7"
						value="C7" data-seatgroup="1" data-rowname="C" data-colnumber="7"
						data-seatmapid="793" data-screenid="6" data-screenplanid="641081"><label
						for="C7" class="mini">7</label></li>
					<li><input type="checkbox" class="choose-seat " id="C8"
						value="C8" data-seatgroup="1" data-rowname="C" data-colnumber="8"
						data-seatmapid="794" data-screenid="6" data-screenplanid="641081"><label
						for="C8" class="mini">8</label></li>
					<li><input type="checkbox" class="choose-seat " id="C9"
						value="C9" data-seatgroup="1" data-rowname="C" data-colnumber="9"
						data-seatmapid="795" data-screenid="6" data-screenplanid="641081"><label
						for="C9" class="mini">9</label></li>
					<li><input type="checkbox" class="choose-seat " id="C10"
						value="C10" data-seatgroup="1" data-rowname="C"
						data-colnumber="10" data-seatmapid="796" data-screenid="6"
						data-screenplanid="641081"><label for="C10" class="mini">10</label></li>
					<li><input type="checkbox" class="choose-seat " id="C11"
						value="C11" data-seatgroup="1" data-rowname="C"
						data-colnumber="11" data-seatmapid="797" data-screenid="6"
						data-screenplanid="641081"><label for="C11" class="mini">11</label></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<ul class="row" data-rowname="D">
					<li class="head">D</li>
					<li><input type="checkbox" class="choose-seat " id="D1"
						value="D1" data-seatgroup="1" data-rowname="D" data-colnumber="1"
						data-seatmapid="800" data-screenid="6" data-screenplanid="641081"><label
						for="D1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="D2"
						value="D2" data-seatgroup="1" data-rowname="D" data-colnumber="2"
						data-seatmapid="801" data-screenid="6" data-screenplanid="641081"><label
						for="D2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="D3"
						value="D3" data-seatgroup="1" data-rowname="D" data-colnumber="3"
						data-seatmapid="802" data-screenid="6" data-screenplanid="641081"><label
						for="D3" class="mini">3</label></li>
					<li><input type="checkbox" class="choose-seat " id="D4"
						value="D4" data-seatgroup="1" data-rowname="D" data-colnumber="4"
						data-seatmapid="803" data-screenid="6" data-screenplanid="641081"><label
						for="D4" class="mini">4</label></li>
					<li><input type="checkbox" class="choose-seat " id="D5"
						value="D5" data-seatgroup="1" data-rowname="D" data-colnumber="5"
						data-seatmapid="804" data-screenid="6" data-screenplanid="641081"><label
						for="D5" class="mini">5</label></li>
					<li><input type="checkbox" class="choose-seat " id="D6"
						value="D6" data-seatgroup="1" data-rowname="D" data-colnumber="6"
						data-seatmapid="805" data-screenid="6" data-screenplanid="641081"><label
						for="D6" class="mini">6</label></li>
					<li><input type="checkbox" class="choose-seat " id="D7"
						value="D7" data-seatgroup="1" data-rowname="D" data-colnumber="7"
						data-seatmapid="806" data-screenid="6" data-screenplanid="641081"><label
						for="D7" class="mini">7</label></li>
					<li><input type="checkbox" class="choose-seat " id="D8"
						value="D8" data-seatgroup="1" data-rowname="D" data-colnumber="8"
						data-seatmapid="807" data-screenid="6" data-screenplanid="641081"><label
						for="D8" class="mini">8</label></li>
					<li><input type="checkbox" class="choose-seat " id="D9"
						value="D9" data-seatgroup="1" data-rowname="D" data-colnumber="9"
						data-seatmapid="808" data-screenid="6" data-screenplanid="641081"><label
						for="D9" class="mini">9</label></li>
					<li><input type="checkbox" class="choose-seat " id="D10"
						value="D10" data-seatgroup="1" data-rowname="D"
						data-colnumber="10" data-seatmapid="809" data-screenid="6"
						data-screenplanid="641081"><label for="D10" class="mini">10</label></li>
					<li><input type="checkbox" class="choose-seat " id="D11"
						value="D11" data-seatgroup="1" data-rowname="D"
						data-colnumber="11" data-seatmapid="810" data-screenid="6"
						data-screenplanid="641081"><label for="D11" class="mini">11</label></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<ul class="row" data-rowname="E">
					<li class="head">E</li>
					<li><input type="checkbox" class="choose-seat " id="E1"
						value="E1" data-seatgroup="1" data-rowname="E" data-colnumber="1"
						data-seatmapid="813" data-screenid="6" data-screenplanid="641081"><label
						for="E1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="E2"
						value="E2" data-seatgroup="1" data-rowname="E" data-colnumber="2"
						data-seatmapid="814" data-screenid="6" data-screenplanid="641081"><label
						for="E2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="E3"
						value="E3" data-seatgroup="1" data-rowname="E" data-colnumber="3"
						data-seatmapid="815" data-screenid="6" data-screenplanid="641081"><label
						for="E3" class="mini">3</label></li>
					<li><input type="checkbox" class="choose-seat " id="E4"
						value="E4" data-seatgroup="1" data-rowname="E" data-colnumber="4"
						data-seatmapid="816" data-screenid="6" data-screenplanid="641081"><label
						for="E4" class="mini">4</label></li>
					<li><input type="checkbox" class="choose-seat " id="E5"
						value="E5" data-seatgroup="1" data-rowname="E" data-colnumber="5"
						data-seatmapid="817" data-screenid="6" data-screenplanid="641081"><label
						for="E5" class="mini">5</label></li>
					<li><input type="checkbox" class="choose-seat " id="E6"
						value="E6" data-seatgroup="1" data-rowname="E" data-colnumber="6"
						data-seatmapid="818" data-screenid="6" data-screenplanid="641081"><label
						for="E6" class="mini">6</label></li>
					<li><input type="checkbox" class="choose-seat " id="E7"
						value="E7" data-seatgroup="1" data-rowname="E" data-colnumber="7"
						data-seatmapid="819" data-screenid="6" data-screenplanid="641081"><label
						for="E7" class="mini">7</label></li>
					<li><input type="checkbox" class="choose-seat " id="E8"
						value="E8" data-seatgroup="1" data-rowname="E" data-colnumber="8"
						data-seatmapid="820" data-screenid="6" data-screenplanid="641081"><label
						for="E8" class="mini">8</label></li>
					<li><input type="checkbox" class="choose-seat " id="E9"
						value="E9" data-seatgroup="1" data-rowname="E" data-colnumber="9"
						data-seatmapid="821" data-screenid="6" data-screenplanid="641081"><label
						for="E9" class="mini">9</label></li>
					<li><input type="checkbox" class="choose-seat " id="E10"
						value="E10" data-seatgroup="1" data-rowname="E"
						data-colnumber="10" data-seatmapid="822" data-screenid="6"
						data-screenplanid="641081"><label for="E10" class="mini">10</label></li>
					<li><input type="checkbox" class="choose-seat " id="E11"
						value="E11" data-seatgroup="1" data-rowname="E"
						data-colnumber="11" data-seatmapid="823" data-screenid="6"
						data-screenplanid="641081"><label for="E11" class="mini">11</label></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<ul class="row" data-rowname="F">
					<li class="head">F</li>
					<li><input type="checkbox" class="choose-seat " id="F1"
						value="F1" data-seatgroup="1" data-rowname="F" data-colnumber="1"
						data-seatmapid="826" data-screenid="6" data-screenplanid="641081"><label
						for="F1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="F2"
						value="F2" data-seatgroup="1" data-rowname="F" data-colnumber="2"
						data-seatmapid="827" data-screenid="6" data-screenplanid="641081"><label
						for="F2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="F3"
						value="F3" data-seatgroup="1" data-rowname="F" data-colnumber="3"
						data-seatmapid="828" data-screenid="6" data-screenplanid="641081"><label
						for="F3" class="mini">3</label></li>
					<li><input type="checkbox" class="choose-seat " id="F4"
						value="F4" data-seatgroup="1" data-rowname="F" data-colnumber="4"
						data-seatmapid="829" data-screenid="6" data-screenplanid="641081"><label
						for="F4" class="mini">4</label></li>
					<li><input type="checkbox" class="choose-seat " id="F5"
						value="F5" data-seatgroup="1" data-rowname="F" data-colnumber="5"
						data-seatmapid="830" data-screenid="6" data-screenplanid="641081"><label
						for="F5" class="mini">5</label></li>
					<li><input type="checkbox" class="choose-seat " id="F6"
						value="F6" data-seatgroup="1" data-rowname="F" data-colnumber="6"
						data-seatmapid="831" data-screenid="6" data-screenplanid="641081"><label
						for="F6" class="mini">6</label></li>
					<li><input type="checkbox" class="choose-seat " id="F7"
						value="F7" data-seatgroup="1" data-rowname="F" data-colnumber="7"
						data-seatmapid="832" data-screenid="6" data-screenplanid="641081"><label
						for="F7" class="mini">7</label></li>
					<li><input type="checkbox" class="choose-seat " id="F8"
						value="F8" data-seatgroup="1" data-rowname="F" data-colnumber="8"
						data-seatmapid="833" data-screenid="6" data-screenplanid="641081"><label
						for="F8" class="mini">8</label></li>
					<li><input type="checkbox" class="choose-seat " id="F9"
						value="F9" data-seatgroup="1" data-rowname="F" data-colnumber="9"
						data-seatmapid="834" data-screenid="6" data-screenplanid="641081"><label
						for="F9" class="mini">9</label></li>
					<li><input type="checkbox" class="choose-seat " id="F10"
						value="F10" data-seatgroup="1" data-rowname="F"
						data-colnumber="10" data-seatmapid="835" data-screenid="6"
						data-screenplanid="641081"><label for="F10" class="mini">10</label></li>
					<li><input type="checkbox" class="choose-seat " id="F11"
						value="F11" data-seatgroup="1" data-rowname="F"
						data-colnumber="11" data-seatmapid="836" data-screenid="6"
						data-screenplanid="641081"><label for="F11" class="mini">11</label></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<ul class="row" data-rowname="G">
					<li class="head">G</li>
					<li><input type="checkbox" class="choose-seat " id="G1"
						value="G1" data-seatgroup="1" data-rowname="G" data-colnumber="1"
						data-seatmapid="839" data-screenid="6" data-screenplanid="641081"><label
						for="G1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="G2"
						value="G2" data-seatgroup="1" data-rowname="G" data-colnumber="2"
						data-seatmapid="840" data-screenid="6" data-screenplanid="641081"><label
						for="G2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="G3"
						value="G3" data-seatgroup="1" data-rowname="G" data-colnumber="3"
						data-seatmapid="841" data-screenid="6" data-screenplanid="641081"><label
						for="G3" class="mini">3</label></li>
					<li><input type="checkbox" class="choose-seat " id="G4"
						value="G4" data-seatgroup="1" data-rowname="G" data-colnumber="4"
						data-seatmapid="842" data-screenid="6" data-screenplanid="641081"><label
						for="G4" class="mini">4</label></li>
					<li><input type="checkbox" class="choose-seat " id="G5"
						value="G5" data-seatgroup="1" data-rowname="G" data-colnumber="5"
						data-seatmapid="843" data-screenid="6" data-screenplanid="641081"><label
						for="G5" class="mini">5</label></li>
					<li><input type="checkbox" class="choose-seat " id="G6"
						value="G6" data-seatgroup="1" data-rowname="G" data-colnumber="6"
						data-seatmapid="844" data-screenid="6" data-screenplanid="641081"><label
						for="G6" class="mini">6</label></li>
					<li><input type="checkbox" class="choose-seat " id="G7"
						value="G7" data-seatgroup="1" data-rowname="G" data-colnumber="7"
						data-seatmapid="845" data-screenid="6" data-screenplanid="641081"><label
						for="G7" class="mini">7</label></li>
					<li><input type="checkbox" class="choose-seat " id="G8"
						value="G8" data-seatgroup="1" data-rowname="G" data-colnumber="8"
						data-seatmapid="846" data-screenid="6" data-screenplanid="641081"><label
						for="G8" class="mini">8</label></li>
					<li><input type="checkbox" class="choose-seat " id="G9"
						value="G9" data-seatgroup="1" data-rowname="G" data-colnumber="9"
						data-seatmapid="847" data-screenid="6" data-screenplanid="641081"><label
						for="G9" class="mini">9</label></li>
					<li><input type="checkbox" class="choose-seat " id="G10"
						value="G10" data-seatgroup="1" data-rowname="G"
						data-colnumber="10" data-seatmapid="848" data-screenid="6"
						data-screenplanid="641081"><label for="G10" class="mini">10</label></li>
					<li><input type="checkbox" class="choose-seat " id="G11"
						value="G11" data-seatgroup="1" data-rowname="G"
						data-colnumber="11" data-seatmapid="849" data-screenid="6"
						data-screenplanid="641081"><label for="G11" class="mini">11</label></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
				<ul class="row" data-rowname="H">
					<li class="head">H</li>
					<li><input type="checkbox" class="choose-seat " id="H1"
						value="H1" data-seatgroup="1" data-rowname="H" data-colnumber="1"
						data-seatmapid="852" data-screenid="6" data-screenplanid="641081"><label
						for="H1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="H2"
						value="H2" data-seatgroup="1" data-rowname="H" data-colnumber="2"
						data-seatmapid="853" data-screenid="6" data-screenplanid="641081"><label
						for="H2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="H3"
						value="H3" data-seatgroup="1" data-rowname="H" data-colnumber="3"
						data-seatmapid="854" data-screenid="6" data-screenplanid="641081"><label
						for="H3" class="mini">3</label></li>
					<li><input type="checkbox" class="choose-seat " id="H4"
						value="H4" data-seatgroup="1" data-rowname="H" data-colnumber="4"
						data-seatmapid="855" data-screenid="6" data-screenplanid="641081"><label
						for="H4" class="mini">4</label></li>
					<li><input type="checkbox" class="choose-seat " id="H5"
						value="H5" data-seatgroup="1" data-rowname="H" data-colnumber="5"
						data-seatmapid="856" data-screenid="6" data-screenplanid="641081"><label
						for="H5" class="mini">5</label></li>
					<li><input type="checkbox" class="choose-seat " id="H6"
						value="H6" data-seatgroup="1" data-rowname="H" data-colnumber="6"
						data-seatmapid="857" data-screenid="6" data-screenplanid="641081"><label
						for="H6" class="mini">6</label></li>
					<li></li>
					<li></li>
					<li><input type="checkbox" class="choose-seat " id="H9"
						value="H9" data-seatgroup="1" data-rowname="H" data-colnumber="9"
						data-seatmapid="860" data-screenid="6" data-screenplanid="641081"><label
						for="H9" class="mini">9</label></li>
					<li><input type="checkbox" class="choose-seat " id="H10"
						value="H10" data-seatgroup="1" data-rowname="H"
						data-colnumber="10" data-seatmapid="861" data-screenid="6"
						data-screenplanid="641081"><label for="H10" class="mini">10</label></li>
					<li><input type="checkbox" class="choose-seat " id="H11"
						value="H11" data-seatgroup="1" data-rowname="H"
						data-colnumber="11" data-seatmapid="862" data-screenid="6"
						data-screenplanid="641081"><label for="H11" class="mini">11</label></li>
					<li></li>
					<li><input type="checkbox" class="choose-seat " id="H12"
						value="H12" data-seatgroup="2" data-rowname="H"
						data-colnumber="12" data-seatmapid="863" data-screenid="6"
						data-screenplanid="641081"><label for="H12" class="mini">12</label></li>
					<li><input type="checkbox" class="choose-seat " id="H13"
						value="H13" data-seatgroup="2" data-rowname="H"
						data-colnumber="13" data-seatmapid="864" data-screenid="6"
						data-screenplanid="641081"><label for="H13" class="mini">13</label></li>
				</ul>
				<ul class="row" data-rowname="I">
					<li class="head">I</li>
					<li><input type="checkbox" class="choose-seat " id="I1"
						value="I1" data-seatgroup="1" data-rowname="I" data-colnumber="1"
						data-seatmapid="865" data-screenid="6" data-screenplanid="641081"><label
						for="I1" class="mini">1</label></li>
					<li><input type="checkbox" class="choose-seat " id="I2"
						value="I2" data-seatgroup="1" data-rowname="I" data-colnumber="2"
						data-seatmapid="866" data-screenid="6" data-screenplanid="641081"><label
						for="I2" class="mini">2</label></li>
					<li><input type="checkbox" class="choose-seat " id="I3"
						value="I3" data-seatgroup="1" data-rowname="I" data-colnumber="3"
						data-seatmapid="867" data-screenid="6" data-screenplanid="641081"><label
						for="I3" class="mini">3</label></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li><input type="checkbox" class="choose-seat " id="I9"
						value="I9" data-seatgroup="1" data-rowname="I" data-colnumber="9"
						data-seatmapid="873" data-screenid="6" data-screenplanid="641081"><label
						for="I9" class="mini">9</label></li>
					<li></li>
					<li><input type="checkbox" class="choose-seat " id="I11"
						value="I11" data-seatgroup="1" data-rowname="I"
						data-colnumber="11" data-seatmapid="875" data-screenid="6"
						data-screenplanid="641081"><label for="I11" class="mini">11</label></li>
					<li></li>
					<li><input type="checkbox" class="choose-seat " id="I12"
						value="I12" data-seatgroup="2" data-rowname="I"
						data-colnumber="12" data-seatmapid="876" data-screenid="6"
						data-screenplanid="641081"><label for="I12" class="mini">12</label></li>
					<li><input type="checkbox" class="choose-seat " id="I13"
						value="I13" data-seatgroup="2" data-rowname="I"
						data-colnumber="13" data-seatmapid="877" data-screenid="6"
						data-screenplanid="641081"><label for="I13" class="mini">13</label></li>
				</ul>
			</div>

		</div>
		<!--.wrap-seats-->

		<div class="seats-control">
			좌석 붙임 <label class="input-seat input-radio" style="display: none;"><input
				name="seat" value="1" checked="" type="radio">
			<div class="input-indicator"></div>
				<span class="input-seat-block"></span></label> <label
				class="input-seat input-radio" style="display: none;"><input
				name="seat" value="2" type="radio">
			<div class="input-indicator"></div>
				<span class="input-seat-block"></span><span class="input-seat-block"></span></label>
			<label class="input-seat input-radio" style="display: none;"><input
				name="seat" value="3" type="radio">
			<div class="input-indicator"></div>
				<span class="input-seat-block"></span><span class="input-seat-block"></span><span
				class="input-seat-block"></span></label> <label
				class="input-seat input-radio" style="display: none;"><input
				name="seat" value="4" type="radio">
			<div class="input-indicator"></div>
				<span class="input-seat-block"></span><span class="input-seat-block"></span><span
				class="input-seat-block"></span><span class="input-seat-block"></span></label>

			<div class="right">
				<a href="#" class="btn-reset-seats">다시선택</a> <span class="status">선택인원
					<span class="number-chosen">0</span> / <span class="number-want">0</span>명
				</span>
			</div>
			<!--.right-->
		</div>
		<!--.seats-control-->
	</div>
	<!--.section-pop-theater-->

	<div class="section-pop-bottom">
		<div class="wrap-rsv-select">
			<a href="#" class="btn-rsv-cancel2">이전</a> <a href="#"
				class="btn-rsv-next2">다음</a>
		</div>
	</div>

	<a class="close-modal" href="#">Close</a>
</div>