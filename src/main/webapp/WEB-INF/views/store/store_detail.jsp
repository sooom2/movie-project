<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/common.css" rel="stylesheet">
<link href="resources/css/inc.css" rel="stylesheet">
<link href="resources/css/sub.css" rel="stylesheet">
<link href="resources/css/common.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
</head>
<body>
<jsp:include page="../nav.jsp" />
<div id="contents" class="">
    <div class="inner-wrap">
        <!-- store-view -->
        <div class="store-view">
            <h2 class="tit">메가박스 기프트카드 2만원권
            </h2>
            <div class="sub-info">
                <p class="bundle">메가박스 기프트카드 2만원권</p>
            </div>
            <!-- box-store-view -->
            <div class="box-store-view">
                <div class="left">
                    <div class="img">
                        <p><img src="https://img.megabox.co.kr/SharedImg/store/2022/09/02/OLQpuZPJ5wuIR9BqZK4sDRKN0t2O3sWV_280.png" alt="메가박스 기프트카드 2만원권" onerror="noImg(this);"></p>
                    </div>
                    <p class="origin">
                    </p>
                </div>
                <!-- right -->
                <div class="right">
                    <!-- goods-info -->
                    <div class="goods-info">
                            <div class="line">
                                <p class="tit"><span class="line32">사용극장</span></p>
                                <div class="cont">
                                                    <a href="#" class="a-link" name="brchList">사용가능극장</a>
                                </div>
                            </div>
                        <div class="line">
                            <p class="tit">유효기간</p>
                                <div class="cont">
                                    <p class="txt">
                                                구매일로부터 366일 이내
                                                
                                                사용 가능
                                                    </p><p class="txt min">본 상품의 최초 유효기간은 구매일로 부터 366일까지입니다.</p>
                                    <p></p>
                                </div>
                        </div>
                            <div class="line">
                                <p class="tit">판매수량</p>

                                <div class="cont">
                                    <div class="sale-count">
                                        <span> 1회 8개 구매가능	</span>
                                        <span> 1인 8개 구매가능	</span>
                                    </div>
                                </div>
                            </div>
                        <div class="line">
                                <p class="tit">구매 후 취소</p>
                                <div class="cont">
                                    <p class="txt">
                                            구매일로부터 366일 이내 취소 가능하며, 부분취소는 불가능합니다.
                                    </p>
                                    	<p class="txt min">구매일로 부터 366일까지 취소 가능하며, 부분취소는 불가합니다.</p>
                                </div>
                        </div>
                    </div>
                    <!--// goods-info -->

                    <!--
                        판매종료일때는 각 select, button 에 disabled 처리
                    -->
                    <!-- type -->
                    <div class="type">
                        <!-- 수량 금액 일 때 -->

                        <!--// 수량 금액 일 때 -->
<!-- 기프트카드  -->
                        <div class="receipt">
                            <div class="line">
                                <p class="tit"><span class="line32">수량/금액</span></p>
                                <div class="cont">
                                    <button type="button" class="btn minus" title="수량감소">
                                    <i class="iconset ico-minus"></i></button>
                                    <input type="text" title="수량 입력" class="input-text" readonly="readonly" value="1" min="1" max="100">
                                    <button type="button" class="btn plus" title="수량증가">
                                    <i class="iconset ico-plus"></i></button>
                                    <div class="money">
                                        <em id="prdtSumAmt">20,000</em>
										    	<span>원</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--// type -->

                    <div class="btn-group">
		                                <a href="store_pay" id="btnPurc" class="button purple large" w-data="500" h-data="410" title="구매">구매</a>
                    </div>
                </div>
                <!--// right -->
            </div>
            <!--// box-store-view -->
        </div>
        <!--// store-view -->

        <!-- 레이어 : 극장확인 -->
        <section id="layer_chk01" class="modal-layer">
        </section>
        <!--// 레이어 : 극장확인 -->

        <!-- 레이어 : 지점확인 -->
        <section id="layer_chk02" class="modal-layer">
        </section>
        <!--// 레이어 : 지점확인 -->

        <!-- 레이어 : 취소불가 -->
        <section id="layer_chk03" class="modal-layer">
        </section>
        <!--// 레이어 : 지점확인 -->
            <!-- box-pulldown -->
            <div class="box-pulldown">
                <div class="tit">
                    <button type="button" class="btn-toggle">구매 후 취소 <i class="iconset ico-arr-toggle-down">내용보기</i></button>
                </div>
            	<div class="dotList02">
                        • 메가박스 모바일 금액권은&nbsp;미사용분에 한하여 최초 유효기간 이내에만&nbsp;결제&nbsp;취소가&nbsp;가능합니다.<br>
• 결제&nbsp;취소&nbsp;방법&nbsp;:&nbsp;메가박스 온라인(홈페이지/App) 계정 로그인 &gt; &nbsp;나의 메가박스&nbsp;&gt;&nbsp;예매/구매내역 &gt;&nbsp;구매취소<br>
•&nbsp;유효기간&nbsp;만료&nbsp;1개월 전&nbsp;유효기간의&nbsp;연장을&nbsp;신청할&nbsp;수&nbsp;있으며,&nbsp;93일&nbsp;(3개월) 단위로&nbsp;연장&nbsp;됩니다.<br>
&nbsp; (소멸시효기간:&nbsp;5년)<br>
•&nbsp;환불은&nbsp;최초 유효기간&nbsp;만료&nbsp;또는 60% 이상 사용 시에만&nbsp;신청&nbsp;가능합니다.<br>
•&nbsp;최초 유효기간 만료 후 환불 시 결제금액의 90%만 환불되며, 60% 이상 사용 후 환불 시 잔여금액에 한하여 환불이 가능합니다.<br>
•&nbsp;유효기간&nbsp;연장&nbsp;및&nbsp;환불방법:&nbsp;Pay’s 고객센터(1644-5368)를 통해 연장 및 계좌 환불이 가능합니다.<br>
<br>
[&nbsp;메가박스 모바일 금액권&nbsp;고객센터&nbsp;]<br>
• ‘㈜한국페이즈서비스’&nbsp;고객센터&nbsp;1644-5368&nbsp;(평일&nbsp;09시&nbsp;~&nbsp;18시)<br>
•&nbsp;기간연장&nbsp;및&nbsp;환불문의,&nbsp;민원&nbsp;접수
            	</div>
            </div>
            <!--// box-pulldown -->

            <!-- box-pulldown -->
            <div class="box-pulldown">
                <div class="tit">
                    <button type="button" class="btn-toggle">상품이용안내 <i class="iconset ico-arr-toggle-down">내용보기</i></button>
                </div>
                <div class="dotList02">
                        [&nbsp;이용안내&nbsp;]<br>
• 메가박스 온라인(홈페이지/App)에서&nbsp;운영&nbsp;하는&nbsp;메가박스 모바일 금액권은 ㈜한국페이즈서비스를 통해 발행&nbsp;및&nbsp;운영&nbsp;됩니다.<br>
• 본 모바일 금액권은 주중/주말 제한없이 사용이 가능하며, 영화티켓(온/오프라인) 및 매점(오프라인)에서 상품 구매 시 사용 가능합니다.<br>
• 본 모바일 금액권은 금액 분할 사용이 가능하며, 사용 후 잔액은 유효기간 내 재사용이 가능합니다.<br>
• 본 모바일 금액권은 메가박스 멤버십 포인트 적립 및 현금영수증 발행이 가능합니다.<br>
• 본 모바일 금액권은 현금과 교환되지 않으며, 지류 및 온라인 관람권으로 교환이 불가합니다.<br>
• 영화관 지점 프로모션 및 행사상품은 구매가 불가할 수 있습니다.<br>
• 사용여부 및 잔액조회는 Pay’s 고객센터(1644-5368)에서 확인 가능합니다.<br>
&nbsp; &nbsp;운영시간 – 평일 09:30 ~ 18:00 (주말 및 공휴일 상담 불가)<br>
• 추가 결제 금액에 대해서는 동일한 모바일 금액권, 현금, 신용카드로 추가 결제 가능합니다.<br>
• 카드번호 1개당 1명의 계정에만 온라인에 등록할 수 있습니다.<br>
• 본 모바일 금액권의 유효기간은 구매일로부터 1년입니다<br>
<br>
[&nbsp;사용방법&nbsp;]<br>
• 메가박스 홈페이지, App 예매 방법<br>
&nbsp; 메가박스 계정 로그인 &gt; 영화/시간 선택 &gt; 관람인원 선택 &gt; 결제화면 [관람권/모바일상품권] 선택 &gt; [메가박스/페이즈 모바일 금액권] 선택 &gt; 금액권 번호 입력 및 적용 &gt; 결제<br>
• 현장 무인발권기 예매 및 매점 이용 방법<br>
&nbsp; 티켓구매 &gt; 영화/시간 선택 &gt; 관람인원 선택 &gt; 결제화면 [메가박스/페이즈 모바일금액권] 선택 &gt; 금액권 번호 입력 및 적용 &gt; 결제<br>
&nbsp; 매점구매 &gt; 상품 선택 &gt; 결제화면 [메가박스/페이즈 모바일금액권] 선택 &gt; 금액권 번호 입력 및 적용 &gt; 결제<br>
• 현장 매표소&amp;매점 이용 방법<br>
&nbsp; 매표소 및 매점에서 메가박스 모바일 금액권 제시 시 영화 예매 및 매점상품 구매 가능<br>
<br>
[&nbsp;사용불가사항&nbsp;]<br>
• 아트나인(독립영화관), 더 부티크 프라이빗<br>
• 굿즈패키지 매점상품, 영화제 티켓, 특별컨텐츠, 메가박스 지류관람권<br>
• 매점 사용 제외지점 : 경산하양점, 공주점, 김천점, 남춘천점, 북대구(칠곡)점, 속초점, 순천점, 안산중앙점, 원주점, 인천논현점, 진주(중안)점, 진천점, 첨단점, 청주사창점, 파주금촌점, ARTNINE
				</div>
            </div>
            <!--// box-pulldown -->
    </div>
</div>
<jsp:include page="../footer.jsp"/>
	<script>
		$(function() {
			$('.box-pulldown').click(function() {
				$('.box-pulldown').removeClass('on');
				$(this).addClass('on');
			})
			
			$('.btn.plus').click(function() {
				var currentVal = parseInt($('.input-text').val());
				if(currentVal < $('.input-text').attr('max')) {
					$('.input-text').val(currentVal + 1).change();
	            }
				$('.money em').html(20000 * $('.input-text').val());
			})
			
			$('.btn.minus').click(function() {
				var currentVal = parseInt($('.input-text').val());
				if(currentVal > $('.input-text').attr('min')) {
					$('.input-text').val(currentVal - 1).change();
	            }
				$('.money em').html(20000 * $('.input-text').val());
			})
			
			
		});
	</script>
</body>
</html>