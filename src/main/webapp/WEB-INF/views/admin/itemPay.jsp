<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Register - SB Admin</title>
        <link href="resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
            <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">스토어 결제 관리</h3></div>
                                    <div class="card-body">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main><br><br>
                <br><br>
                <hr><br><br>
                <div class="datatable-container">
					<table id="datatablesSimple" class="datatable-table">
						<thead>
							<tr>
								<th data-sortable="true" style="width: 7%;"><a
									href="#" class="datatable-sorter">결제 코드</a></th>
								<th data-sortable="true" style="width: 10%;"><a
									href="#" class="datatable-sorter">회원 아이디</a></th>
								<th data-sortable="true" style="width: 10%;"><a
									href="#" class="datatable-sorter">결제 타입</a></th>
								<th data-sortable="true" style="width: 10%;"><a
									href="#" class="datatable-sorter">결제 가격</a></th>
								<th data-sortable="true" style="width: 10%;"><a
									href="#" class="datatable-sorter">결제 날짜</a></th>
								<th data-sortable="true" style="width: 10%;"><a
									href="#" class="datatable-sorter">결제 취소 날짜</a></th>
								<th data-sortable="true" style="width: 10%;"><a
									href="#" class="datatable-sorter">결제 상태</a></th>
								<th data-sortable="true" style="width: 10%;"><a
									href="#" class="datatable-sorter"></a></th>
							</tr>
						</thead>
						<!-- 회원목록 -->
						<tbody>
							<tr data-index="0">
								<td>!@#Dasd2asd334</td>
								<td>admin</td>
								<td>카드</td>
								<td>20,000</td>
								<td>2023-04-05</td>
								<td></td>
								<td>결제 완료</td>
								<td>
									<input class="btn btn-primary btn-block" type="button" value="수정">
									<input class="btn btn-primary btn-block" type="button" value="삭제">
								</td>
							</tr>
						</tbody>
					</table>
					
				</div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
