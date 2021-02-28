<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>메인 화면</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <style>
        ul li {
            list-style-type: none;
            float: left;
        }
    </style>
</head>

<body>
<!-- navi -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark fixed-top bg-primary">
    <div class="container">
        <a class="navbar-brand" href="index.html">공공장비온라인센터</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>
<!-- navi 끝-->
<div style="background-color: #EDEDED">
<!-- 슬라이드 -->
<%--<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <!-- Slide One - Set the background image for this slide in the line below -->
            <div class="carousel-item active" style="background-image: url('http://placehold.it/1900x1080')">
                <div class="carousel-caption d-none d-md-block">
                    <img src="img/main1.png" style="width: 100%;">
                </div>
            </div>
            <!-- Slide Two - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
                <div class="carousel-caption d-none d-md-block">
                    <img src="img/main2.png">
                </div>
            </div>
            <!-- Slide Three - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
                <div class="carousel-caption d-none d-md-block">
                    <img src="">
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>--%>
<!-- 슬라이드 끝-->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="img/main1.png" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="img/main2.png" alt="Second slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="img/main3.png" alt="Third slide">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<!-- 기능버튼 -->
<div class="container" >


    <div class="row">
        <div class="card-body">
            <h5>공공장비 온라인센터는</h5>
            <h6>공공기관에서 실시하는 농기계 또는 생활 공구 대여를 온라인으로 신청할수 있도록 도와드립니다.</h6>
                <h6>현재 프로토타입으로 축소운영중입니다. PC모드만 운영합니다.</h6>
                    <h6>PC Chrome 브라우저 사용을 권장합니다.</h6>
            <ul>
                <li>
                    <div class="col ml-5 mr-1">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            일반인 모드
                        </div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                            <button type="button" class="btn btn-primary" onclick="location.href = '/apply/step1'">
                                농기계/공구 대여 신청하기
                            </button>

                            <button type="button" class="btn btn-secondary"
                                    onclick="location.href = '/rentalCheck'">내 신청 확인하기
                            </button>
                        </div>

                    </div>
                </li>
                <li>
                    <div class="col ml-5 mr-1">
                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                            공무원 모드
                        </div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                            <button type="button" class="btn btn-success" onclick="location.href = '/admin/list'">대여
                                신청 승인/관리하기
                            </button>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- 기능버튼 끝-->

<!-- 호버했을때 작동하도록 .. 시도 한거-->
<%--<div class="row bg-gradient-primary" style="width: 300px; position: relative;">
    <div class="container">
        <ul style="float: left;list-style-type: none;">
            <li class="slide_box">
                <a href="/apply/step1">
                    <img style="width: 100px; height: 100px" src="img/user.png"><br>
                    <span>사용자</span>
                </a>
            </li>
            <li class="hide">
                <img style="width: 100px; height: 100px" src="img/user.png">
                <p>
                    <a href="/apply/step1">농기계/공구 대여 신청하기</a>
                </p>
                <p>
                    <a href="/rentalCheck">내 신청 확인하기</a>
                </p>
            </li>

            <!-- 관리자 -->
            <li class="slide_box">
                <a href="/admin/list">
                    <img style="width: 100px; height: 100px" src="img/admin.png"><br>
                    <span>관리자</span>
                </a>
            </li>
            <li class="hide">
                <p>
                    <a href="/admin/list">대여 신청 승인/관리하기 </a>
                </p>
            </li>
        </ul>
    </div>
</div>--%>
</div>
<%@ include file="footer.jsp" %>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

