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
<div class="container">
    <div class="row">
        <div class="col-lg-10 col-xl-9 mx-auto">
            <div class="card card-signin flex-row my-5">
                <div class="card-img-left d-none d-md-flex">
                    <!-- Background image for card set in CSS! -->
                </div>
                <div class="card-body">
                    <h5 class="card-title text-center">내 대여 현황 조회</h5>
                    <form name=rentalCheck class="form-signin" method="get">
                        <div class="form-label-group">
                            <input type="text" name="inputUsername" id="inputUsername" class="form-control" placeholder="이름" required autofocus>
                        </div>

                        <br/>

                        <div class="form-label-group">
                            <input type="text" name="inputBirthday" id="inputBirthday" class="form-control" placeholder="생년월일" required autofocus>
                        </div>

                        <br/>

                        <div class="form-label-group">
                            <input type="text" name="inputPhone" id="inputPhone" class="form-control" placeholder="전화번호" required autofocus>
                        </div>
                        <br/>

                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="button" onclick="search()">조회</button>
                        <hr class="my-4">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    function search(){
        var f=document.rentalCheck;
        if(!f.inputUsername.value){
            alert("이름을 입력해주세요");
            f.inputUsername.focus();
            return;
        }
        if(!f.inputBirthday.value){
            alert("생년월일을 입력해주세요");
            f.inputBirthday.focus();
            return;
        }
        if(!f.inputPhone.value){
            alert("전화번호를 입력해주세요");
            f.inputPhone.focus();
            return;
        }
        f.submit();
    }
</script>
</html>
