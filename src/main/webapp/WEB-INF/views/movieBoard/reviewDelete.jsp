<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<style>
	.movie{
			float: left;
			margin-right: 50px;
			width: 23%;
			font-size: 20px;
			
	}
	img{
		width: 300px;
		height: 300px;
		
	}
	#review{
		margin: 0 auto;
	}
	#reviewAllList{
	margin: 0 auto;
	text-align: center;
	font-size: 20px;
	
	}
	#reviewAllList>tr>td{
		border: 1px solid #ddd;
	}
	
	
	
	#reviewList{
		margin: 0 auto;
		text-align: center;
		font-size: 20px;
		font-weight: bold;
		color: black;
		
	}
	
	#reviewListHeader{
		font-size: 30px;
		font-weight: bold;
		color: black;
		text-align: center;
	}
	#reviewtable{
		margin: 0 auto;
		font-size: 15px;
		font-weight: bold;
		color: black;
	}
</style>
<body class="landing-page landing-page2">
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<div class="main" style="background-image: url('images/main.png')">
		<div class="cover black" data-color="black"></div>
		<div class="container">
			<h1 class="logo cursive">movies</h1>
			<div class="content">
				<div class="subscribe">
					<div class="motto">
						<table id="ReviewAllList">

						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="exampleModalLong" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLongTitle"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">영화 상세 정보</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div id="mo"
							style="text-align: center; font-size: 20px; margin-bottom: 10px; margin-left: 20px">
						</div>
						<div id="reviewListHeader">
						<hr>
			한줄평
			<hr>
			
		</div>
		<form id="review">
		<table id="reviewtable">
			
			</table>
		</form>
		<br><hr>
		<table id="reviewList">
			
		</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">닫기</button>
						<button type="button" class="btn btn-primary">예매 하러 가기</button>
					</div>
				</div>
			</div>
		</div>
		
	</div>


</html>
