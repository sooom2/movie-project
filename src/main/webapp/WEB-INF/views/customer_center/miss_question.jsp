<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet"> <!-- 상단 -->
<link href="resources/css/sub.css" rel="stylesheet"> <!-- 본문 -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<link href="resources/css/main.css" rel="stylesheet">
<body>
	<jsp:include page="../nav.jsp" />
		<div class="container has-lnb">
	
			<div class="inner-wrap">
				<jsp:include page="lnb-area.jsp" />	
				<div id="contents">
					<h2 class="tit">분실물 문의</h2>
	
					<div class="clearfix">
						<ul class="dot-list">
							<li>
								메가박스에서 잃어버린 물건이 있다면 ‘분실물 문의/접수’를 통해 접수해주세요.
								<a href="/support/lost/form" class="button float-r" title="분실물 문의 등록하기">분실물 문의</a>
							</li>
							<li>접수하신 글은 비밀글로 등록되어 작성자와 관리자만 확인 가능합니다.</li>
						</ul>
					</div>
	
					<div class="board-list-util">
						<p class="result-count"><strong>전체 <span id="totalCnt" class="font-gblue">8,608</span>건</strong></p>
	
						<div class="dropdown bootstrap-select bs3"><select id="theater" title="지역 선택" class="selectpicker" tabindex="-98"><option class="bs-title-option" value=""></option>
							<option value="">지역 선택</option>
							
								<option value="10">서울</option>
							
								<option value="30">경기</option>
							
								<option value="35">인천</option>
							
								<option value="45">대전/충청/세종</option>
							
								<option value="55">부산/대구/경상</option>
							
								<option value="65">광주/전라</option>
							
								<option value="70">강원</option>
							
								<option value="80">제주</option>
							
						</select><button type="button" class="btn dropdown-toggle btn-default bs-placeholder" data-toggle="dropdown" role="button" data-id="theater" title="지역 선택"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">지역 선택</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>
	
						<div class="dropdown bootstrap-select disabled ml07 bs3"><select id="theater02" title="극장 선택" class="selectpicker ml07" disabled="disabled" tabindex="-98"><option class="bs-title-option" value=""></option>
							<option value="">극장 선택</option>
							
						</select><button type="button" class="btn dropdown-toggle disabled btn-default bs-placeholder" data-toggle="dropdown" role="button" data-id="theater02" tabindex="-1" aria-disabled="true" title="극장 선택"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">극장 선택</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>
	
						<div class="dropdown bootstrap-select ml07 bs3"><select id="custInqStatCd" class="selectpicker ml07" tabindex="-98">
							<option value="">접수상태 선택</option>
							
								
									<option value="INQST1">미답변</option>
								
							
								
									<option value="INQST2">답변완료</option>
								
							
								
							
								
							
								
							
						</select><button type="button" class="btn dropdown-toggle btn-default bs-placeholder" data-toggle="dropdown" role="button" data-id="custInqStatCd" title="접수상태 선택"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">접수상태 선택</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>
	
						<div class="board-search">
							<input type="text" id="searchTxt" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요." class="input-text" value="">
							<button type="button" id="searchBtn" class="btn-search-input">검색</button>
						</div>
					</div>
	
					<div class="table-wrap">
						<table class="board-list">
							<caption>번호, 극장, 구분, 제목, 등록일이 들어간 공지사항 전체 리스트</caption>
							<colgroup>
								<col style="width:72px;">
								<col style="width:133px;">
								<col>
								<col style="width:100px;">
								<col style="width:116px;">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">극장</th>
									<th scope="col">제목</th>
									<th scope="col">접수상태</th>
									<th scope="col">등록일</th>
								</tr>
							</thead>
							<tbody><tr><td>8608</td><td>이수</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600414" data-no="9555810" title="분실물 문의 상세보기">분실물</a></th><td>미답변</td><td>2023.04.01</td></tr><tr><td>8607</td><td>목동</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600407" title="분실물 문의 상세보기">분실물 문의</a></th><td>미답변</td><td>2023.04.01</td></tr><tr><td>8606</td><td>대전중앙로</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600398" data-no="11393103" title="분실물 문의 상세보기">분실물 문의</a></th><td>미답변</td><td>2023.04.01</td></tr><tr><td>8605</td><td>더 부티크 목동현대백화점</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600377" data-no="12466915" title="분실물 문의 상세보기">분실물 문의</a></th><td>미답변</td><td>2023.04.01</td></tr><tr><td>8604</td><td>전대(광주)</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600370" title="분실물 문의 상세보기">분실물</a></th><td>미답변</td><td>2023.04.01</td></tr><tr><td>8603</td><td>여수웅천</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600369" data-no="3819808" title="분실물 문의 상세보기">분실물 문의</a></th><td>미답변</td><td>2023.04.01</td></tr><tr><td>8602</td><td>영통</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600361" data-no="11730623" title="분실물 문의 상세보기">검정색 스마트폴터(학생용) 핸드폰</a></th><td>미답변</td><td>2023.04.01</td></tr><tr><td>8601</td><td>대전중앙로</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600357" data-no="13278069" title="분실물 문의 상세보기">에어팟</a></th><td>답변완료</td><td>2023.04.01</td></tr><tr><td>8600</td><td>속초</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600355" title="분실물 문의 상세보기">에어팟 분실</a></th><td>미답변</td><td>2023.04.01</td></tr><tr><td>8599</td><td>대구신세계(동대구)</td><th scope="row"><a href="#layer-01" class="btn-layer-open moveBtn" data-sn="600322" title="분실물 문의 상세보기">분실물 문의입니다. </a></th><td>미답변</td><td>2023.04.01</td></tr></tbody>
						</table>
					</div>
	
					<section id="layer-01" class="layer-popup" style="top: 31px; left: 304.5px; width: 500px; height:300px; opacity: 1; display: none;">
						<div class="wrap">
							<header class="layer-header">
								<h3 class="tit">
									비밀번호 입력
								</h3>
							</header>
	
							<div class="layer-con">
								<p>글 작성시 입력한 비밀번호를 입력해주세요.</p>
								<div class="box-gray a-c">
									<input type="password" id="password" title="비밀번호 입력" class="input-text w250px">
									<p class="font-red mt10 mb0">비밀번호가 일치하지 않습니다. 다시 입력해주세요.</p>
								</div>
								<div class="btn-group">
									<a href="#" class="button small lyclose" id="cancelBtn" title="취소">취소</a>
									<a href="#" class="button small purple" id="chkBtn" title="확인">확인</a>
								</div>
							</div>
	
							<button type="button" class="btn-layer-close">레이어 닫기</button>
						</div>
					</section>
	
					<!-- pagination -->
					<nav class="pagination"><strong class="active">1</strong> <a title="2페이지보기" href="javascript:void(0)" pagenum="2">2</a> <a title="3페이지보기" href="javascript:void(0)" pagenum="3">3</a> <a title="4페이지보기" href="javascript:void(0)" pagenum="4">4</a> <a title="5페이지보기" href="javascript:void(0)" pagenum="5">5</a> <a title="6페이지보기" href="javascript:void(0)" pagenum="6">6</a> <a title="7페이지보기" href="javascript:void(0)" pagenum="7">7</a> <a title="8페이지보기" href="javascript:void(0)" pagenum="8">8</a> <a title="9페이지보기" href="javascript:void(0)" pagenum="9">9</a> <a title="10페이지보기" href="javascript:void(0)" pagenum="10">10</a> <a title="이후 10페이지 보기" href="javascript:void(0)" class="control next" pagenum="11">next</a> <a title="마지막 페이지 보기" href="javascript:void(0)" class="control last" pagenum="861">last</a> </nav>
					<!--// pagination -->
				</div>
			</div>
		</div>
	<jsp:include page="../footer.jsp"/>
</body>
</html>