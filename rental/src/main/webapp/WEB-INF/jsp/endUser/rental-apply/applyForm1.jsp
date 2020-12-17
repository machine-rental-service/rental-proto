<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/endUser/rental-apply/portalScriptInc.jspf"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>일반인 모드 - 대여 신청</title>

<link rel="stylesheet" href="../css/custom.css" media="all">

<!-- Custom fonts for this template -->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
<script>
	function findInstitution() {
		window.open("/institution/search", "주소검색", "");
	}

	function setInstitution(keyword) {
		document.getElementById("localInstitution").value = keyword;
	}
</script>
<script type="text/javaScript">
	$(function() {
		//필수입력항목 미입력시 안내 메세지 숨김처리
		$(".input-warning").hide();
		$(".input-success").hide();
	});
</script>

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<%@ include file="../../sidebar.jsp"%>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<%@ include file="../../topbar.jsp"%>
				<!-- End of Topbar -->
				<!-- Begin Page Content -->
				<div class="container-fluid row-table">
					<!-- Page Heading -->
					<form id='applayForm' action="step1" method="POST" onsubmit="return fn_next()">
						<h1 class="h3 mb-2 text-gray-800 mb-4">생활공구/농기계 대여신청</h1>

						<ol class="step-list row">
							<li class="on col-6">
								<strong>STEP1<span>신청인 정보</span></strong>
							</li>
							<li class='col-6'>
								<strong>STEP2<span>대여 신청</span></strong>
							</li>
						</ol>

						<!-- DataTales Example -->
						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h4 class="m-0 font-weight-bold text-primary">대여자 기본정보 입력</h4>
								<span class="small text-danger" style="color: red;">*가 붙은 항목은 필수 입력 항목입니다</span>
							</div>
							<div class="card-body">
								<div class="col-lg-12">
									<div class="p-1">
										<table class="" id="dataTable">
											<tr>
												<th width="15%"><label class="label req" for="lesseeName">이름</label></th>
												<td width="85%">
													<div class="">
														<input type="text" title="이름" placeholder="ex) 김빌림" id="lesseeName" name="lesseeName" class="form-control form-control-user input-text" maxlength="11">
														<div class="input-util">
															<p class="input-warning text-danger">이름을 입력해주세요</p>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<th><label class="label req" for="lesseeBirthday">생년월일</label></th>
												<td>
													<div class="">
														<input type="text" title="생년월일 입력" placeholder="ex) 970909" id="lesseeBirthday" name="lesseeBirthday" class="form-control form-control-user input-text" maxlength="6">
														<div class="input-util">
															<p class="input-warning text-danger">생년월일을 입력해주세요</p>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<th><label for="lesseePhoneNumber" class="label req">연락처</label></th>
												<td>
													<div class="">
														<input type="text" title="연락처1 입력" placeholder="ex) 010-5555-8282" id="lesseePhoneNumber" name="lesseePhoneNumber" class="form-control form-control-user input-text" maxlength="11">
														<div class="input-util">
															<p class="input-warning text-danger">연락처를 입력해주세요</p>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<th><label for="lesseeEmail" class="label req">이메일</label></th>
												<td>
													<div class="">
														<input type="email" title="이메일" placeholder="ex) billim@farm.com" id="lesseeEmail" name="lesseeEmail" class="form-control form-control-user input-text" maxlength="11">
														<div class="input-util">
															<p class="input-warning text-danger">이메일을 입력해주세요</p>
														</div>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>

						<div class="card shadow mb-4">
							<div class="card-header py-3">
								<h4 class="m-0 font-weight-bold text-primary">주소/임대사무소 찾기</h4>
							</div>
							<div class="card-body">
								<div class="col-lg-12">
									<div class="p-1">
										<table class="" id="dataTable">
											<tr>
												<th width="15%"><label class="label req" for="lesseeAddress">거주지 주소</label></th>
												<td width="85%">
													<div class="">
														<input type="text" title="주소(소재지) 입력" placeholder="ex) 사랑시 고백구 행복동 희망아파트" id="lesseeAddress" name="lesseeAddress" class="form-control form-control-user input-text">
														<div class="input-util">
															<p class="input-warning text-danger">주소를 입력해주세요</p>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<th><label class="label req" for='localInstiBtn'>권역 임대사무소</label></th>
												<td>
													<div class="row ml-0">
														<input value='test' type="text" id="localInstitution" name="localInstitution" class="col-sm-10 form-control form-control-user input-text" readonly="readonly">
														<button id='localInstiBtn' type="button" class="btn btn-primary col-sm-2" onclick="findInstitution()">사무소 찾기</button>
													</div>
													<div class="input-util">
															<p class="input-warning text-danger">사무소를 선택해주세요 (새 창이 뜨지 않을시, "팝업 해제"를 확인해주세요)</p>
													</div>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>

						<div class="button-group a-c">
							<a class="btn btn-secondary">임시저장</a>
							<button type="submit" id='applaySubmitBtn' class="btn btn-primary">다음</button>
						</div>
					</form>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<%@ include file="../../footer.jsp"%>
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

	<!-- Bootstrap core JavaScript-->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../js/sb-admin-2.min.js"></script>

	<script src="../vendor/datatables/moment.min.js"></script>
	<!-- Page level plugins -->
	<script src="../vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>
	<script src="../vendor/datatables/datetime-moment.js"></script>

	<!-- Page level custom scripts -->
	<script src="../js/demo/datatables-demo.js"></script>

	<!-- jquery ui 추가 -->
	<script src="../vendor/datatables/jquery-ui.min.js"></script>

	<script type="text/javascript">
	
		function findInstitution() {
			window.open("/institution/search", "주소검색", "");
		}

		function setInstitution(keyword) {
			document.getElementById("localInstitution").value = keyword;
		}
		
		/**
		 * 다음 버튼 누를 시
		 */
		function fn_next() {
			//입력 항목 확인
			if (!fn_validation())
				return false;
			else
				return true;
		}

		/**
		 *  입력항목 체크
		 */
		function fn_validation() {

			//필수입력항목 미입력시 안내 메세지 숨김처리
			$(".input-warning").hide();

			//이름
			if (fn_empty($("#lesseeName").val())) {
				$("#lesseeName").next(".input-util").find(".input-warning")
						.show();
				$("#lesseeName").focus();
				return false;
			}

			//생년월일
			if (fn_empty($("#lesseeBirthday").val())) {
				$("#lesseeBirthday").next(".input-util").find(".input-warning")
						.show();
				$("#lesseeBirthday").focus();
				return false;
			}

			//연락처
			if (fn_empty($("#lesseePhoneNumber").val())) {
				$("#lesseePhoneNumber").next(".input-util").find(
						".input-warning").show();
				$("#lesseePhoneNumber").focus();
				return false;
			}

			//이메일 주소
			if (fn_empty($("#lesseeEmail").val())) {
				$("#lesseeEmail").next(".input-util").find(".input-warning")
						.show();
				$("#lesseeEmail").focus();
				return false;
			}

			//거주지 주소
			if (fn_empty($("#lesseeAddress").val())) {
				$("#lesseeAddress").next(".input-util").find(".input-warning")
						.show();
				$("#lesseeAddress").focus();
				return false;
			}

			//사무소 주소
			if (fn_empty($("#localInstitution").val())) {
				$("#localInstitution").parent(".ml-0").next('div').children(
						'.input-warning').show();
				$("#localInstitution").focus();
				return false;
			}

			return true;
		}

		/**
		 * 값이 null인지 확인
		 * param  : str - 텍스트
		 * return  : 공백인지 여부
		 */
		function fn_empty(str) {

			if (str == undefined) {
				return true;
			}

			if (str == "" || str.length <= 0) {
				return true;
			}
			return false;
		}
	</script>
</body>
</html>