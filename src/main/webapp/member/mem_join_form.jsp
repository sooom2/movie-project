<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/movie.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../nav.jsp" />
<div id="container">
        <div id="content">
            
<div class="section group section-member">

    <div class="title">회원가입</div>

    <div class="wrap-member-box wrap-join-box" id="join_confirm_section">
        <ul class="join-indicator">
            <li>이메일 입력(소셜 가입)</li>
            <li class="selected">회원정보 입력</li>
            <li>가입 완료</li>
        </ul>
        <form name="form-join" id="form-join" method="post" action="/Member/Complete">
            <div class="wrap-inside">
                <div class="join-detail">
                    <label class="label-input" for="">
                        <span>선호지점</span>

                        <div class="" style="margin-left:120px;display: block;margin-top: 3px;width: 200px;;height: 30px;overflow: hidden;border: 1px solid #ccc;">
                            <select name="theaterCode" id="join-theater" style="width: 220px;height: 30px;padding: 0 0 0 10px;box-sizing: border-box;font-size: 16px;line-height: 30px;border-radius: 0;-webkit-appearance: none;appearance: none;-moz-appearance: none;background: url(/images/customer/icon-select-off.png) right 31px center no-repeat;border: none;color: #7d7d7d;vertical-align: top;">
                                <option value="1001">신도림</option>
                                <option value="2102">청라</option>
                                <option value="6001">경주보문</option>
                                <option value="6002">구미봉곡</option>
                                <option value="4001">충주연수</option>
                                <option value="4101">천안불당</option>
                                <option value="6006">대구이시아</option>
                                <option value="6101">하동</option>
                                <option value="4002">보은</option>
                                <option value="6003">칠곡호이</option>
                                <option value="6005">영덕예주</option>

                            </select>
                        </div>
                        <span></span>
                    </label>
                </div>
                <div class="join-detail">
                    <label class="label-input" for="email">
                        <span>아이디(이메일)</span>
                        <input type="text" id="join-id2" name="memberId" class="input" value="ckrgody40@naver.com" placeholder="이메일을 입력해주세요">
                        <span></span>
                    </label>
                </div>
                <div class="join-detail">
                    <label class="label-input" for="pass">
                        <span>비밀번호</span>
                        <input type="password" id="join-pw" name="password" class="input" placeholder="영문, 숫자, 특수문자 중 2개 조합 8자 이상">
                        <span></span>
                    </label>
                </div>
                <div class="join-detail">
                    <label class="label-input" for="pass2">
                        <span>비밀번호 확인</span>
                        <input type="password" id="join-pw2" name="password2" class="input" placeholder="위에 입력한 비밀번호를 다시 입력해주세요">
                        <span></span>
                    </label>
                </div>
                <div class="join-detail">
                    <label class="label-input" for="username">
                        <span>이름</span>
                        <input type="text" id="join-name" name="name" class="input" value="" placeholder="실명을 입력해주세요">
                        <span></span>
                    </label>
                </div>
                <div class="join-detail">
                    <label class="label-input" for="bday">
                        <span>생년월일</span>
                        <input type="text" id="join-bday" name="birthDate" class="input input-numeric" placeholder="예) 20170101">
                        <span></span>
                    </label>
                </div>
                <div class="join-detail">
                    <label class="label-input" for="phone" style="width:320px;display:inline-block;">
                        <span>휴대폰번호</span>

                        <input type="text" style="width:140px;display:inline-block;" id="join-phone" name="phone" class="input input-numeric" placeholder="휴대폰번호 입력">
                        <span></span>
                    </label>
                    <a href="#" class="btnsub btnsms" id="authnumCall">인증번호 받기</a>
                </div>
                <div class="join-detail">
                    <label class="label-input" for="phone" style="width:320px;display:inline-block;">
                        <span>인증번호 입력</span>

                        <input type="text" style="width:140px;display:inline-block;" id="join-smsAuth" name="smsAuth" class="input input-numeric" placeholder="인증번호 입력">
                        <span></span>
                    </label>
                    <span class="btnsub descsms">제한시간 3분</span>
                </div>

                <div class="join-detail">
                    <span class="agreement">
                        <input type="checkbox" id="mypage-check00" name="acceptJoin" value="true"> <label class="label-check" for="mypage-check00">
                            전체 동의합니다.
                        </label>
                        <input type="hidden" name="terms">
                    </span>
                </div>

                <div class="join-detail">
                    <span class="agreement">
                        <input type="checkbox" id="mypage-check11" name="acceptJoin" value="true"> <label class="label-check" for="mypage-check11">
                            회원이용약관 동의 (필수) <a href="#" class="read1"> 내용보기 </a>
                        </label>
                        <input type="hidden" name="terms">
                    </span>
                </div>
                <div class="join-detail">
                    <span class="agreement">
                        <input type="checkbox" id="mypage-check13" name="acceptJoin" value="true"> <label class="label-check" for="mypage-check13">
                            개인정보처리방침 동의 (필수) <a href="#" class="read2"> 내용보기 </a>
                        </label>
                        <input type="hidden" name="terms">
                    </span>
                </div>
                <div class="join-detail long">
                    <span class="agreement">
                        <input type="checkbox" id="mypage-check12" name="acceptMarketing" value="true"> <label class="label-check" for="mypage-check12">이메일, SMS, 앱알람 수신 동의 (선택)</label>
                    </span>
                    <div class="sub">
                        <span><input type="checkbox" id="mypage-check21" name="receiveEmail" value="true"><label class="label-check" for="mypage-check21">이메일</label></span>
                        <span><input type="checkbox" id="mypage-check22" name="receiveSMS" value="true"><label class="label-check" for="mypage-check22">SMS</label></span>
                        <span><input type="checkbox" id="mypage-check23" name="receivePush" value="true"><label class="label-check" for="mypage-check23">앱알림</label></span>
                    </div>
                </div>
            </div>

            <a href="javascript:;" id="btn-join2" class="btn-join">회원가입</a>
            <input type="hidden" id="socialId" name="socialId" value="">
            <input type="hidden" id="userFrom" name="userFrom" value="4">
            <input type="hidden" id="isPayment" name="isPayment" value="0">
            <input type="hidden" id="smsRequest" name="smsRequest" value="">
            <input type="hidden" id="token" name="token" value="">
        </form>

    </div>

</div>


        </div>
    </div>
</body>
</html>