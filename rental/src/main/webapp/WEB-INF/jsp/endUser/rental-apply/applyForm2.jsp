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

<title>일반인 모드 - 대여 신청 2단계</title>

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

					<h1 class="h3 mb-2 text-gray-800 mb-4">생활공구/농기계 대여신청</h1>

					<ol class="step-list row">
						<li class="col-6">
							<strong class='rounded'>STEP1<span>신청인 정보</span></strong>
						</li>
						<li class='on col-6'>
							<strong class='rounded'>STEP2<span>대여 신청</span></strong>
						</li>
					</ol>

					<hr>
					<ol id='toolList' class="step-list row">
						<li class="col-6 ">
							<button class='col-6 btn-lg ' value="farmInst">농기구 대여</button>
						</li>
						<li class="col-6 ">
							<button class='col-6 btn-lg ' value="lifeInst">생활공구 대여</button>
						</li>
					</ol>

					<form id='applay2Form' action="step2" method="POST" onsubmit="return send()">
						<div class="card  border-bottom">
							<div class="card-header py-3">
								<h4 class="m-0 font-weight-bold text-primary">
									<c:out value="${institution.name}" />
									(
									<c:out value="${institution.product}" />
									) 를 선택하셨습니다.
								</h4>
								<h6 class='text-danger'>수령희망일을 꼭 선택해주세요!</h6>
							</div>

							<div class='row mt-2'>
								<div class='col-2 my-auto pl-5 mx-auto'>
									<h5>
										<label class="label req text-danger bold" for="lesseeName">* 수령희망일</label>
									</h5>
								</div>
								<div class='col-10'>
									<input id = 'started' name="started" type="date" class="form-control form-control-user input-text">
									<p class="text-gray-600">반납일은 수령희망일로부터 3일 후입니다.</p>
								</div>
							</div>
							<hr class='m-0'>
							<div id='instDiv'>
								<div id="farmInst" class="col-lg-12">
									<div class="p-1">
										<table class="" id="dataTable" class=' border-top'>
											<tr>
												<th width="15%" class='text-center'><label class="label ">트랙터</label></th>
												<td width="35%">
													<div class="input-ex-text ">
														<input name="tractor" type="number" value="0" class='col-sm-11 form-control form-control-user input-text'>
														<span class="ex-txt">(보유 수량: <c:out value="${institution.tractor}" />)
														</span>
													</div>
												</td>
												<th width="15%" class='text-center'><label class="label">경운기</label></th>
												<td width="35%"><div class="input-ex-text ">
														<input name="cultivator" type="number" value="0" class='col-sm-11 form-control form-control-user input-text'>
														<span class="ex-txt">(보유 수량: <c:out value="${institution.cultivator}" /> )
														</span>
													</div></td>
											</tr>
											<tr>
												<th class='text-center'><label class="label ">관리기</label></th>
												<td>
													<div class="input-ex-text ">
														<input name="farmMaster" type="number" value="0" class='col-sm-11 form-control form-control-user input-text'>
														<span class="ex-txt">(보유 수량: <c:out value="${institution.farmMaster}" />)
														</span>
													</div>
												</td>
												<th class='text-center'><label class="label">땅속작물수확기</label></th>
												<td>
													<div class="input-ex-text ">
														<input name="undergroundCropExtractor" type="number" value="0" class='col-sm-11 form-control form-control-user input-text'>
														<span class="ex-txt">(보유 수량: <c:out value="${institution.undergroundCropExtractor}" /> )
														</span>
													</div>
												</td>
											</tr>
											<tr>
												<th class='text-center'><label class="label ">탈곡기</label></th>
												<td>
													<div class="input-ex-text ">
														<input name="thresher" type="number" value="0" class='col-sm-11 form-control form-control-user input-text'>
														<span class="ex-txt">(보유 수량: <c:out value="${institution.thresher}" />)
														</span>
													</div>
												</td>
												<th class='text-center'><label class="label">자주형 종파기</label></th>
												<td>
													<div class="input-ex-text ">
														<input name="sower" type="number" value="0" class='col-sm-11 form-control form-control-user input-text'>
														<span class="ex-txt">(보유 수량: <c:out value="${institution.sower}" /> )
														</span>
													</div>
												</td>
											</tr>
											<tr>
												<th class='text-center'><label class="label ">이앙기</label></th>
												<td>
													<div class="input-ex-text ">
														<input name="ricePlantingMachine" type="number" value="0" class='col-sm-11 form-control form-control-user input-text'>
														<span class="ex-txt">(보유 수량: <c:out value="${institution.ricePlantingMachine}" />)
														</span>
													</div>
												</td>
												<th class='text-center'><label class="label">벼수확기</label></th>
												<td>
													<div class="input-ex-text ">
														<input name="riceHarvester" type="number" value="0" class='col-sm-11 form-control form-control-user input-text'>
														<span class="ex-txt">(보유 수량: <c:out value="${institution.riceHarvester}" /> )
														</span>
													</div>
												</td>
											</tr>
											<tr>
												<th class='text-center'><label class="label">기타 임대 농기계<br>보유정보(미지원)<br>
													<span class='small'>(사유: 표준데이터 불량)</span></label></th>
												<td colspan="3">
													<h6 class='bold'>데이터가 표준화되어있지 않아, 현재 지원하지 않고 있습니다.</h6> <small>https://www.data.go.kr/data/15017325/standard.do</small>
													<div>
														<img src="../../img/2.jpg">
													</div>
												</td>
											</tr>
										</table>
									</div>
								</div>
								<div id='lifeInst' class="col-lg-12">
									<div class="p-1">
										<table class="" id="dataTable">
											<tr>
												<th width="15%" class='text-center'><label class="label">생활 공구<br>(부분시행중)<br> <span class='small'>(사유: 데이터 갱신 오래됨(2016년)&불량)</span></label></th>
												<td width="85%">
													<table class='dataTable'>
														<tr>
															<th width="25%" class='text-center'>서울시<br>집수리공구대여소<br>취급품
															</th>
															<td width="70%" id='seoulToolList'>
																<p class='btn '>충전 햄머드릴(BLDC) 18V/5Ah</p>
																<p class='btn '>충전 드라이버드릴(BLDC) 18V/5Ah</p>
																<p class='btn '>임팩트 드릴 16mm</p>
																<p class='btn '>드릴셋트33PCS</p>
																<p class='btn '>공구셋트스마토 16PCS</p>
																<p class='btn '>공구셋트스마토 25PCS</p>
																<p class='btn '>치타접톱 (대)</p>
																<p class='btn '>서울사다리 LS-43</p>
																<p class='btn '>줄자 5.5M</p>
																<p class='btn '>전선릴 30M</p>
																<p class='btn '>막삽</p>
																<p class='btn '>각삽</p>
																<p class='btn '>톱 (톱날 265/300)</p>
																<p class='btn '>컷쏘US-400XE</p>
																<p class='btn '>(공업용)진공청소기(S-201) 220V 20L</p>
																<p class='btn '>우마(수평작업발판) 300*1600mm</p>
															</td>
														</tr>
														<tr>
															<th class='text-center'>공구도서관<br>(사회복지관 또는 주민센터)
															</th>
															<td class='align-middle'>서울시 공구도서관(대여소)<span class='small text-gray-600'>http://data.seoul.go.kr/dataList/OA-13138/S/1/datasetView.do</span> 목록 참고
															</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td colspan="2"><textarea rows="" cols="2" placeholder="ex) 니퍼(6# 2개), 막줄자(7.5m 2개)" name="otherToolsRequest" id="otherToolsRequest" class="form-control form-control-user input-text"></textarea>
											</tr>
										</table>
									</div>
								</div>
							</div>

						</div>
						<!-- DataTales Example -->


						<hr>

						<div class="card mb-1">
							<div class="card-header py-3 border-bottom-danger">
								<h5 class="m-0 font-weight-bold">주의사항</h5>
							</div>
							<div class='mt-2'>
								<div class='p-3'>
									<h6 class='mb-2'>
										1) 기본 대여 가능일은 <span class='font-weight-bold'>3</span>일입니다.
									</h6>
									<h6 class='mb-2'>
										2) <span class='font-weight-bold'>추가 교육이수</span>가 필요할 수 있습니다.
									</h6>
									<h6 class='mb-2'>
										3) 일부 농기계/공구는 <span class='font-weight-bold'>비용이 발생</span>합니다.
									</h6>
									<h6 class='mb-2'>
										4) 대여는 <span class='font-weight-bold'>선착순</span>으로 진행됩니다. 재고가 없을시 신청 반려 될 수 있습니다.
									</h6>
								</div>
							</div>
						</div>
						<div class="button-group a-c">
							<button type='submit' class="col-lg-2 rounded btn btn-primary  btn-lg">신청하기</button>
						</div>
						
						
					</form>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<%@ include file="../../footer.jsp"%>
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
	<!-- 	여있었음 -->

	<script type="text/javascript">
		$(document).ready(function() {
			$("#instDiv>div").hide();
		});

		$('#toolList button').click(function(e) {
			e.preventDefault();
			/* 기존 거 숨기기 */
			$("#instDiv>div").hide();
			$('#toolList button').css('background-color', '');

			$(this).css('background-color', '#4e73df');

			var selectedForm = '#' + $(this).val();

			$(selectedForm).show();
		});

		function send(){
			if($("#started").val() == null || $("#started").val() == ''){
				 alert("희망대여일을 선택해주세요!");
				 $("#started").focus();
				 return false;
			}else{
				return true;
			}
        }
	</script>

	<!-- 여부터 -->
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
	<!-- 여까지  -->
</body>
</html>