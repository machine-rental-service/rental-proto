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
<div class="container">
    <div class="row">
        <div class="col-lg-10 col-xl-9 mx-auto">
            <div class="card" style="margin-top: 30px">
                <div class="card-body table-responsive">
                    <h5 class="card-title text-center">목록 상세보기</h5>
                    <table class="table table-bordered" align="center">
                        <tbody align="center">
                        <% Rental rental = (Rental) request.getAttribute("rental"); %>
                        <tr>
                            <td>대여물품</td>
                            <td><% String rentalequip = "";
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
                            %>
                                <%=rentalequip%>
                            </td>
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
                            <td><%=rental.getStatus()%>
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
                            <td>3일</td>
                        </tr>
                        <tr>
                            <td>대여소</td>
                            <td><%=rental.getLocalInstitution()%>
                            </td>
                        </tr>
                        <tr>
                            <td>대여금액</td>
                            <td><%=rental.getRentalDetail().getStaffComment()%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                비고사항
                            </td>
                            <td>
                                <%=rental.getRentalDetail().getStaffComment()%>
                            </td>
                        </tr>

                        </tbody>

                    </table>
                    <a type="button"  class="btn btn-primary btn-lg active" onClick="history.go(-1)">내 대여 현황 목록가기</a>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>
