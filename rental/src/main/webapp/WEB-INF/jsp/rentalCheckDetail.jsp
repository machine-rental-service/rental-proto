<%@ page import="com.hackaton.prize.domain.Rental" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>대여 상세 조회</title>
</head>
<body>
<div>
    <table class="table table-bordered">
        <tbody>
        <% Rental rental = (Rental) request.getAttribute("rental"); %>
        <tr>
            <td>대여물품</td>
            <td><c:if test="${rental.rentalDetail.tractor>0}">
                트랙터 ${rental.rentalDetail.tractor}
            </c:if>
                <c:if test="${rental.rentalDetail.cultivator>0}">
                    경운기 ${rental.rentalDetail.cultivator}
                </c:if>
                <c:if test="${rental.rentalDetail.farmMaster>0}">
                    관리기 ${rental.rentalDetail.farmMaster}
                </c:if>
                <c:if test="${rental.rentalDetail.undergroundCropExtractor>0}">
                    땅속작물수확기 ${rental.rentalDetail.undergroundCropExtractor}
                </c:if>
                <c:if test="${rental.rentalDetail.thresher>0}">
                    탈곡기 ${rental.rentalDetail.thresher}
                </c:if>
                <c:if test="${rental.rentalDetail.sower>0}">
                    자주형 종파기 ${rental.rentalDetail.sower}
                </c:if>
                <c:if test="${rental.rentalDetail.ricePlantingMachine>0}">
                    이앙 작업기 ${rental.rentalDetail.ricePlantingMachine}
                </c:if>
                <c:if test="${rental.rentalDetail.riceHarvester>0}">
                    벼 수확기 ${rental.rentalDetail.riceHarvester}
                </c:if></td>
        </tr>
        <tr>
            <td>신청자 이름</td>
            <td><%=rental.getLesseeName()%>
            </td>
        </tr>
        <tr>
            <td>주소</td>
            <td><%=rental.getLesseeAddress()%>
            </td>
        </tr>
        <tr>
            <td>전화번호</td>
            <td><%=rental.getLesseePhoneNumber()%>
            </td>
        </tr>
        <tr>
            <td>접수일자</td>
            <td><%=rental.getApplied()%>
            </td>
        </tr>
        <tr>
            <td>상태</td>
            <td><%=rental.getApplied()%>
            </td>
        </tr>
        <tr>
            <td>희망 방문수령일</td>
            <td><%=rental.getStarted()%>
            </td>
        </tr>
        <tr>
            <td>반납(예정)일</td>
            <td><%=rental.getDeadline()%>
            </td>
        </tr>
        <tr>
            <td>대여 일수</td>
            <td>3일.. ?(deadline-start)</td>
        </tr>
        <tr>
            <td>대여소</td>
            <td><%=rental.getLocalInstitution()%>
            </td>
        </tr>
        <tr>
            <td>대여금액</td>
            <td>30000원(금액필요)</td>
        </tr>
        </tbody>

    </table>
</div>
<div>
    <table class="table table-bordered">
        <thead>
        <tr>
            <td>
            비고사항
            </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <%=rental.getRentalDetail().getStaffComment()%>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
