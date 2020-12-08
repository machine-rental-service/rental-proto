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
<body>
<%@ include file="../../navBar.jsp"%>
<article>

<br>
    <form action="step1" method="POST">

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
                            <label for="label_cont01_01" class="label req">이름</label>
                        </th>
                        <td>
                            <div class="input-ex-text w300px">
                                <input type="text" title="이름" placeholder="ex) 김빌림" id="mberNm" name="lesseeName"
                                       class="input-text w340px" onkeyup="fn_inputKey('4', this);" maxlength="11">
                                <div class="input-util">
                                    <p class="input-warning">이름을 입력해주세요</p>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label for="label_cont01_02" class="label req">생년월일</label>
                        </th>
                        <td>
                            <div class="input-ex-text w300px">
                                <input type="text" title="생년월일 입력" placeholder="" id="lesseeBirthday"
                                       name="applcntBrthdy"
                                       class="input-text" maxlength="6" onkeyup="fn_inputKey('1', this);">
                                <span class="ex-txt">예) 970909</span>
                            </div>
                            <div class="input-util">
                                <p class="input-warning">생년월일을 입력해주세요</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label for="inputTelNum" class="label req">연락처1</label>
                        </th>
                        <td>
                            <div class="input-ex-text w300px">
                                <input type="text" title="연락처1 입력" placeholder="ex) 01055558282" id="inputTel1Num"
                                       name="lesseePhoneNumber" class="input-text w340px"
                                       onkeyup="fn_inputKey('1', this);"
                                       maxlength="11">
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
                                       name="lesseeEmail" class="input-text w340px" onkeyup="fn_inputKey('9', this);"
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
                            <label for="applcntRnAddrName" class="label req">거주지 주소</label>
                        </th>
                        <td>
                            <div class="mt5">
                                <input type="text" title="주소(소재지) 입력" placeholder="ex) 사랑시 고백구 행복동 희망아파트"
                                       id="applcntRnAddrName" name="lesseeAddress" class="input-text w640px">
                                <!--readonly="readonly"-->
                            </div>
                            <div class="input-util">
                                <p class="input-warning">주소를 입력해주세요</p>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <label for="applcntRnAddrName" class="label req">권역 임대사무소</label>
                        </th>
                        <td>
                            <div class="input-btn-type word-6 w330px">
                                <input type="text" title="우편번호 입력" placeholder="" id="applcntZipCode"
                                       name="localInstitution" class="input-text"> <!--readonly="readonly"-->
                                <div class="input-util">
                                    <p class="input-warning">사무소를 선택해주세요</p>
                                </div>
                                <button type="button" class="btn btn-info" onclick="">사무소 찾기</button>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <div class="button-group a-c">
                <a class="btn btn-secondary">임시저장</a>
                <button type="submit" class="btn btn-primary"">다음</button>
            </div>
        </div>
    </form>
</article>
</body>

</head>
</html>

