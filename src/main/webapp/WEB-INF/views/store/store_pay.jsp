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
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/main.js"></script>
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script type="text/javascript">
	

	var IMP = window.IMP; 
	IMP.init("imp03276613"); 
	
	function requestPay() {
	    IMP.request_pay({
	        pg : $('input[name="radio_choice"]:checked').val(),
	        pay_method : 'card',
	        merchant_uid: "code" + new Date().getTime(), 
	        name : '홍길동',
	        amount : ${item_price },
	        buyer_email : '${member.get('member_email')}',
	        buyer_name : '${member.get('member_name')}',
	        buyer_tel : '${member.get('member_tel')}',
	        
	    }, function (rsp) { // callback
	        if (rsp.success) {
			    alert("결제가 완료되었습니다.");
			    location.href = "store_paySuccess?pay_code=" + rsp.merchant_uid + "&pay_type=" + rsp.pay_method + "&pay_price=" + rsp.paid_amount
			    				+ "&pay_status=" + rsp.status;
	        } else {
	            alert("실패 : 코드" + rep.error_code + ") / 메세지()"
	            	  + rsp.error_msg + ")");
	        }
	    });
	}

	
</script>
</head>
<body>
<jsp:include page="../nav.jsp" />
	<div id="contents" class="">
    <div class="inner-wrap">
        <!-- store-payment -->
        <div class="store-payment">
            <h2 class="tit">결제</h2>

            <h3 class="tit">주문상품정보</h3>

            <div class="table-wrap">
                <table class="board-list">
                    <caption>주문상품정보 목록 표</caption>
                    <colgroup>
                        <col style="width:120px;">
                        <col>
                        <col style="width:150px;">
                        <col style="width:80px;">
                        <col style="width:200px;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="colgroup" colspan="2">주문상품</th>
                            <th scope="col">사용가능처</th>
                            <th scope="col">구매수량</th>
                            <th scope="col">총 상품금액</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="a-c">
                                <div class="goods-info">
                                    
                                    <p class="img"><a href="javascript:fn_storeDetail();" title="메가박스 기프트카드 2만원권"><img src="${item.get('item_image') }" alt="" onerror="noImg(this);"></a></p>
                                </div>
                            </td>
                            <th scope="row">
                                <div class="goods-info">
                                    <p class="name"><a href="javascript:fn_storeDetail();" title="메가박스 기프트카드 2만원권">${item.get('item_name') }</a></p>
                                    <p class="bundle">${item.get('item_detail') }</p>
                                </div>

                                <div class="mt10">
                                    <span id="acptBrchView" class="font-gblue"></span><em id="acptBrchChoiValView"></em>
                                </div>
                            </th>
                            <td>
                                                        <a href="#" class="a-link" name="brchList" title="사용가능극장 확인">사용가능극장 확인</a>
                            </td>
                            <td><em id="purcQtyView">1</em></td>
                            <td>
                                <div class="goods-info">
	                                    	<em id="prdtSumAmtView" class="price">${item_price }</em>원
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div id="giftDiv" style="display:none">

                <h3 class="tit mt40">선물 메세지</h3>

                <div class="table-wrap">
                    <table class="board-form">
                        <caption>선물 메세지 입력 표</caption>
                        <colgroup>
                            <col style="width:145px;">
                            <col>
                            <col style="width:145px;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th scope="row"><label for="get_user">받는 분</label></th>
                                <td>
                                    <input type="text" id="get_user" class="input-text" maxlength="20" alt="받는분">
                                </td>
                                <th scope="rowgroup" rowspan="2"><label for="present_message">선물메세지<br>(<span id="textareaCnt" class="text-count">0</span>자/<em class="font-gblue">70자</em>)</label></th>
                                <td rowspan="2">
                                    <textarea rows="5" cols="30" id="present_message" title="선물메세지 입력" placeholder="전달하고자 하는 메세지를 남겨보세요(최대 70자)" class="input-textarea" style="height:76px;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row"><label for="phone">수량/휴대폰번호</label></th>
                                <td>
                                    <ul class="inputui01">
                                        <li class="li01">
                                            <select id="get_cnt" class="w100p small" alt="수량"><option value="">선택</option><option value="1">1</option></select>
                                        </li>
                                        <li class="li02"><input type="tel" id="phone" placeholder="'-'없이 입력해 주세요" class="input-text numType" maxlength="11" alt="휴대폰번호"></li>
                                        <li><a href="javascript:void(0)" id="btnAddGiftAcptPsn" class="button purple small btn-modal-open">추가</a></li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="useraddlist" id="giftAcptPsnList"></div>
            </div>
			<!-- 결제수단 포인트 시작 -->

			<!-- 결제수단 포인트 끝 -->
            
			<!-- 포인트 영역 -->
			
			<!-- 포인트 영역 끝 -->

            <h3 class="tit mt40">최종결제</h3>

            <!-- payment-final -->
            <div class="payment-final">
		                <div class="calc">
		                    <div class="cell all">
		                        <p class="txt">총 상품금액</p>
		                        <p class="price">
		                            <em id="totPrdtAmtView">${item_price }</em>
		                            <span>원</span>
		                        </p>
		                    </div>
		                    <i class="iconset ico-circle-minus">빼기</i>

		                    <div class="cell sale">
		                        <p class="txt">할인금액</p>
		                        <p class="price">
		                            <em id="totDcAmtView">0</em>
		                            <span>원</span>
		                        </p>
		                    </div>
		                    <i class="iconset ico-circle-equal">등호</i>

		                    <div class="cell real">
		                        <p class="txt">최종 결제금액</p>
		                        <p class="price">
		                            <em id="lstPayAmtView">${item_price }</em>
		                            <span>원</span>
		                        </p>
		                    </div>
		                </div>
		                <div class="choice">
                            <div class="inbox">
                                <p class="txt">결제수단 선택</p>
                                    <div class="cell">
                                        <input type="radio" id="radio_choice01" name="radio_choice" value="html5_inicis.INIBillTst">
                                        <label for="radio_choice01">신용/체크카드</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" id="radio_choice01" name="radio_choice" value="kakaopay.TC0ONETIME">
                                        <label for="radio_choice01">카카오페이</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="radio" id="radio_choice01" name="radio_choice" value="tosspay.tosstest">
                                        <label for="radio_choice01">토스페이</label>
                                    </div>
                            </div>
		                </div>
                        </div>

                        <!-- 결제수단 별 알림문구 -->
                        <div class="select-mobile-info" style="display:none;padding-top:20px;width:640px;margin:auto;">
                            <ul class="dash-list">
                                <li>결제하신 금액은 익월 휴대폰 요금에 합산되어 청구되며, 휴대폰 결제한도는 통산사별 월 누적 이용 제한에 따라 적용됩니다.</li>
                                <li>매월 말일 23시30분 ~ 익월 00시 10분까지(40분간)는 시스템 점검시간으로 이용이 어려울 수 있습니다.</li>
                                <li>휴대폰 결제와 관련된 추가 안내는 FAQ를 참조해주세요.</li>
                            </ul>
                        </div>

                        <div class="select-kakao-info" style="display:none;padding-top:20px;width:640px;margin:auto;">
                            <ul class="dash-list">
                                <li>즉시할인 신용카드 적용이 불가합니다.</li>
                            </ul>
                        </div>

                        <div class="select-payco-info" style="display:none;padding-top:20px;width:640px;margin:auto;">
                            <ul class="dash-list">
                                <li>즉시할인 신용카드 적용이 불가합니다.</li>
                                <li>페이코 포인트 결제 시 결제금액의 2% 추가적립 됩니다.</li>
                            </ul>
                        </div>

                        <div class="select-chai-info" style="display:none;padding-top:20px;width:640px;margin:auto;">
                            <ul class="dash-list">
								<li>CHAI는 은행 계좌만 등록하면 차이 비밀번호로 안전하게 결제할 수 있는 간편결제 서비스입니다.<br>(은행 점검시간인 23:30 ~ 00:30에는 이용이 어려울 수 있습니다.)</li>
								<li>결제 취소 또는 부분 취소 시 차이머니로 환불됩니다.</li>
								<li>결제 이용 한도는 1회 200만원입니다.</li>
								<li>이벤트를 통해 혜택을 적용 받은 주문의 경우, 즉시 할인 기준 금액에 따라 부분환불이 불가능할 수도 있습니다.</li>
                            </ul>
                        </div>

                        <div class="select-settlebank-info" style="display:none;padding-top:20px;width:640px;margin:auto;">
                            <ul class="dash-list">
                                <li>내통장결제는 본인명의의 계좌를 최초 1회 등록 후 비밀번호 입력만으로 간편하게 이용할 수 있는 현금결제 서비스 입니다.</li>
								<li>은행 점검시간의 경우 내통장결제서비스 이용이 불가합니다.</li>
                            </ul>
                        </div>

            </div>
            <!--// payment-final -->
            <dl class="term-list" id="terms" style="padding-top:35px;">
                <dt>
                    <span class="bg-chk small">
                        <input type="checkbox" id="agree"><label for="agree">결제대행 서비스 약관 필수 동의</label>
                    </span>
                </dt>
                <dd class="tit">
                    전자금융거래 이용약관<!-- 전자금융거래 이용약관 -->
                    <a href="javascript:void(0);" onclick="detailClick('one')">내용보기</a>
                </dd>
                <dd class="tit">
                    개인정보 수집 및 이용 안내<!-- 개인정보 수집 및 이용 안내 -->
                    <a href="javascript:void(0);" onclick="detailClick('two')">내용보기</a>
                </dd>
                <dd class="tit">
                    개인정보 제공 및 위탁 안내<!-- 개인정보 제공 및 위탁 안내 -->
                    <a href="javascript:void(0);" onclick="detailClick('three')">내용보기</a>
                </dd>
            </dl>
            <!-- 20220802 페이즈 약관동의 추가 -->
            
                <div class="pls_input2">
                    <!-- member-rule-agree -->
                    <div class="member-rule-agree">
                        <div class="all-chk bg-chk">
                            <input type="checkbox" id="all_chk">
                            <label for="all_chk" class="">주문할 상품 정보 및 이용약관 모두 동의하시겠습니까? <span class="fr">[필수]</span></label>
                        </div>

                        <div class="block first">
                            <div class="chk">
                                <input type="checkbox" id="chk01" value="CLUV09" data-version="1.0">
                                <label for="chk01">개인정보 판매자 제공 동의 <span class="fr">[필수]</span></label>
                            </div>

                            <div class="scroll" tabindex="0">
                                <div class="terms_text term_text">
                                    <p>
                                        - 고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송 및 CS가 제한됩니다.<br>
                                        - 개인정보를 제공받는 자 : <b>㈜한국페이즈서비스<br></b>
                                        - 개인정보를 제공받는 자의 개인정보 이용 목적 : <b>메가박스 모바일 금액권 발행, 운영, 환불, 연장, 민원응대<br></b>
                                        - 제공하는 개인정보의 항목 : <b>주문자 성명, 주문자 휴대전화번호, 수취인 성명, 수취인 휴대전화번호<br></b>
                                        - 개인정보를 제공받는 자의 개인정보 보유 및 이용기간 : <b>전자상거래 등에서의 소비자보호에 관한 법률에 의해 5년 간 보관 후 삭제<br></b>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="block">
                            <div class="chk">
                                <input type="checkbox" id="chk02" value="CLUV10" data-version="1.0">
                                <label for="chk02">개인정보 수집 및 이용안내 <span class="fr">[필수]</span></label>
                            </div>

                            <div class="scroll" tabindex="0">
                                <div class="terms_text term_text" tabindex="0">
                                    <dl>
                                        <dd>고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 상품 결제, 구매, 발송이 제한됩니다.
                                            <table cellpadding="3" cellspacing="0" class="privacyTable_01">
                                                <colgroup>
                                                    <col width="">
                                                    <col width="">
                                                    <col width="*">
                                                </colgroup>
                                                <thead>
                                                <tr>
                                                    <th id="th_privacy_consign_company" scope="col">수집이용목적</th>
                                                    <th id="th_privacy_consign_item" scope="col">수집 항목</th>
                                                    <th id="th_privacy_consign_term" scope="col">보유기간</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td headers="th_privacy_consign_company"><b>신유형 상품권 발행, 운영, 환불, 연장 서비스 제공, 주문/발송/거래 내역 조회 서비스 제공, 전자상거래법 준수
                                                        등</b>
                                                    </td>
                                                    <td headers="th_privacy_consign_item"><b>결제/주문/거래 내역, 주문자 정보(이름, 휴대전화번호), 수취인 정보(이름, 휴대전화번호)
                                                    </b></td>
                                                    <td headers="th_privacy_consign_term">고객님의 개인정보는 서비스를 제공하는 기간 동안 보유 및 이용하며,
                                                        개인정보의 수집 및 이용목적이 달성되면 지체없이 파기합니다.<br>
                                                        다만, 관계법령의 규정 및 내부지침에 의하여 고객님의 개인정보를 보관할 필요성이 있는 경우에는 아래와 같이 고객님의 개인정보를 보관할 수 있으며,<br>
                                                        이 경우 해당 개인정보는 보관의 목적으로만 이용합니다.<br>
                                                        <br>
                                                        가. 개별적으로 고객님의 동의를 받은 경우에는 약속한 보유기간<br>
                                                        나. 통신사실확인자료 제공 시 필요한 로그기록자료, IP주소 등 : 2개월 (통신비밀보호법)<br>
                                                        다. 계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래법)<br>
                                                        라. 대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래법)<br>
                                                        마. 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래법)<br>
                                                        바. 서비스제공과 관련된 문의사항 응대를 위해 서비스사용로그는 서비스 종료 후 2개월간 회사방침에 의해 보존
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </dd>
                                        <br>
                                        <dd>- 이용계약(이용약관)이 존속 중인 탈퇴하지 않은 회원의 경우 보유기간은 보존의무기간 이상 보관할 수 있으며 이 기간이 경과된 기록에 대해서 파기 요청이 있는 경우 파기함</dd>
                                        <dd>- 결제 수단에 따른 개인정보 수집.이용 항목이 상이할 수 있음</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--// member-rule-agree -->
                </div>
            
            <!-- 20220802 페이즈 약관동의 추가 end -->

            <div class="btn-group pt40">
                <a href="store_main" class="button large w170px" id="btn_store_back" title="취소">취소</a>
                <input type="button" onclick="requestPay()" value="결제" class="button purple large w170px btn-modal-open" id="btn_store_pay_adapter">
                <a href="#" class="button purple large w170px btn-modal-open" id="btn_store_pay" title="결제" style="display: none;" w-data="600" h-data="400">결제</a>
				<!--
                <a href="javascript:execStorePayment();" class="button purple large w170px">결제테스트</a>
                <a href="javascript:execStoreCancelPayment();" class="button purple large w170px">결제취소테스트</a>
                <a href="javascript:searchMempPoint();" class="button purple large w170px">멤버십테스트</a>
                 -->
            </div>
        </div>
        <!--// store-payment -->
    </div>
</div>
	<script>
		$(function() {
			$('.block first').click(function() {
				$('.block').removeClass('on');
				$(this).addClass('on');
			})
			
			$('.block').click(function() {
				$('.block first').removeClass('on');
				$(this).addClass('on');
			})
			
			$("#all_chk").on("click", function () {
				  var checked = $(this).is(":checked");
				  if(checked){
				  	$("#chk01").prop("checked", true);
				  	$("#chk02").prop("checked", true);
				  } else {
					  $("#chk01").prop("checked", false);
					  $("#chk02").prop("checked", false);
				  }
			})
			
			$("#btn_store_pay_adapter").on("click", function() {
				if(!$("#chk01").prop("checked") && !$("#chk02").prop("checked")) {
					alert("이용약관에 모두 동의하셔야 합니다.");
				}
				
			})
			
			
		});
	</script>
</body>
</html>