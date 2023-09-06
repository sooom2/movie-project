<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<title>���̹���</title>
</head>
<link href="${pageContext.request.contextPath }/resources/css/common.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/inc.css" rel="stylesheet">
<!-- ��� -->
<link href="${pageContext.request.contextPath }/resources/css/sub.css" rel="stylesheet">
<!-- ���� -->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
<body>
	<jsp:include page="../nav.jsp" />
	<div class="container has-lnb">
		<div class="inner-wrap">
			<jsp:include page="lnb-area.jsp" />

			<div id="contents">
            <h2 class="tit">���ǳ���</h2>
            <div class="tab-purple mb20">
                <ul>
                    <li data-url="/mypage/myinquiry?cd=INQD01" class="on"><a href="#" class="btn" data-cd="INQD01" title="1:1 ���ǳ��� ������ �̵�">1:1 ���ǳ���</a></li>
                    <li data-url="/mypage/myinquiry?cd=INQD03"><a href="#" class="btn" data-cd="INQD03" title="��ü����/��� ���ǳ��� ������ �̵�">��ü����/��� ���ǳ���</a></li>
                    <li data-url="/mypage/myinquiry?cd=INQD02"><a href="#" class="btn" data-cd="INQD02" title="�нǹ� ���ǳ��� ������ �̵�">�нǹ� ���ǳ���</a></li>
                    <li data-url="/mypage/myinquiry?cd=INQD04"><a href="#" class="btn" data-cd="INQD04" title="����/����/�δ��� ���ǳ��� ������ �̵�">����/����/�δ��� ���ǳ���</a></li>
                </ul>
            </div>

            <div class="mypage-infomation mt20">
                <ul class="dot-list mb20">
                    <li id="tabDesc">�����͸� ���� ����� 1:1 ���ǳ����� Ȯ���Ͻ� �� �ֽ��ϴ�.</li>
                    <!-- <li>�����Ͻñ� �� <a href="/support/faq" class="a-link"><strong>���ֹ�������</strong></a>�� Ȯ���Ͻø� �ñ����� ���� ������ �ذ��Ͻ� �� �ֽ��ϴ�</li> -->
                </ul>

                <div class="btn-group right">
                    <a href="#" class="button" id="inqBtn" title="1:1 �����ϱ�">1:1 �����ϱ�</a>
                </div>
            </div>

            <div class="board-list-util mb10">
                <p class="result-count">
                    <!-- to ���� : �˻��� ���� ��� -->
                    <strong>��ü (<b id="totalCnt">0</b>��)</strong>
                </p>

                <div class="dropdown bootstrap-select bs3"><select id="custInqStatCd" onchange="javascript:$('#searchBtn').click();" class="" tabindex="-98">
                    <option value="">��ü</option>
                    
                        
                            <option value="INQST1">�̴亯</option>
                        
                    
                        
                            <option value="INQST2">�亯�Ϸ�</option>
                        
                    
                        
                    
                        
                    
                        
                    
                </select><button type="button" class="btn dropdown-toggle btn-default bs-placeholder" data-toggle="dropdown" role="button" data-id="custInqStatCd" title="��ü"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">��ü</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>

                <div class="board-search ml07">
                    <input type="text" title="�˻�� �Է��� �ּ���." placeholder="�˻�� �Է��� �ּ���." class="input-text" id="searchTxt" value="">
                    <button type="button" class="btn-search-input" id="searchBtn">�˻�</button>
                </div>
            </div>

            <div class="table-wrap">
                <table class="board-list a-c">
                    <caption>��ȣ, ����, ����, ����, �亯����, ����� ������ �����ִ� 1:1 ���� ���� ǥ�Դϴ�</caption>
                    <colgroup>
                        <col style="width:80px">
                        <col style="width:140px;">
                        <col style="width:120px;">
                        <col>
                        <col style="width:160px;">
                        <col style="width:100px;">
                    </colgroup>
                    <thead>
                    <tr style="line-height: 38px">
                        <th scope="col">��ȣ</th>
                        <th scope="col">����</th>
                        <th scope="col">����</th>
                        <th scope="col">����</th>
                        <th scope="col">�亯����</th>
                        <th scope="col">�����</th>
                    </tr>
                    </thead>
                    <tbody><tr><td colspan="6">����� �����ϴ�.</td></tr></tbody>
                </table>
            </div>
            <section id="layer-01" class="layer-popup" style="top: 31px; left: 304.5px; width: 500px; height:300px; opacity: 1; display: none;">
                <div class="wrap">
                    <header class="layer-header">
                        <h3 class="tit">
                            ��й�ȣ �Է�
                        </h3>
                    </header>

                    <div class="layer-con">
                        <p>�� �ۼ��� �Է��� ��й�ȣ�� �Է����ּ���.</p>
                        <div class="box-gray a-c">
                            <input type="password" id="password" title="��й�ȣ �Է�" class="input-text w250px">
                            <p class="fc_r mt10 mb0">��й�ȣ�� ��ġ���� �ʽ��ϴ�. �ٽ� �Է����ּ���.</p>
                        </div>
                        <div class="btn-group">
                            <a href="#" class="button small lyclose" id="cancelBtn" title="���">���</a>
                            <a href="#" class="button small purple" id="chkBtn" title="Ȯ��">Ȯ��</a>
                        </div>
                    </div>

                    <button type="button" class="btn-layer-close">���̾� �ݱ�</button>
                </div>
            </section>
            <!-- pagination -->
            <nav class="pagination"></nav>
            <!--// pagination -->
        </div>
		</div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>