<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hackaton.prize.domain.Rental" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>대여 승인 목록</title>
</head>
<body>
<%@ include file="./navBar.jsp"%>
<div class="container" style="height: 88%">
 <div class="card-body table-responsive" >
                    <h5 class="card-title text-center">내 대여 현황 목록</h5>
                    <h6 style="color:red">상세 내역을 보고싶다면, 해당 신청 정보를 클릭하세요</h6>
                    <table class="table table-bordered table-hover" >
                        <thead>
                        <tr>
                            <th scope="col">연번</th>
                            <th scope="col">신청번호</th>
                            <th scope="col">담당사무소</th>
                            <th scope="col">대여중인 물품</th>
                            <th scope="col">대여자</th>
                            <th scope="col">접수일</th>
                            <th scope="col">상태</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% List<Rental> myRentalList = (List<Rental>) request.getAttribute("myRentalList");
                            for (int i = 0; i < myRentalList.size(); i++) {
                        %>
                        <tr onclick="location.href='rentalCheckDetail/<%=myRentalList.get(i).getId()%>'">
                            <td scope="row"><%=i + 1%>
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

<%@ include file="./footer.jsp"%>
</body>
</html>
