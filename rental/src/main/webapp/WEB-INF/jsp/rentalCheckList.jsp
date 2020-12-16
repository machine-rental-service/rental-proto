<%@ page import="com.hackaton.prize.domain.Rental" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>대여 승인 목록</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>
<body>
<%@ include file="./navBar.jsp"%>
<div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">
            <br/>
            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">대여 승인 목록</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>연번</th>
                                    <th>신청번호</th>
                                    <th>담당사무소</th>
                                    <th>대여중인 물품</th>
                                    <th>대여자</th>
                                    <th>접수일</th>
                                    <th>상태</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% List<Rental> myRentalList = (List<Rental>) request.getAttribute("myRentalList");
                                    for (int i = 0; i < myRentalList.size(); i++) {
                                %>
                                <tr onclick="location.href='rentalCheckDetail/<%=myRentalList.get(i).getId()%>'">
                                    <td><%=i + 1%></td>
                                    <td><%=myRentalList.get(i).getId()%>
                                    </td>
                                    <td><%=myRentalList.get(i).getLocalInstitution()%>
                                    </td>
                                    <td>
                                        <% String rentalequip = "";
                                            if (myRentalList.get(i).getRentalDetail().getTractor() > 0) {
                                                rentalequip += "트랙터 " + myRentalList.get(i).getRentalDetail().getTractor() + " / ";
                                            }
                                            if (myRentalList.get(i).getRentalDetail().getCultivator() > 0) {
                                                rentalequip += "경운기 " + myRentalList.get(i).getRentalDetail().getCultivator() + " / ";
                                            }
                                            if (myRentalList.get(i).getRentalDetail().getFarmMaster() > 0) {
                                                rentalequip += "관리기 " + myRentalList.get(i).getRentalDetail().getFarmMaster() + " / ";
                                            }
                                            if (myRentalList.get(i).getRentalDetail().getUndergroundCropExtractor() > 0) {
                                                rentalequip += "땅속작물수확기 " + myRentalList.get(i).getRentalDetail().getUndergroundCropExtractor() + " / ";
                                            }
                                            if (myRentalList.get(i).getRentalDetail().getThresher() > 0) {
                                                rentalequip += "탈곡기 " + myRentalList.get(i).getRentalDetail().getThresher() + " / ";
                                            }
                                            if (myRentalList.get(i).getRentalDetail().getSower() > 0) {
                                                rentalequip += "자주형 종파기 " + myRentalList.get(i).getRentalDetail().getSower() + " / ";
                                            }
                                            if (myRentalList.get(i).getRentalDetail().getRicePlantingMachine() > 0) {
                                                rentalequip += "이앙 작업기 " + myRentalList.get(i).getRentalDetail().getRicePlantingMachine() + " / ";
                                            }
                                            if (myRentalList.get(i).getRentalDetail().getRiceHarvester() > 0) {
                                                rentalequip += "벼 수확기 " + myRentalList.get(i).getRentalDetail().getRiceHarvester() + " / ";
                                            }
                                            if (!myRentalList.get(i).getRentalDetail().getOtherToolsRequest().equals("")) {
                                                rentalequip += "" + myRentalList.get(i).getRentalDetail().getOtherToolsRequest();
                                            }
                                        %>
                                        <%=rentalequip%>
                                    </td>
                                    <td><%=myRentalList.get(i).getLesseeName()%>
                                    </td>
                                    <td><%=myRentalList.get(i).getApplied()%>
                                    </td>
                                    <td><%=myRentalList.get(i).getStatus()%>
                                    </td>
                                </tr>
                                <% } %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <%@ include file="./footer.jsp"%>
    </div>
    <!-- End of Content Wrapper -->

</div>



<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/datatables-demo.js"></script>

</body>
</html>
