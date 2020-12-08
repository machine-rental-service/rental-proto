<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/jsp/endUser/rental-apply/portalScriptInc.jspf" %>
<!-- UI/UX팀 작업결과물 -->
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
    <script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
    <script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
    <script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
    <script>
        function findInstitution() {
            window.open("/institution/search", "주소검색", "");
        }

        function setInstitution(keyword) {
            document.getElementById("localInstitution").value = keyword;
        }
    </script>
    <script type="text/javaScript">

        /**
         * document ready
         */
        $(function(){
            //필수입력항목 미입력시 안내 메세지 숨김처리
            $(".input-warning").hide();
            $(".input-success").hide();
        });

    </script>
<body>
<%@ include file="../../navBar.jsp" %>
<article>
 <br>
    <form action="step1" method="POST" onsubmit="return fn_next()">

        <div class="join-wrap">
            <h2 class="tit just-pc">생활공구/농기계 대여신청</h2>
            <ol class="step-list">
                <li class="on">
                    <strong>STEP1<span>신청인 정보</span></strong>
                </li>
                <li>
                    <strong>STEP2<span>대여 신청</span></strong>
                </li>
            </ol>

            <!-- 기본정보 입력 -->
            <p class="text-area">기본정보 입력</p>
            <h6 style="color:red;">*가 붙은 항목은 필수 입력 항목입니다</h6>

            <div id="inputTable" class="row-table">
                <p class="tit-hide">이름, 생년월일, 연락처, 이메일주소 입력</p>
                <table>
                    <caption>신청인 정보 입력</caption>
                    <colgroup>
                        <col style="width:220px;">
                        <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">
                            <label class="label req">이름</label>
                        </th>
                        <td>
                            <div class="input-ex-text w300px">
                                <input type="text" title="이름" placeholder="ex) 김빌림" id="lesseeName" name="lesseeName"
                                       class="input-text w340px" maxlength="11">
                                <div class="input-util">
                                    <p class="input-warning">이름을 입력해주세요</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label class="label req">생년월일</label>
                        </th>
                        <td>
                            <div class="input-ex-text w300px">
                                <input type="text" title="생년월일 입력" placeholder="" id="lesseeBirthday"
                                       name="lesseeBirthday"
                                       class="input-text" maxlength="6" >
                                <div class="input-util">
                                    <p class="input-warning">생년월일을 입력해주세요</p>
                                </div>
                                <span class="ex-txt">예) 970909</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label for="inputTelNum" class="label req">연락처</label>
                        </th>
                        <td>
                            <div class="input-ex-text w300px">
                                <input type="text" title="연락처1 입력" placeholder="ex) 010-5555-8282" id="lesseePhoneNumber"
                                       name="lesseePhoneNumber" class="input-text w340px">
                                <div class="input-util">
                                    <p class="input-warning">연락처를 입력해주세요</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label for="label_cont01_03" class="label req">이메일</label>
                        </th>
                        <td>
                            <div class="input-ex-text w300px">
                                <input type="email" title="이메일" placeholder="ex) billim@farm.com" id="lesseeEmail"
                                       name="lesseeEmail" class="input-text w340px"
                                       maxlength="40">
                                <div class="input-util">
                                    <p class="input-warning">이메일을 입력해주세요</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="tit-group">
                <h3 class="tit">주소/임대사무소 찾기</h3>
            </div>

            <div class="row-table">
                <p class="tit-hide">주소/임대사무소 찾기</p>

                <table>
                    <caption></caption>
                    <colgroup>
                        <col style="width:220px;">
                        <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">
                            <label class="label req">거주지 주소</label>
                        </th>
                        <td>
                            <div class="mt5">
                                <input type="text" title="주소(소재지) 입력" placeholder="ex) 사랑시 고백구 행복동 희망아파트" id="lesseeAddress"
                                        name="lesseeAddress" class="input-text w640px">
                                <div class="input-util">
                                    <p class="input-warning">주소를 입력해주세요</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label class="label req">권역 임대사무소</label>
                        </th>
                        <td>
<%--                            <div class="input-btn-type w530px" id="localInstitution">--%>
<%--                                <input type="text" placeholder=""--%>
<%--                                       name="localInstitution" class="input-text" readonly="readonly" style ="width:340px;">--%>
<%--                                <span class="ex-txt">--%>
<%--                                    <button style="display: inline;" type="button" class="btn btn-info" onclick="findInstitution()">사무소 찾기</button></span>--%>
<%--                            </div>--%>
<%--                            <div class="input-util">--%>
<%--                                    <p class="input-warning">사무소를 선택해주세요</br>(새 창이 뜨지 않을시, "팝업 해제"를 확인해주세요)</p>--%>
<%--                            </div>--%>

                            <div class="input-btn-type w530px">
                                <input type="text" placeholder="" id="localInstitution"
                                       name="localInstitution" class="input-text" readonly ="readonly">
                                <span class="ex-txt">
                                    <button style="display: inline;" type="button" class="btn btn-info" onclick="findInstitution()">사무소 찾기</button></span>
                                <div class="input-util">
                                    <p class="input-warning">사무소를 선택해주세요 (새 창이 뜨지 않을시, "팝업 해제"를 확인해주세요)</p>
                                </div>

                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="button-group a-c">
                <a class="btn btn-secondary">임시저장</a>
                <button type="submit" class="btn btn-primary">다음</button>
<%--                <button type="button" class="button blue" onClick="fn_save();">작성 완료</button>--%>
            </div>
        </div>
    </form>
</article>
<%@ include file="../../footer.jsp" %>
</body>

</head>
</html>

<script type="text/javascript">
/**
 * 다음 버튼 누를 시
 */
function fn_next(){
    //입력 항목 확인
    if (!fn_validation()) return false;
    else  return true;
}

/**
 *  입력항목 체크
 */
function fn_validation(){

    //필수입력항목 미입력시 안내 메세지 숨김처리
    $(".input-warning").hide();

    //이름
    if(fn_empty($("#lesseeName").val())){
        console.log("check 1-1 시작");
        $("#lesseeName").next(".input-util").find(".input-warning").show();
        $("#lesseeName").focus();
        return false;
    }

    //생년월일
    if(fn_empty($("#lesseeBirthday").val())){
        $("#lesseeBirthday").next(".input-util").find(".input-warning").show();
        $("#lesseeBirthday").focus();
        return false;
    }

    //연락처
    if(fn_empty($("#lesseePhoneNumber").val())){
        $("#lesseePhoneNumber").next(".input-util").find(".input-warning").show();
        $("#lesseePhoneNumber").focus();
        return false;
    }

    //이메일 주소
    if(fn_empty($("#lesseeEmail").val())){
        $("#lesseeEmail").next(".input-util").find(".input-warning").show();
        $("#lesseeEmail").focus();
        return false;
    }

    //거주지 주소
    if(fn_empty($("#lesseeAddress").val())){
        $("#lesseeAddress").next(".input-util").find(".input-warning").show();
        $("#lesseeAddress").focus();
        return false;
    }

    //사무소 주소
    if(fn_empty($("#localInstitution").val())){
        $("#localInstitution").next(".input-util").find(".input-warning").show();
        $("#localInstitution").focus();
        return false;
    }

    return true;
}

 /**
 * 값이 null인지 확인
 * param  : str - 텍스트
 * return  : 공백인지 여부
 */
function fn_empty(str) {

    if(str == undefined){
        return true;
    }

    if(str == "" || str.length <= 0 ){
        return true;
    }
    return false;
}
</script>