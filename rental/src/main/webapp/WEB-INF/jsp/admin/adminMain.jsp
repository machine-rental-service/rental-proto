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
<link href="/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resource/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="/resource/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="/resource/sidebar.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<%@ include file="/resource/topbar.jsp"%>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800 mb-4">[대여소명 넣으면 좋을 거 같아요]</h1>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">신청 목록</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>연번</th>
											<th>신청번호</th>
											<th>담당 대여소</th>
											<th>대여중인 물품</th>
											<th>대여자</th>
											<th>접수일</th>
											<th>상태</th>
										</tr>
									</thead>

									<tbody>
										<c:choose>
											<c:when test="${fn:length(rentalList) > 0}">
												<c:forEach var="rental" items="${rentalList}" varStatus="status">
													<tr>
														<td>${status.count}</td>
														<td>${rental.id}</td>
														<td>${rental.localInstitution}</td>
														<td>
															<a href="/admin/rental_detail/${rental.id}">
																<c:if test="${rental.rentalDetail.tractor>0}">트랙터 ${rental.rentalDetail.tractor} </c:if>
																<c:if test="${rental.rentalDetail.cultivator>0}">경운기 ${rental.rentalDetail.cultivator} </c:if>
																<c:if test="${rental.rentalDetail.farmMaster>0}">관리기 ${rental.rentalDetail.farmMaster} </c:if>
																<c:if test="${rental.rentalDetail.undergroundCropExtractor>0}">땅속작물수확기 ${rental.rentalDetail.undergroundCropExtractor}</c:if>
																<c:if test="${rental.rentalDetail.thresher>0}">탈곡기 ${rental.rentalDetail.thresher}</c:if>
																<c:if test="${rental.rentalDetail.sower>0}">자주형 종파기 ${rental.rentalDetail.sower}</c:if>
																<c:if test="${rental.rentalDetail.ricePlantingMachine>0}">이앙 작업기 ${rental.rentalDetail.ricePlantingMachine}</c:if>
																<c:if test="${rental.rentalDetail.riceHarvester>0}">벼 수확기 ${rental.rentalDetail.riceHarvester}</c:if>
																<c:if test="${rental.rentalDetail.otherToolsRequest ne null}">${rental.rentalDetail.otherToolsRequest}</c:if>
															</a>
														</td>
														<td>${rental.lesseeName}</td>
														<td>${rental.applied}</td>
														<td>${rental.status}</td>
													</tr>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<tr>
													<td class="text-center" colspan="7">데이터가 존재하지 않습니다.</td>
												</tr>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
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
	<script src="/resource/vendor/jquery/jquery.min.js"></script>
	<script src="/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/resource/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/resource/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="/resource/vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="/resource/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/resource/js/demo/datatables-demo.js"></script>
	
	<script type="text/javascript">



	</script>

</body>

</html>