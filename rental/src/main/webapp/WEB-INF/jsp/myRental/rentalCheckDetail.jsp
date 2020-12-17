<%@ page import="com.hackaton.prize.domain.Rental" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>대여 조회</title>

    <!-- Custom fonts for this template -->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <%@ include file="../sidebar.jsp" %>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <%@ include file="../topbar2.jsp" %>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800 mb-4">대여 현황 상세 조회</h1>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">대여자 정보</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <% Rental rental = (Rental) request.getAttribute("rental"); %>
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <tr>
                                    <th width="10%">이름</th>
                                    <td width="15%"><%=rental.getLesseeName()%>
                                    </td>
                                    <th width="10%">이메일</th>
                                    <td width="30%"><%=rental.getLesseeEmail()%>
                                    </td>
                                    <th width="10%">생년월일</th>
                                    <td width="25%"><%=rental.getLesseeAddress()%>
                                    </td>
                                </tr>
                                <tr>
                                    <th>주소</th>
                                    <td colspan="3"><%=rental.getLesseeAddress()%>
                                    </td>
                                    <th>전화번호</th>
                                    <td><%=rental.getLesseePhoneNumber()%>
                                    </td>
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
                                    <td width='14%'><%=rental.getLocalInstitution()%>
                                    </td>
                                    <th width='10%'>대여물품</th>
                                    <td colspan="5"><% String rentalequip = "";
                                        if (rental.getRentalDetail().getTractor() > 0) {
                                            rentalequip += "트랙터 " + rental.getRentalDetail().getTractor() + " / ";
                                        }
                                        if (rental.getRentalDetail().getCultivator() > 0) {
                                            rentalequip += "경운기 " + rental.getRentalDetail().getCultivator() + " / ";
                                        }
                                        if (rental.getRentalDetail().getFarmMaster() > 0) {
                                            rentalequip += "관리기 " + rental.getRentalDetail().getFarmMaster() + " / ";
                                        }
                                        if (rental.getRentalDetail().getUndergroundCropExtractor() > 0) {
                                            rentalequip += "땅속작물수확기 " + rental.getRentalDetail().getUndergroundCropExtractor() + " / ";
                                        }
                                        if (rental.getRentalDetail().getThresher() > 0) {
                                            rentalequip += "탈곡기 " + rental.getRentalDetail().getThresher() + " / ";
                                        }
                                        if (rental.getRentalDetail().getSower() > 0) {
                                            rentalequip += "자주형 종파기 " + rental.getRentalDetail().getSower() + " / ";
                                        }
                                        if (rental.getRentalDetail().getRicePlantingMachine() > 0) {
                                            rentalequip += "이앙 작업기 " + rental.getRentalDetail().getRicePlantingMachine() + " / ";
                                        }
                                        if (rental.getRentalDetail().getRiceHarvester() > 0) {
                                            rentalequip += "벼 수확기 " + rental.getRentalDetail().getRiceHarvester() + " / ";
                                        }
                                        if (!rental.getRentalDetail().getOtherToolsRequest().equals("")) {
                                            rentalequip += "" + rental.getRentalDetail().getOtherToolsRequest();
                                        }
                                    %></td>
                                </tr>
                                <tr>
                                    <th width='10%'>접수상태</th>
                                    <td width='12%'><%=rental.getStatus()%>
                                    </td>
                                    <th width='13%'>접수일자</th>
                                    <td width='13%'><%=rental.getApplied()%>
                                    </td>
                                    <th width='13%'>대여시작일</th>
                                    <td width='13%'><%=rental.getStarted()%>
                                    </td>
                                    <th width='13%'>반납(예정)일</th>
                                    <td width='13%'><%=rental.getDeadline()%>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary float-left">Comment(비고사항)</h6>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <div class="form-control form-control-user" rows="4" name="staffComment">
                                <% if(rental.getRentalDetail().getStaffComment()==null) {
                                %>
                                <div style="color: #ff1002">
                                   대여 승인 전입니다.
                                </div>
                                <%}else{%>
                                <div><%=rental.getRentalDetail().getStaffComment()%></div>
                                <%}%>
                            </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End of Main Content -->

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

<!-- Custom scripts for all pages-->
<script src="../js/sb-admin-2.min.js"></script>

<script src="../vendor/datatables/moment.min.js"></script>
<!-- Page level plugins -->
<script src="../vendor/datatables/jquery.dataTables.min.js"></script>
<script src="../vendor/datatables/dataTables.bootstrap4.min.js"></script>
<script src="../vendor/datatables/datetime-moment.js"></script>

</body>
</html>