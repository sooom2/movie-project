<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
<!-- 상단 -->
<link href="${pageContext.request.contextPath }/resources/css/sub.css" rel="stylesheet">
<!-- 본문 -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
<body>
	<jsp:include page="../nav.jsp" />
	<div class="container has-lnb">
		<div class="inner-wrap">
			<jsp:include page="lnb-area.jsp" />
			<div id="contents" class="">
				<h2 class="tit">분실물 문의</h2>
				<ul class="dot-list">
					<li>메가박스에서 잃어버린 물건이 있다면 ‘분실물 문의/접수’를 통해 접수해주세요.</li>
					<li>접수하신 글은 비밀글로 등록되어 작성자와 관리자만 확인 가능합니다.</li>
				</ul>

				<div class="agree-box">
					<dl>
						<dt>
							<span class="bg-chk mr10"> <input type="checkbox" id="chk">
								<label for="chk"><strong>개인정보 수집에 대한 동의</strong></label>
							</span> <span class="font-orange">[필수]</span>
						</dt>
						<dd style="font-size: 13px;">
							귀하께서 문의하신 다음의 내역은 법률에 의거 개인정보 수집·이용에 대한 본인동의가 필요한 항목입니다.<br>
							<br> [개인정보의 수집 및 이용목적]<br> 회사는 분실물 문의 내역의 확인, 요청사항 처리
							또는 완료 시 원활한 의사소통 경로 확보를 위해 수집하고 있습니다.<br> <br> [필수 수집하는
							개인정보의 항목]<br> 이름, 연락처, 이메일, 문의내용, 비밀번호(게시글 열람용)<br> <br>
							[개인정보의 보유기간 및 이용기간]<br> <span class="ismsimp">문의 접수 ~
								처리 완료 후 3년<br> (단, 관계법령의 규정에 의하여 보존 할 필요성이 있는 경우에는 관계 법령에
								따라 보존)<br> 자세한 내용은 '개인정보 처리방침'을 확인하시기 바랍니다.
							</span>
						</dd>
					</dl>
				</div>

				<p class="reset mt10">* 원활한 서비스 이용을 위한 최소한의 개인정보이므로 동의하지 않을 경우
					서비스를 이용하실 수 없습니다</p>

<!-- 				<form name="regFrm" method="post"> -->
				<form action="lostWritePro" name="regFrm" method="post">
					<input type="hidden" name="inqLclCd" value="INQD02"> <input
						type="hidden" name="custInqStatCd" value="INQST1"> <input
						type="hidden" name="cdLvl" value="1">

					<p class="reset mt30 a-r font-orange">* 필수</p>

					<div class="table-wrap mt10">
						<table class="board-form va-m">
							<colgroup>
								<col style="width: 150px;">
								<col>
								<col style="width: 150px;">
								<col>
							</colgroup>
							<tbody>
<!-- 								<tr> -->
<!-- 									<th scope="row"><label for="place">분실장소</label> <em -->
<!-- 										class="font-orange">*</em></th> -->
<!-- 									<td colspan="3"><select id="theater" class="small" -->
<!-- 										title="지역선택"> -->
<!-- 											<option value="">지역선택</option> -->

<!-- 											<option value="10">서울</option> -->

<!-- 											<option value="30">경기</option> -->

<!-- 											<option value="35">인천</option> -->

<!-- 											<option value="45">대전/충청/세종</option> -->

<!-- 											<option value="55">부산/대구/경상</option> -->

<!-- 											<option value="65">광주/전라</option> -->

<!-- 											<option value="70">강원</option> -->

<!-- 											<option value="80">제주</option> -->

<!-- 									</select> <select name="brchNo" id="theater02" title="극장선택" -->
<!-- 										class="small ml07" disabled="disabled"> -->
<!-- 											<option value="">극장선택</option> -->
<!-- 									</select></td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<th scope="row"><label for="name">지역</label> <em -->
<!-- 										class="font-orange">*</em></th> -->
<!-- 									<td colspan="3"><input type="text" name="lost_location" -->
<!-- 										id="location" class="input-text w150px" value="" maxlength="30"></td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<th scope="row"><label for="name">영화관명</label> <em -->
<!-- 										class="font-orange">*</em></th> -->
<!-- 									<td colspan="3"><input type="text" name="cinema_name" -->
<!-- 										id="cinema" class="input-text w150px" value="" maxlength="30"></td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<th scope="row"><label for="name">이름</label> <em -->
<!-- 										class="font-orange">*</em></th> -->
<!-- 									<td colspan="3"><input type="text" name="lost_name" -->
<!-- 										id="name" class="input-text w150px" value="" maxlength="30"></td> -->
<!-- 								</tr> -->
<!-- 								<tr> -->
<!-- 									<th scope="row"><label for="hpNum1">연락처</label> <em -->
<!-- 										class="font-orange">*</em></th> -->
<!-- 									<td><input type="text" name="hpNum1" id="hpNum1" -->
<!-- 										class="input-text w60px numType" maxlength="3" -->
<!-- 										title="핸드폰번호 첫자리 입력"> <span>-</span> <input -->
<!-- 										type="text" name="hpNum2" class="input-text w60px numType" -->
<!-- 										maxlength="4" title="핸드폰번호 중간자리 입력"> <span>-</span> <input -->
<!-- 										type="text" name="hpNum3" class="input-text w60px numType" -->
<!-- 										maxlength="4" title="핸드폰번호 마지막자리 입력"></td> -->
<!-- 									<th scope="row"><label for="email">이메일</label> <em -->
<!-- 										class="font-orange">*</em></th> -->
<!-- 									<td><input type="text" name="rpstEmail" id="email" -->
<!-- 										class="input-text" value="" autocomplete="new-password" -->
<!-- 										maxlength="50"></td> -->
<!-- 								</tr> -->
								<tr>
									<th scope="row"><label for="name">이름</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" name="lost_name" id="name"
										class="input-text" value="" autocomplete="new-password"
										maxlength="50"></td>
									<th scope="row"><label for="name">영화관명</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" name="cinema_name" id="cinema"
										class="input-text" value="" autocomplete="new-password"
										maxlength="50"></td>
								</tr>
								<tr>
									<th scope="row"><label for="email">연락처</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" name="lost_tel" id="hpNum"
										class="input-text" value="" autocomplete="new-password"
										maxlength="50"></td>
									<th scope="row"><label for="email">이메일</label> <em
										class="font-orange">*</em></th>
									<td><input type="text" name="lost_email" id="email"
										class="input-text" value="" autocomplete="new-password"
										maxlength="50"></td>
								</tr>
								<tr>
									<th scope="row"><label for="title">제목</label> <em
										class="font-orange">*</em></th>
									<td colspan="3"><input type="text" name="lost_subject"
										id="title" class="input-text" maxlength="100"></td>
								</tr>
								<tr>
									<th scope="row"><label for="textarea">내용</label> <em
										class="font-orange">*</em></th>
									<td colspan="3">
										<div class="textarea">
											<textarea id="textarea" name="lost_content" rows="5" cols="30"
												title="내용입력"
												placeholder="※ 문의 내용에 개인정보(이름, 연락처, 카드번호 등)가 포함되지 않도록 유의하시기 바랍니다.
												※ 분실장소와 분실물에 대한 상세 정보를 작성해주시면 분실물을 찾는데 도움이 됩니다.
												- 관람 영화정보(영화제목, 상영 회차, 상영시간 등) :
												- 극장/좌석/장소 정보 :
												- 분실물 상세정보"
												class="input-textarea"></textarea>
											<div class="util">
												<p class="count">
													<span id="textareaCnt">0</span> / 2000
												</p>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="pw">비밀번호</label> <em
										class="font-orange">*</em></th>
									<td colspan="3"><input type="number" maxlength="4"
										name="lost_passwd" id="pw" class="input-text w150px pwnew"
										placeholder="숫자 4자리" oninput="gfn_numberMaxLength(this);">
										<em class="fc_r ml10">* 분실물에 대한 고객정보 보호를 위하여 게시글의 비밀번호를
											설정해주세요.</em></td>
								</tr>
							</tbody>
						</table>
					</div>

<!-- 					<div class="btn-group pt40"> -->
<!-- 						<button type="submit" class="button purple large">등록</button> -->
						<input type="submit" value="등록">
<!-- 					</div> -->
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>