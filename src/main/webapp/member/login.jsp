<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link href="../css/movie.css" rel="stylesheet">
<body>
<div id="popup_login" style="opacity: 1;" class="modal">




    <div class="popup-login" id="loginSession" data-pwdredirect="1">
        <span class="logo-login">CINE Q</span>
        <div class="section-pop-login">
            <ul class="tab-login">
                <li class="on">
                    <a href="#" class="tab">회원</a>
                    <div class="tab-content on">
                        <div class="wrap-inside">
                            <span class="member-desc">아이디와 비밀번호를 입력하신 후, 로그인을 눌러주세요</span>
                            <div class="member-detail">
                                <label class="label-input" for="memberid"><span>아이디(이메일)</span><input type="text" id="memberid" class="input" value="" placeholder="이메일을 입력해주세요"><span></span></label>
                            </div>
                            <div class="member-detail">
                                <label class="label-input" for="memberpwd"><span>비밀번호</span><input type="password" id="memberpwd" class="input" placeholder="영문, 숫자 포함 8자 이상"><span></span></label>
                            </div>
                            <div class="member-detail long">
                                <span class="wrap-remember"><input type="checkbox" value="1" class="input-remember" id="memberSaveId"> <label for="memberSaveId" class="label-remember">아이디 저장</label></span>
                                <span class="btn-find-box">
                                    <a href="#" class="btn-find-id">아이디(이메일) 찾기</a>
                                    <a href="#" class="btn-find-pass">비밀번호 찾기</a>
                                </span>

                                <div class="btn-member-login-box">
                                    <a href="#" class="btn-login">로그인</a>
                                    <a href="/Member" class="btn-join">회원가입</a>
                                </div>
                            </div>
                            <span class="social-desc">소셜 계정으로 간편 로그인 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Member/SnsLink">소셜 계정 다시 연결</a></span>
                            <div class="wrap-social">
                                <div id="naver_id_login" style="display:none;"><a href="https://nid.naver.com/oauth2.0/authorize?response_type=token&amp;client_id=i5vJc9KektcyYpcRyM5n&amp;redirect_uri=https%3A%2F%2Fcineq.co.kr%2FPopup%2FNaverLogin&amp;state=6b6658eb-2690-4df9-9362-ce2249329269" onclick="window.open(this.href, 'naverloginpop', 'titlebar=1, resizable=1, scrollbars=yes, width=600, height=550'); return false" id="naver_id_login_anchor" class="social-connect nv">네이버</a> </div>
                                <a href="#" class="btn-nv">네이버</a>
                                <a href="javascript:loginWithKakao();" class="btn-kt" id="custom-login-btn">카카오톡</a>
                                
                            </div>
                        </div>
                    </div>
                </li><!--li.on-->

                <li class="">
                    <a href="#" class="tab">비회원</a>
                    <div class="tab-content">
                        <div class="nomember-left">
                            <!--- 개인정보 수집 및 이용목적 textarea및 타이틀 삭제
                        <span class="desc">개인정보 수집 및 이용목적</span>
                        <textarea class="textarea-privacy">
                            개인정보처리(취급)방침 (v1.1) 2017/07/01 개정

                            시네스테이션큐는 회원님의 개인정보를 매우 중요시하며, 정보통신망 이용촉진 등에 관한 법률을 준수하고 있습니다.
                            시네스테이션큐는 개인정보처리방침을 통하여 회원님께서 제공한 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보처리(취급)방침 (v1.1) 2017/07/01 개정 시네스테이션큐는 회원님의 개인정보를 매우 중요시하며, 정보통신망 이용촉진 등에 관한 법률을 준수하고 있습니다.
                            시네스테이션큐는 개인정보처리방침을 통하여 회원님께서 제공한 개인정보가 어떠한 용도와 방식으로 이용되고 있으며,
                        </textarea>
                        <span class="desc2">개인정보 수집 및 이용목적에 동의하십니까?</span>
                        <label class="input-agreement input-radio">동의함<input type="radio" name="agreement" value="1" /><div class="input-indicator"></div></label>
                        <label class="input-agreement input-radio">동의하지 않음<input type="radio" name="agreement" value="2" checked="checked" /><div class="input-indicator"></div></label>
                        -->
                            <ul class="desc">
                                <li>비회원 예매는 할인 수단 적용이 불가하며,<br> 신용카드 결제만 가능합니다.</li>
                                <li>모든항목은 필수 입니다.</li>
                                <li>문의사항은 고객센터(1544-1533)로 문의해 주시기 바랍니다.</li>
                                <li>비회원예매내역 서비스는 비회원 예매시 입력했던<br> 개인정보를 동일하게 입력하셔야 이용 가능합니다.</li>
                            </ul>


                        </div><!--.nomember-left-->
                        <div class="nomember-right">
                            <div class="join-detail">
                                <label class="label-input" for="nomember_name"><span>이름</span><input type="text" id="nomember_name" name="nomember_name" class="input" placeholder="본명을 입력해주세요"></label>
                            </div>
                            <div class="join-detail">
                                <label class="label-input" for="nomember_email"><span>이메일</span><input type="text" id="nomember_email" name="nomember_email" class="input" placeholder="이메일을 입력해주세요"></label>
                            </div>
                            <div class="join-detail">
                                <label class="label-input input-numeric" for="nomember_phone"><span>휴대폰번호</span><input type="text" id="nomember_phone" name="nomember_phone" class="input" placeholder="휴대폰번호를 입력해주세요"></label>
                            </div>
                            <div class="join-detail">
                                <label class="label-input" for="nomember_pass"><span>비밀번호(4자리)</span><input type="password" id="nomember_pass" name="nomember_pass" class="input" placeholder="4자리 숫자를 입력해주세요" maxlength="4"></label>
                            </div>
                            <!-- 삭제블럭
                        <div class="join-detail">
                            <label class="label-input" for="nomember_pass2"><span>비밀번호 확인</span><input type="password" id="nomember_pass2" name="nomember_pass2" class="input" placeholder="위에 입력한 비밀번호를 다시 입력" /></label>
                        </div>

                        <ul class="desc">
                            <li>비회원 예매는 할인 수단 적용이 불가하며, 신용카드 결제만 가능합니다.</li>
                            <li>모든항목은 필수 입니다.</li>
                        </ul>
                        -->

                        </div><!--.nomember-right-->
                        <div style="margin-top:30px;border-bottom:1px solid #ddd;width:650px;margin:60px auto 0;"></div>
                        <a href="#" class="btn-nomember-login">로그인</a>
                    </div>
                </li><!--li-->
            </ul>
        </div>

        <div class="login-banner" style="margin-top:80px">
                <a href="https://www.cineq.co.kr/Movie/Info?MovieCode=20226410"><img src="https://file.cineq.co.kr/j.aspx?guid=5d12c30563d54d3e9fd223e69d9c227b"></a>
        </div>

        <a href="#" class="btn-login-close" rel="modal:close">닫기</a>
    </div>






</div>
</body>
</html>