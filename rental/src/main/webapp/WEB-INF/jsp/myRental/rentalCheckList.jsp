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

    <title>대여 조회</title>

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
<%--<%@ include file="./navBar.jsp" %>--%>
<div id="wrapper">
    <%@ include file="../sidebar.jsp"%>
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">
            <%@ include file="../user-topbar.jsp"%>
            <br/>
            <!-- Begin Page Content -->
            <div class="container-fluid">
                <h5>내 대여 현황 조회</h5>
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow card-header">
                    <form action="rentalCheckList" name=rentalCheck method="get"
                          class="d-none d-sm-inline-block form-inline ml-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="email" name="email" id="inputEmail"
                                   class="form-control bg-light border-0 small"
                                   placeholder="이메일을 입력하세요" required autofocus aria-label="Search"
                                   aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item dropdown no-arrow d-sm-none show">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in show"
                                 aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="email" name="email"
                                               class="form-control bg-light border-0 small"
                                               placeholder="이메일을 입력하세요" required autofocus aria-label="Search"
                                               aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="submit">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">대여 신청시 작성했던 이메일 정보로, 이전에 작성한 대여 신청을 확인할 수 있습니다.</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <br/>
                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h5 class="m-0 font-weight-bold text-primary">대여 승인 목록</h5>
                    </div>
                    <% List<Rental> myRentalList = (List<Rental>) request.getAttribute("myRentalList");
                        if(myRentalList.size()>0){%>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
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
                                <%
                                    for (int i = 0; i < myRentalList.size(); i++) {
                                %>
                                <tr onclick="location.href='rentalCheckDetail/<%=myRentalList.get(i).getId()%>'">
                                    <td><%=i + 1%>
                                    </td>
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
                                <% }%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <%}else{%>
                    <div class="card-body"><span><h6> [내 대여 현황 조회] 에서 이메일을 입력하세요.</h6></span></div>
                    <%}%>
                </div>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <%@ include file="../footer.jsp" %>
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
