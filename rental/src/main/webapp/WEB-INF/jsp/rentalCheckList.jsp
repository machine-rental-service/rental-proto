<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hackaton.prize.domain.Rental" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>대여 승인 목록</title>
</head>
<body>
<div class="table-responsive">
<table class="table table-bordered table-hover">
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
    <% List<Rental> myRentalList=(List<Rental>)request.getAttribute("myRentalList");
        for(int i=0; i<myRentalList.size(); i++){
    %>
    <tr onclick="location.href='rentalCheckDetail/<%=myRentalList.get(i).getId()%>'">
        <td scope="row"><%=myRentalList.get(i).getId()%></td>
        <td><%=myRentalList.get(i).getId()%></td>
        <td><%=myRentalList.get(i).getLocalInstitution()%></td>
        <td><c:if test="${myRentalList.get(i).rentalDetail.tractor>0}">
            트랙터 ${myRentalList.get(i).rentalDetail.tractor}
        </c:if>
            <c:if test="${myRentalList.get(i).rentalDetail.cultivator>0}">
                경운기 ${myRentalList.get(i).rentalDetail.cultivator}
            </c:if>
            <c:if test="${myRentalList.get(i).rentalDetail.farmMaster>0}">
                관리기 ${myRentalList.get(i).rentalDetail.farmMaster}
            </c:if>
            <c:if test="${myRentalList.get(i).rentalDetail.undergroundCropExtractor>0}">
                땅속작물수확기 ${myRentalList.get(i).rentalDetail.undergroundCropExtractor}
            </c:if>
            <c:if test="${myRentalList.get(i).rentalDetail.thresher>0}">
                탈곡기 ${myRentalList.get(i).rentalDetail.thresher}
            </c:if>
            <c:if test="${myRentalList.get(i).rentalDetail.sower>0}">
                자주형 종파기 ${myRentalList.get(i).rentalDetail.sower}
            </c:if>
            <c:if test="${myRentalList.get(i).rentalDetail.ricePlantingMachine>0}">
                이앙 작업기 ${myRentalList.get(i).rentalDetail.ricePlantingMachine}
            </c:if>
            <c:if test="${myRentalList.get(i).rentalDetail.riceHarvester>0}">
                벼 수확기 ${myRentalList.get(i).rentalDetail.riceHarvester}
            </c:if></td>
        <td><%=myRentalList.get(i).getLesseeName()%></td>
        <td><%=myRentalList.get(i).getApplied()%></td>
        <td><%=myRentalList.get(i).getStatus()%></td>
    </tr>
    <% } %>
    </tbody>
</table>
</div>
</body>
</html>
