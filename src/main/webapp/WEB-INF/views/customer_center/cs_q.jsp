<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path }/css/common.css" rel="stylesheet">

<link href="${path }/css/cs.css" rel="stylesheet">
<link href="${path }/css/inc.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${path}/js/main.js"></script>
<script type="text/javascript">
	$(function() {
		
		
		$('#searchBtn').on('click', function() {
			alert("Dddd");
			$('#idx').val(1);
			$('.tab-block li.on').removeClass('on');
			$('.tab-block li').eq(0).addClass('on');

			fn_selectList($('.on .tabBtn').data('no'));
		});

		// 검색 엔터키
		$('#searchTxt').on('keydown', function(e) {
			if(e.keyCode == 13) {
				$('#searchBtn').click();
			}
		});

		// 상단탭 클릭
		$('.tabBtn').on('click', function() {
			var no = $(this).data('no');

			$('#idx').val(1);

			fn_selectList($(this).data('no'));
		});

		// 빠른 검색
		$('.keyword').on('click', function() {
			$('#searchTxt').val($(this).text());
			$('.on .tabBtn').parent().removeClass('on');
			$('.tabBtn').eq(0).parent().addClass('on');

			$('#idx').val(1);

			fn_selectList();
		});

		fn_selectList();


	});
</script>
</head>
<body>
	<jsp:include page="../nav.jsp" />
	<input type="hidden" id="idx" value="">
	<input type="hidden" name="currentPage" value="1">
	<div class="container has-lnb">
		<div class="inner-wrap">
			<div class="lnb-area addchat">
				<nav id="lnb" class="ty2">
					<p class="tit">
						<a href="" title="고객센터">고객센터</a>
					</p>
					<ul>
						<li><a href="" title="고객센터 홈">고객센터 홈</a></li>
						<li class="on"><a href="/support/faq" title="자주 묻는 질문">자주
								묻는 질문</a></li>
						<li><a href="" title="공지사항">공지사항</a></li>
						<li><a href="" title="1:1문의">1:1문의</a></li>
						<li><a href="" title="단체관람 및 대관문의">단체관람 및
								대관문의</a></li>
						<li><a href="" title="분실물 문의">분실물 문의</a></li>

						<li><a href="" title="비회원 문의내역">비회원
								문의내역</a></li>

						<li><a href="" title="이용약관">이용약관</a></li>
						<li><a href="" title="위치기반서비스이용약관">위치기반서비스이용약관</a></li>
						<li><a href="" title="개인정보처리방침">개인정보처리방침</a></li>
						<li><a href=""
							style="border-radius: 0 0 10px 10px;" title="스크린배정수에관한기준">스크린배정수에관한기준</a></li>
					</ul>

					<!-- 고객센터 메뉴일때만 출력 -->
					<div class="left-customer-info">
						<p class="tit">
							메가박스 고객센터 <span>Dream center</span>
						</p>
						<p class="time">
							<i class="iconset ico-clock"></i> 10:00~19:00
						</p>
					</div>
				</nav>
			</div>

			<div id="contents" class="">
				<h2 class="tit">자주 묻는 질문</h2>

				<!-- input-search-area -->
				<div class="input-search-area mb30">
					<div class="input-area">
						<label for="search01" class="label">빠른검색</label>

						<!-- 2019-01-21 검색 부분 변경 -->
						<div class="board-search w460px">
							<input type="search" id="searchTxt" title="검색어를 입력해 주세요."
								placeholder="검색어를 입력해 주세요." class="input-text" value=""
								maxlength="15">
							<button type="button" id="searchBtn" class="btn-search-input">검색</button>
						</div>
						<!--// 2019-01-21 검색 부분 변경 -->
					</div>

					<div class="btn-area"></div>
				</div>
				<!--// input-search-area -->

				<!-- 2019-01-15 : 마크업 변경 -->
				<div class="tab-block small mb30">
					<ul>
						<li class="on"><button type="button" class="btn tabBtn"
								id="totalTab" data-no="" title="전체">전체</button></li>




						<li><button type="button" class="btn tabBtn" data-no="88"
								data-nm="영화예매" title="영화예매">영화예매</button></li>
						<!-- (13) -->



						<li><button type="button" class="btn tabBtn" data-no="89"
								data-nm="할인혜택" title="할인혜택">할인혜택</button></li>
						<!-- (3) -->



						<li><button type="button" class="btn tabBtn" data-no="90"
								data-nm="결제수단/관람권" title="결제수단/관람권">결제수단/관람권</button></li>
						<!-- (6) -->



						<li><button type="button" class="btn tabBtn" data-no="91"
								data-nm="멤버십" title="멤버십">멤버십</button></li>
						<!-- (13) -->



						<li><button type="button" class="btn tabBtn" data-no="92"
								data-nm="VIP" title="VIP">VIP</button></li>
						<!-- (4) -->



						<li><button type="button" class="btn tabBtn" data-no="93"
								data-nm="극장" title="극장">극장</button></li>
						<!-- (7) -->



						<li><button type="button" class="btn tabBtn" data-no="94"
								data-nm="특별관" title="특별관">특별관</button></li>
						<!-- (1) -->



						<li><button type="button" class="btn tabBtn" data-no="95"
								data-nm="스토어" title="스토어">스토어</button></li>
						<!-- (6) -->



						<li><button type="button" class="btn tabBtn" data-no="96"
								data-nm="홈페이지/모바일" title="홈페이지/모바일">홈페이지/모바일</button></li>
						<!-- (11) -->



					</ul>

					<input type="hidden" id="bbsTotalCnt" value="64">
				</div>
				<!--// 2019-01-15 : 마크업 변경 -->

				<!--// tab-block -->
				<div class="faq-list-box">
					<p class="reset mb10">
						<strong><span id="totalTitle">전체</span> <span
							class="font-green" id="totalCnt">0</span>건</strong>
					</p>

					<div class="faq-list">

						<!-- 숨겨져있는 큐엔에이 -->
						<ul>
							<li>
							<div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">1. [영화예매]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>인<span class="font-green"></span>터<span
												class="font-green"></span>넷<span class="font-green"></span>
											<span class="font-green"></span>예<span class="font-green"></span>매<span
												class="font-green"></span>시<span class="font-green"></span>
											<span class="font-green"></span>부<span class="font-green"></span>분<span
												class="font-green"></span>환<span class="font-green"></span>불<span
												class="font-green"></span>/<span class="font-green"></span>교<span
												class="font-green"></span>환<span class="font-green"></span>이<span
												class="font-green"></span> <span class="font-green"></span>가<span
												class="font-green"></span>능<span class="font-green"></span>한<span
												class="font-green"></span>가<span class="font-green"></span>요<span
												class="font-green"></span>?<span class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
									<p>
										<span style="font-size: 12px">인터넷 예매시에는 예매매수의 전체환불 및
											교환만 가능합니다.&nbsp;<br> 인터넷 예매분에 대해 교환환불 및 취소하고자 하실 경우,
											예매하신 내역 전체에 대해 취소 후<br> 새로 예매를 하시거나 해당 영화관을 방문하셔서 처리하셔야
											합니다.&nbsp;
										</span>
									</p>

									<p>
										<span style="font-size: 12px">1) 인터넷상 취소 가능시간 (상영시간
											20분전까지만 가능)&nbsp;<br> &nbsp;- 전체 취소가능하며, 부분 취소 불가<br>
											&nbsp;EX) 인원수, 관람자, 시간변경은 모두 취소 후 재예매 해주셔야합니다.
										</span><br> <br> <span style="font-size: 12px">2) 현장
											취소 가능시간(상영시간&nbsp;전까지만 가능)&nbsp;<br> &nbsp; - 전체환불 및
											교환가능<br> &nbsp;단, 부분환불 및 교환은 사용하신 카드로 전체 취소 후 재결제하셔야
											합니다.
										</span>
									</p>
									</p>
								</div></li>
								
								
								
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">2. [극장]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>A<span class="font-green"></span>R<span
												class="font-green"></span>S<span class="font-green"></span>
											<span class="font-green"></span>이<span class="font-green"></span>용<span
												class="font-green"></span>안<span class="font-green"></span>내<span
												class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										<strong>◆ 전화로 상담하는 ARS</strong><br> 사용하시는 휴대폰 또는 유선전화로
										ARS서비스를 받으실 수 있습니다. 상담 가능한 시간을 확인 하신 후 이용해 주세요.<br> <strong>-
											고객센터 운영시간 : 10:00~19:00</strong><br> - 전국 어디서나 지역번호없이 1544-0070을
										이용하시면 고객센터 및 ARS를 통하여 문의를 할 수 있습니다.<br> &nbsp; * ARS서비스의
										경우 유료이며, 발신자 부담으로 통화료가 부과됩니다.<br> &nbsp; * ARS상담원 연결이
										지연되는 경우 상담톡으로 문의주시면 빠르게 안내드립니다.<br> <br> <strong>◇
											상담톡&nbsp;&nbsp;</strong><u><strong><a href="https://m.megabox.co.kr/support"><span style="color: #cc0000">▷바로가기</span></a></strong></u><br> 궁금한 내용을 챗봇이 바로
										알려주고, 추가 문의는 상담원과 채팅으로!<br> 전화보다 빠르고 간편하게 채팅으로 상담톡
										문의가능합니다.<br> <br> <strong>◇ 1:1
											문의하기&nbsp;&nbsp;</strong><u><strong><a href="https://www.megabox.co.kr/support/inquiry"><span style="color: #3300cc">▷바로가기</span></a></strong></u><br> 고객센터 및 극장별
										궁금하신 사항이 있으시면 문의글로&nbsp;남겨주시면 답변 드리겠습니다.<br> <br> <strong>◆
											ARS 서비스내용 및 단축번호</strong>
									<table cellspacing="0" class="Table"
										style="border-collapse: collapse; width: 100%">
										<tbody>
											<tr>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: 1px solid #bfbfbf; border-right: 1px solid #bfbfbf; border-top: 3px solid #bfbfbf; height: 18px; padding: 5px 10px 5px 10px; width: 43%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>0. 상담톡 연결</span></span></span></td>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: none; border-right: 1px solid #bfbfbf; border-top: 3px solid #bfbfbf; height: 18px; padding: 5px 10px 5px 10px; width: 56%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>①알림톡 발송</span></span></span></td>
											</tr>
											<tr>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: 1px solid #bfbfbf; border-right: 1px solid #bfbfbf; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 43%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>1. 극장이용 및
																주차안내</span></span></span></td>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: none; border-right: 1px solid #bfbfbf; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 56%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>지점선택 → </span></span><span
														style="line-height: 107%"><span
															style="font-family:" 맑은="" 고딕""="">ⓞ</span></span></span><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>상담원연결</span></span></span></td>
											</tr>
											<tr>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: 1px solid #bfbfbf; border-right: 1px solid #bfbfbf; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 43%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>2. 분실물 문의</span></span></span></td>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: none; border-right: 1px solid #bfbfbf; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 56%"><span
													style="font-size: 10pt"><span
														style="line-height: 107%"><span
															style="font-family:" 맑은="" 고딕""="">ⓞ</span></span></span><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>상담원연결</span></span></span></td>
											</tr>
											<tr>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: 1px solid #bfbfbf; border-right: 1px solid #bfbfbf; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 43%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>3. 단체관람 및
																대관문의</span></span></span></td>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: none; border-right: 1px solid #bfbfbf; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 56%"><span
													style="font-size: 10pt"><span
														style="line-height: 107%"><span
															style="font-family:" 맑은="" 고딕""="">ⓞ</span></span></span><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>상담원연결</span></span></span></td>
											</tr>
											<tr>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: 1px solid #bfbfbf; border-right: 1px solid #bfbfbf; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 43%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>4. 메가박스문의</span></span></span></td>
												<td
													style="border-bottom: 1px solid #bfbfbf; border-left: none; border-right: 1px solid #bfbfbf; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 56%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>①할인 ②멤버십
																③이벤트 ④기타</span></span></span></td>
											</tr>
											<tr>
												<td
													style="border-bottom: 3px solid #bfbfbf; border-left: 1px solid #bfbfbf; border-right: 1px solid #bfbfbf; border-top: none; height: .12px; padding: 5px 10px 5px 10px; width: 43%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>5. 더부티크
																프라이빗 안내</span></span></span></td>
												<td
													style="border-bottom: 3px solid #bfbfbf; border-left: none; border-right: 1px solid #bfbfbf; border-top: none; height: .12px; padding: 5px 10px 5px 10px; width: 56%"><span
													style="font-size: 10pt"><span
														style="line-height: normal"><span>①예약문의</span></span></span></td>
											</tr>
											<tr>
												<td colspan="2"
													style="border-bottom: none; border-left: none; border-right: none; border-top: none; height: 18px; padding: 5px 10px 5px 10px; width: 100%"><span
													style="font-size: 10pt"><span
														style="line-height: 107%"><span>- 다시듣기 :
																*&nbsp;,&nbsp;이전단계, 초기단계&nbsp;: #</span></span></span></td>
											</tr>
										</tbody>
									</table>
									</p>
								</div></li>
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">3. [홈페이지/모바일]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>이<span class="font-green"></span>름<span
												class="font-green"></span>을<span class="font-green"></span>
											<span class="font-green"></span>개<span class="font-green"></span>명<span
												class="font-green"></span>했<span class="font-green"></span>는<span
												class="font-green"></span>데<span class="font-green"></span>
											<span class="font-green"></span>어<span class="font-green"></span>디<span
												class="font-green"></span>서<span class="font-green"></span>
											<span class="font-green"></span>바<span class="font-green"></span>꾸<span
												class="font-green"></span>나<span class="font-green"></span>요<span
												class="font-green"></span>?<span class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										<span style="font-size: 14px">홈페이지 및 어플 회원 로그인 후 [나의
											메가박스] - [개인정보 수정]에서 [이름변경]을 선택하여주시면<br> 휴대폰 본인인증 또는 아이핀
											인증을 통해 변경 가능합니다.<br> <br> 만약, 고객님께서 이름변경(개명)이
											완료되었으나 위의 방법으로 이름 변경이 되지않는다면<br> 실명인증기관에 개명된 이름이 등록되어
											있지않은 경우 입니다.<br> <br> 이러한 경우 실명확인을 위해 실명인증기관에 접속하셔서
											변경된 본인의 실명을 등록하셔야합니다.<br> <a
											href="https://www.siren24.com/mysiren/main/main.jsp">▶서울신용평가정보(주)</a><br>
											<a
											href="https://www.niceid.co.kr/name_guid.nc?menu_num=1&amp;page_num=0&amp;page_num_1=1">▶한국신용평가정보(주)</a>
										</span>
									</p>
								</div></li>
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">4. [VIP]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>회<span class="font-green"></span>원<span
												class="font-green"></span> <span class="font-green"></span>등<span
												class="font-green"></span>급<span class="font-green"></span>
											<span class="font-green"></span>조<span class="font-green"></span>정<span
												class="font-green"></span> <span class="font-green"></span>기<span
												class="font-green"></span>간<span class="font-green"></span>
											<span class="font-green"></span>동<span class="font-green"></span>안<span
												class="font-green"></span>의<span class="font-green"></span>
											<span class="font-green"></span>관<span class="font-green"></span>람<span
												class="font-green"></span> <span class="font-green"></span>실<span
												class="font-green"></span>적<span class="font-green"></span>은<span
												class="font-green"></span> <span class="font-green"></span>어<span
												class="font-green"></span>떻<span class="font-green"></span>게<span
												class="font-green"></span> <span class="font-green"></span>반<span
												class="font-green"></span>영<span class="font-green"></span>되<span
												class="font-green"></span>나<span class="font-green"></span>요<span
												class="font-green"></span>?<span class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										회원 등급 조정은 매월 10일 경 진행되며,<br> <br> 매월 1일부터 등급 조정 완료
										전까지 등급 조정 기간 동안&nbsp;<br> 예매 및 관람한 내역은 아래와 같이 회원 등급 실적에
										반영됩니다.<br> <br> 1. 다음 등급 산정 및 VIP 스탬프 이벤트에 반영됩니다.<br>
										<br> 2. VIP 포인트 추가 적립은 승급 전 등급 (예매 완료 시점 등급)에 따라 적용됩니다.<br>
										&nbsp;<br> &nbsp; -&nbsp; VIP로 승급 예정인 "승급 전 일반/프렌즈 등급"
										회원이 조정 기간 동안 관람한 영화에 대해서는<br> <br> &nbsp; &nbsp;
										&nbsp;포인트 추가 적립 제외됩니다<br> <br> &nbsp; - 신규로 VIP로
										진입하는 경우, VIP 추가 적립은 등급 조정 완료 후 예매 건 부터 반영됩니다.<br> &nbsp;<br>
										&nbsp; - 일반 / 프렌즈 등급일 때 예매 완료한 영화를 VIP 승급 후 관람하더라도, 기본 적립만
										반영되며<br> <br> &nbsp; &nbsp; VIP 추가 적립은 제외됩니다. (승급 완료
										이후, 기존 예매 취소하고 다시 예매하면 VIP 적립 적용)<br> <br> &nbsp; -
										기존 등급이 VIP 이상이고, 등급 조정 후에도 VIP 이상인 경우라면<br> <br>
										&nbsp; &nbsp; 예매 시점 기준 VIP 회원이므로 포인트 추가 적립 적용됩니다.<br> <br>
										&nbsp;&nbsp;
									</p>
								</div></li>
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">5. [영화예매]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>국<span class="font-green"></span>가<span
												class="font-green"></span>유<span class="font-green"></span>공<span
												class="font-green"></span>자<span class="font-green"></span>
											<span class="font-green"></span>혜<span class="font-green"></span>택<span
												class="font-green"></span>은<span class="font-green"></span>
											<span class="font-green"></span>어<span class="font-green"></span>떻<span
												class="font-green"></span>게<span class="font-green"></span>
											<span class="font-green"></span>되<span class="font-green"></span>나<span
												class="font-green"></span>요<span class="font-green"></span>?<span
												class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										현장에서 <strong>[국가유공자증]을 소지한 본인 외 동반 1인까지 우대발권</strong> 가능합니다.<br>
										<br> ※ 영화 관람시 [국가유공자증]을 반드시 지참하여 영화관 방문부탁드리며,&nbsp;<br>
										증빙서류를 미지참 하실 경우 혜택을 받으실 수 없는 점 참고부탁드립니다.<br> <br> -
										우대관람 가격의 경우 극장마다 상이할 수 있으며, 관람하실 극장의 관람료를 확인부탁드립니다.<br> -
										국가유공자증을 소지한 본인 포함 영화관람시에만 동반 1인의 혜택 적용이 가능합니다.<br> <br>
										&lt; 증빙서류 : 국가유공자증 &gt;<br> <img alt=""
											src="\SharedImg\editorImg\2022\05\30\nsYdh1yXZU332NUfC4jhR0Y0R5wVpKXA.jpg"
											style="width: 100%;">
									</p>
								</div></li>
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">[결제수단/관람권]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>멤<span class="font-green"></span>버<span
												class="font-green"></span>십<span class="font-green"></span>에<span
												class="font-green"></span> <span class="font-green"></span>등<span
												class="font-green"></span>록<span class="font-green"></span>한<span
												class="font-green"></span> <span class="font-green"></span>영<span
												class="font-green"></span>화<span class="font-green"></span>관<span
												class="font-green"></span>람<span class="font-green"></span>권<span
												class="font-green"></span> <span class="font-green"></span>삭<span
												class="font-green"></span>제<span class="font-green"></span>는<span
												class="font-green"></span> <span class="font-green"></span>어<span
												class="font-green"></span>떻<span class="font-green"></span>게<span
												class="font-green"></span> <span class="font-green"></span>하<span
												class="font-green"></span>나<span class="font-green"></span>요<span
												class="font-green"></span>?<span class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										메가박스 홈페이지 또는 앱에서 로그인 후 등록취소가능 합니다.<br> <br> [나의
										메가박스] - [영화관람권] - [X 클릭] or [삭제 선택]으로<br> 멤버십 계정에 등록된
										관람권을 삭제할 수 있습니다.<br> <br> '멤버십등록이 삭제된 영화관람권'은 메가박스
										웹, 앱에서 재등록 후 이용할 수 있으며,<br> 무인발권기에서는 관람권번호 12자리와 인증번호
										4자리로 사용가능합니다.&nbsp;<br> <strong>삭제 된 번호는 재확인이
											불가능하오니 삭제 전 관람권 번호를 꼭! 확인해주세요.</strong>
									</p>
								</div></li>
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">[극장]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>오<span class="font-green"></span>리<span
												class="font-green"></span>지<span class="font-green"></span>널<span
												class="font-green"></span> <span class="font-green"></span>티<span
												class="font-green"></span>켓<span class="font-green"></span>
											<span class="font-green"></span>및<span class="font-green"></span>
											<span class="font-green"></span>특<span class="font-green"></span>전<span
												class="font-green"></span> <span class="font-green"></span>수<span
												class="font-green"></span>량<span class="font-green"></span>
											<span class="font-green"></span>안<span class="font-green"></span>내<span
												class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										<span style="line-height: 107%">안녕하세요.&nbsp;</span><span
											style="line-height: 107%">메가박스 입니다.</span><br> <br>
										<span style="line-height: 107%">기존 특전관련 잔여&nbsp;</span><span
											style="line-height: 107%">수량에 대한 안내가 되었습니다만,</span><br>
										<span style="line-height: 107%">고객님의 많은 관심과 성원으로 지점별 현황
											파악이&nbsp;원활 하지 않아&nbsp;</span><br> <span
											style="line-height: 107%">20년 8월 13일부로<br> <strong>드림센터에서는
												오리지널 티켓과 영화 특전의 </strong></span><strong><span
											style="line-height: 107%">지점별 수량에 관한 정보를 제공하지 않습니다.</span></strong><br>
										<span style="line-height: 107%">번거로우시겠지만 고객님께서는 지점 방문 후
											확인 부탁드립니다.</span><br> <br> <span style="line-height: 107%">항상
											메가박스를 이용해 주셔서 감사합니다.</span><br> <br> &nbsp;
									</p>
								</div></li>
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">[홈페이지/모바일]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>휴<span class="font-green"></span>면<span
												class="font-green"></span>계<span class="font-green"></span>정<span
												class="font-green"></span>이<span class="font-green"></span>라<span
												class="font-green"></span>고<span class="font-green"></span>
											<span class="font-green"></span>하<span class="font-green"></span>는<span
												class="font-green"></span>데<span class="font-green"></span>
											<span class="font-green"></span>어<span class="font-green"></span>떻<span
												class="font-green"></span>게<span class="font-green"></span>
											<span class="font-green"></span>복<span class="font-green"></span>구<span
												class="font-green"></span> <span class="font-green"></span>하<span
												class="font-green"></span>나<span class="font-green"></span>요<span
												class="font-green"></span>?<span class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										<span style="font-size: 14px;">개인정보 보호에 대한 관계 법령에 의거하여,<br>
											서비스를 1년이상 이용하지 않은 고객은 휴면상태로 전환됩니다.<br> <br> 휴면계정으로
											전환된 고객의 경우 홈페이지 및 어플 로그인 후 본인 인증 또는<br> [ID/PW 찾기]에서 본인
											인증으로 찾기 시도시 활동 계정으로 변경됩니다.<br> <br> 휴면계정 복구는 1년 동안
											가능하며 경과 시 탈퇴처리 되며 개인정보는 파기됩니다.
										</span>
									</p>
								</div></li>
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">[영화예매]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>영<span class="font-green"></span>화<span
												class="font-green"></span> <span class="font-green"></span>예<span
												class="font-green"></span>매<span class="font-green"></span>
											<span class="font-green"></span>시<span class="font-green"></span>
											<span class="font-green"></span>메<span class="font-green"></span>가<span
												class="font-green"></span>박<span class="font-green"></span>스<span
												class="font-green"></span> <span class="font-green"></span>포<span
												class="font-green"></span>인<span class="font-green"></span>트<span
												class="font-green"></span> <span class="font-green"></span>선<span
												class="font-green"></span>택<span class="font-green"></span>이<span
												class="font-green"></span> <span class="font-green"></span>되<span
												class="font-green"></span>지<span class="font-green"></span>않<span
												class="font-green"></span>아<span class="font-green"></span>요<span
												class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										<span style="font-size: 14px">적립된 포인트는 사용 가능한 포인트 내에서
											상품 정가 전액 기준으로 사용 가능합니다.<br> <br> ▶신포인트<br>
											&nbsp; - 사용 가능 요일 : 월~일요일(요일 무관)<br> &nbsp; - 차감 포인트 :
											티켓 정가 100%<br> <br> ※ 포인트는 현금 또는 신용카드 등 다른 결제 수단과
											합산하여 사용할 수 없습니다.<br> ※ 특별콘텐트(오페라, 팝콘클래식, 기획전, GV, 라이브중계
											등)의 경우 포인트로 관람이 불가합니다.<br> ※ 더 부티크 프라이빗 관람시 포인트 사용이
											불가합니다.
										</span>
									</p>
								</div></li>
							<li><div class="qut">
									<a href="#"><p class="tit">
											<span class="font-green">[VIP]</span>
										</p>
										<p class="txt">
											<span class="font-green"></span>매<span class="font-green"></span>점<span
												class="font-green"></span> <span class="font-green"></span>상<span
												class="font-green"></span>품<span class="font-green"></span>
											<span class="font-green"></span>구<span class="font-green"></span>매<span
												class="font-green"></span> <span class="font-green"></span>후<span
												class="font-green"></span> <span class="font-green"></span>적<span
												class="font-green"></span>립<span class="font-green"></span>한<span
												class="font-green"></span> <span class="font-green"></span>포<span
												class="font-green"></span>인<span class="font-green"></span>트<span
												class="font-green"></span>도<span class="font-green"></span>
											<span class="font-green"></span>V<span class="font-green"></span>I<span
												class="font-green"></span>P<span class="font-green"></span>
											<span class="font-green"></span>선<span class="font-green"></span>정<span
												class="font-green"></span>시<span class="font-green"></span>
											<span class="font-green"></span>포<span class="font-green"></span>함<span
												class="font-green"></span>되<span class="font-green"></span>나<span
												class="font-green"></span>요<span class="font-green"></span>?<span
												class="font-green"></span>
										</p></a>
								</div>
								<div class="awn">
									<p class="cont">
										<span style="font-size: 14px;">매점 상품 구매시 적립하신 포인트도 VIP
											선정시 기준이 되는 포인트입니다.</span>
									</p>
								</div></li>
						</ul>
					</div>
				</div>

				<!-- pagination -->
				<!-- 				<nav class="pagination"> -->
				<!-- 					<strong class="active">1</strong> <a title="2페이지보기" -->
				<!-- 						href="javascript:void(0)" pagenum="2">2</a> <a title="3페이지보기" -->
				<!-- 						href="javascript:void(0)" pagenum="3">3</a> <a title="4페이지보기" -->
				<!-- 						href="javascript:void(0)" pagenum="4">4</a> <a title="5페이지보기" -->
				<!-- 						href="javascript:void(0)" pagenum="5">5</a> <a title="6페이지보기" -->
				<!-- 						href="javascript:void(0)" pagenum="6">6</a> </nav> -->
				<!--// pagination -->
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>	
</html>