<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!DOCTYPE html>
<head>

    <meta charset="UTF-8">
    <title>대여 조회</title>
</head>
<body>
<%@ include file="./navBar.jsp"%>
<div class="container" style="height: 88%">
    <div class="row">
        <div style="height: 10%"></div>
        <div class="col-lg-10 col-xl-9 mx-auto">
            <div class="card card-signin flex-row my-5">

                <div class="card-body">
                    <h5 class="card-title text-center">내 대여 현황 조회</h5>
                    <h6>대여 신청시 작성했던 이메일 정보로, 이전에 작성한 대여 신청을 확인할 수 있습니다.</h6>
                    <form action="rentalCheckList" name=rentalCheck class="form-signin" method="get">
                        <div class="form-label-group">
                            <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email" required autofocus>
                        </div>

                        <br/>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">조회</button>
                        <hr class="my-4">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="./footer.jsp"%>
</body>
</html>
