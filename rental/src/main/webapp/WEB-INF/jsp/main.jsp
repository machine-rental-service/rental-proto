<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <style type='text/css'>
    .index{
        text-align: center;
    }

    h6{
        color: gray;
    }

    .data_list{
        font-size: 0.7rem;
    }
    .button-section{
        margin-top: 0.5rem;
        margin-bottom: 0.5rem;
        margin-left: 30%;
        text-align: left;
    }
    .white-box{
        width: 50%;
    }
    </style>
    <meta charset="UTF-8">
    <title>공공장비온라인센터</title>
</head>
<body>
<%@ include file="navBar.jsp"%>
<article class="index">
<img src="img/1.jpg" alt="main-img">
<h4>공공장비온라인센터는,</h4>
<h5>공공기관에서 실시하는 농기계 또는 생활 공구 대여를 온라인으로 신청할 수 있도록 도와드립니다.</h5>
 <div class="white-box"></div>
    <div class="button-section">
        <h5>일반인 모드: &nbsp;</h5><button type="button" class="btn btn-primary" onclick="location.href = '/apply/step1'">농기계/공구 대여 신청하기</button>
<button type="button" class="btn btn-secondary" onclick="location.href = '/rentalCheck'">내 신청 확인하기</button></div>
    <div class="button-section">
        <h5>공무원 모드: &nbsp;</h5><button type="button" class="btn btn-success" onclick="location.href = '/admin/list'">대여 신청 승인/관리하기 </button>
    </div>

    <div class="button-section">
        <h5>사용된 공공데이터: <h5>
           <div class="data_list"> 전국농기계임대정보표준데이터,서울특별시 공구임대 서비스 정보 (수시), 서울시 공구도서관 (대여소) 정보 등
           </div>
    </div>

<br>
    <h6>(* 현재 프로토타입으로 축소 운영중입니다. Chrome 브라우저 사용을 권장합니다.)</h6>
</article>
<%@ include file="footer.jsp"%>
</body>
</html>