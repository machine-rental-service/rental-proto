<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hackaton.prize.domain.Rental" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<table class="table">
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
    <tr>
        <th scope="row"><%=myRentalList.get(i).getId()%></th>
        <td><%=myRentalList.get(i).getApplied()%></td>
        <td><%=myRentalList.get(i).getLocalInstitution()%></td>
        <td><%=myRentalList.get(i).getRentalDetail()%></td>
        <td><%=myRentalList.get(i).getLesseeName()%></td>
        <td><%=myRentalList.get(i).getStarted()%></td>
        <td><%=myRentalList.get(i).getStatus()%></td>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
