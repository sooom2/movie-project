<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/movie.css" rel="stylesheet">
<link href="../css/store.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../nav.jsp"/>
<div id="contents">

    <!-- inner-wrap -->
    <div class="inner-wrap">
        <h2 class="tit">스토어</h2>

        <div class="tab-list fixed">
            <ul>
                    <!-- li id="storeTab_CPC09"><a href="javascript:fn_chgStoreTab('CPC09')">기프트카드</a></li-->
		                    <li id="storeTab_CPC09" class="on"><a href="javascript:fn_storeTabMove('CPC09')" title="기프트카드 탭으로 이동"><span class="pointmall">기프트카드</span></a></li>
                    <!-- li id="storeTab_CPC05"><a href="javascript:fn_chgStoreTab('CPC05')">팝콘/음료/굿즈</a></li-->
		                    <li id="storeTab_CPC05" class=""><a href="javascript:fn_storeTabMove('CPC05')" title="팝콘/음료/굿즈 탭으로 이동">팝콘/음료/굿즈</a></li>
                    <!-- li id="storeTab_CPC07"><a href="javascript:fn_chgStoreTab('CPC07')">포인트몰</a></li-->
		                    <li id="storeTab_CPC07" class=""><a href="javascript:fn_storeTabMove('CPC07')" title="포인트몰 탭으로 이동"><span class="pointmall">포인트몰</span></a></li>
            </ul>
        </div>
        <!-- 카테고리 별 상품 -->
            <div id="divCategoryPrdtArea_CPC09" style="">
                <!-- store-list -->
                <div class="store-list mt30">
                    <ul class="list">
	                    <li class="">
	                        <a href="javascript:fn_storeDetail('1764');" title="메가박스 기프트카드 2만원권 상세보기">
	                            <div class="soldout">SOLD OUT</div>
	                                    <div class="label new">NEW</div>
	                            <div class="img"><img src="https://img.megabox.co.kr/SharedImg/store/2022/09/02/OLQpuZPJ5wuIR9BqZK4sDRKN0t2O3sWV_280.png" alt="" onerror="noImg(this);"></div>
	
	                            <div class="info">
	                                <div class="tit">
	                                    <!-- 제품명 최대 2줄 -->
	                              <p class="name">Cinema 기프트카드 2만원권</p>
	
	                                    <!-- 제품구성 최대 2줄 -->
	                                    <p class="bundle">Cinema 기프트카드 2만원권</p>
	                                </div>
	
	                                <div class="price">
	                                    <p class="original">
	                                    </p>
	                                      <p class="sale">
	                                          <em>20,000</em>
	                                          <span>원</span>
	                                      </p>
	                                     <p class="ea">
	                                     </p>
	                                </div>
	                            </div>
	                        </a>
	                    </li>
	                    <li class="">
	                        <a href="javascript:fn_storeDetail('1765');" title="메가박스 기프트카드 3만원권 상세보기">
	                            <div class="soldout">SOLD OUT</div>
	                                    <div class="label new">NEW</div>
	                            <div class="img"><img src="https://img.megabox.co.kr/SharedImg/store/2022/09/02/UhUaGPc8CkaIn0wdjvdz6yhunnOzYdaP_280.png" alt="" onerror="noImg(this);"></div>
	
	                            <div class="info">
	                                <div class="tit">
	                                    <!-- 제품명 최대 2줄 -->
	                              <p class="name">Cinema 기프트카드 3만원권</p>
	
	                                    <!-- 제품구성 최대 2줄 -->
	                                    <p class="bundle">Cinema 기프트카드 3만원권</p>
	                                </div>
	
	                                <div class="price">
	                                    <p class="original">
	                                    
	                                    </p>
	                                      <p class="sale">
	                                          <em>30,000</em>
	                                          <span>원</span>
	                                      </p>
	                                     <p class="ea">
	                                     </p>
	                                </div>
	                            </div>
	                        </a>
	                    </li>
	                    <li class="">
	                        <a href="javascript:fn_storeDetail('1766');" title="메가박스 기프트카드 5만원권 상세보기">
	                            <div class="soldout">SOLD OUT</div>
	                                    <div class="label new">NEW</div>
	                            <div class="img"><img src="https://img.megabox.co.kr/SharedImg/store/2022/09/02/SvDPUHovAC2t5VdkHNby25qYMYGNp3tN_280.png" alt="" onerror="noImg(this);"></div>
	                            <div class="info">
	                                <div class="tit">
	                                    <!-- 제품명 최대 2줄 -->
	                              <p class="name">Cinema 기프트카드 5만원권</p>
	
	                                    <!-- 제품구성 최대 2줄 -->
	                                    <p class="bundle">Cinema 기프트카드 5만원권</p>
	                                </div>
	
	                                <div class="price">
	                                    <p class="original">
	                                    </p>
	                                      <p class="sale">
	                                          <em>50,000</em>
	                                          <span>원</span>
	                                      </p>
	                                     <p class="ea">
	                                         
	                                     </p>
	                                    
	                                </div>
	                            </div>
	                        </a>
	                    </li>
                    </ul>
                </div>
                <!--// store-list -->
            </div>
            <div id="divCategoryPrdtArea_CPC02" style="display:none">
                <!-- store-list -->
                <div class="store-list mt30">
                    <ul class="list">
                    </ul>
                </div>
                <!--// store-list -->
            </div>
            <div id="divCategoryPrdtArea_CPC05" style="display:none">
                <!-- store-list -->
                <div class="store-list mt30">
                    <ul class="list">
                    </ul>
                </div>
                <!--// store-list -->
            </div>
        
            <div id="divCategoryPrdtArea_CPC07" style="display:none">
                <!-- store-list -->
                <div class="store-list mt30">
                    <ul class="list">
                    </ul>
                </div>
                <!--// store-list -->
            </div>
        <!--// 카테고리 별 상품 -->
    </div>
    <!--// inner-wrap -->
</div>
</body>
</html>