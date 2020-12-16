<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Tables</title>

<!-- Custom fonts for this template -->
<link href="static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="static/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="../sidebar.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@ include file="../topbar.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800 mb-4">대여 신청 상세 조회</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">대여자 정보</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<tr>
										<th width="10%">이름</th>
										<td width="15%">${rental.lesseeName}</td>
										<th width="10%">이메일</th>
										<td width="30%">${rental.lesseeEmail}</td>
										<th width="10%">생년월일</th>
										<td width="25%">${rental.lesseeBirthday}</td>
									</tr>
									<tr>
										<th>주소</th>
										<td colspan="3">${rental.lesseeAddress}</td>
										<th>전화번호</th>
										<td>${rental.lesseePhoneNumber}</td>
									</tr>
								</table>
							</div>
						</div>
					</div>

					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">대여 정보</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<tr>
										<th width='8%'>대여소</th>
										<td width='14%'>${rental.localInstitution}</td>
										<th width='10%'>대여물품</th>
										<td colspan="5"><c:if test="${rental.rentalDetail.tractor>0}">트랙터 ${rental.rentalDetail.tractor} </c:if> <c:if test="${rental.rentalDetail.cultivator>0}">경운기 ${rental.rentalDetail.cultivator} </c:if>
											<c:if test="${rental.rentalDetail.farmMaster>0}">관리기 ${rental.rentalDetail.farmMaster} </c:if> <c:if test="${rental.rentalDetail.undergroundCropExtractor>0}">땅속작물수확기 ${rental.rentalDetail.undergroundCropExtractor}</c:if>
											<c:if test="${rental.rentalDetail.thresher>0}">탈곡기 ${rental.rentalDetail.thresher}</c:if> <c:if test="${rental.rentalDetail.sower>0}">자주형 종파기 ${rental.rentalDetail.sower}</c:if> <c:if
												test="${rental.rentalDetail.ricePlantingMachine>0}">이앙 작업기 ${rental.rentalDetail.ricePlantingMachine}</c:if> <c:if test="${rental.rentalDetail.riceHarvester>0}">벼 수확기 ${rental.rentalDetail.riceHarvester}</c:if>
											<c:if test="${rental.rentalDetail.otherToolsRequest ne null}">${rental.rentalDetail.otherToolsRequest}</c:if></td>
									</tr>
									<tr>
										<th width='10%'>접수상태</th>
										<td width='12%'>${rental.status}</td>
										<th width='13%'>접수일자</th>
										<td width='13%'>${rental.applied}</td>
										<th width='13%'>대여시작일</th>
										<td width='13%'>${rental.started}</td>
										<th width='13%'>반납(예정)일</th>
										<td width='13%'>${rental.deadline}</td>
									</tr>
								</table>
							</div>
						</div>
					</div>

					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary float-left">Comment(비고사항)</h6>
							<div id="btnBox" class='float-right' >
								<c:choose>
									<c:when test="${rental.status eq '승인 대기중'}">
										<button value="신청 승인" class="btn btn-primary btn-sm">승인</button>
										<button value="신청 반려" class="btn btn-dark btn-sm">반려</button>
									</c:when>
									<c:otherwise>
										<button value="modify" class="btn btn-dark btn-sm" type="button">코멘트 수정</button>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="card-body">
							<div class="form-group">
								<form id="updateStatusForm" class='form-group' action="/admin/update_status" method="post">
									<textarea class="form-control form-control-user" rows="4" name="staffComment">${rental.rentalDetail.staffComment}</textarea>
									<input type="hidden" name="id" value="${rental.id}">
									<input type="hidden" name="func" value="">

								</form>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>


	<!-- Bootstrap core JavaScript-->
	<script src="static/vendor/jquery/jquery.min.js"></script>
	<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="static/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<script src="static/vendor/datatables/moment.min.js"></script>
	<!-- Page level plugins -->
	<script src="static/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="static/vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="static/vendor/datatables/datetime-moment.js"></script>

	<script type="text/javascript">
		$("#btnBox .btn").click(function(e) {
			e.preventDefault();

			$("#updateStatusForm input[name='func']").val($(this).attr('value'));

			$("#updateStatusForm").submit();
		});
	</script>
</body>
</html>