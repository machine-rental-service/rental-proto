<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/endUser/rental-apply/portalScriptInc.jspf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
    <script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
    <script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
    <script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
    <script>
        function send(){
            if( ! document.getElementById('started').innerText ) {
                alert("희망대여일을 선택해주세요!");
            }
        }
    </script>
    <style type='text/css'>
        .ex-txt {
            margin-left: 1rem;
            padding-left: 1rem;
        }
    </style>

    <meta charset="UTF-8">
    <title>접수폼 2단계</title>
    <style type='text/css'>
        th {
            width: 30%;
        }
    </style>
</head>
<body>
<%@ include file="../../navBar.jsp" %>
<div class="join-wrap">
    <br>
    <h2 class="tit just-pc">생활공구/농기계 대여신청</h2>
    <ol class="step-list">
        <li class="on">
            <strong style="background-color: #bfc4ca">STEP1<span>신청인 정보</span></strong>
        </li>
        <li>
            <strong style="background-color: #3f7ad2">STEP2<span>대여 신청</span></strong>
        </li>
    </ol>
    <h3> <c:out value="${institution.name}" />(<c:out value="${institution.product}" />) 를 선택하셨습니다.</h3>

    <h6 style="color:red;">수령희망일을 꼭 선택해주세요!</h6>

    <form action="step2" method="POST">
        <div id="inputTable" class="row-table">
            <table>
                <tbody>
                <tr>
                    <th scope="row">
                        <label style="color:red;" class="label req">수령희망일</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="started" input type="date"  class="input-text">
                            <br>반납일은 수령희망일로부터 3일 후입니다.
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">트랙터</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="tractor" type="number" value="0">
                            <span class="ex-txt">(보유 수량: <c:out value="${institution.tractor}" /> )</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">경운기</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="cultivator" type="number" value="0">
                            <span class="ex-txt">(보유 수량: <c:out value="${institution.cultivator}" /> )</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">관리기</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="farmMaster" type="number" value="0">
                            <span class="ex-txt">(보유 수량: <c:out value="${institution.farmMaster}" /> )</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">땅속작물수확기</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="undergroundCropExtractor" type="number" value="0">
                            <span class="ex-txt">(보유 수량: <c:out value="${institution.undergroundCropExtractor}" /> )</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">탈곡기</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="thresher" type="number" value="0">
                            <span class="ex-txt">(보유 수량: <c:out value="${institution.thresher}" /> )</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">자주형 종파기</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="sower" type="number" value="0">
                            <span class="ex-txt">(보유 수량: <c:out value="${institution.sower}" /> )</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">이앙기</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="ricePlantingMachine" type="number" value="0">
                            <span class="ex-txt">(보유 수량: <c:out value="${institution.ricePlantingMachine}" /> )</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">벼수확기</label>
                    </th>
                    <td>
                        <div class="input-ex-text w300px">
                            <input name="riceHarvester" type="number" value="0">
                            <span class="ex-txt">(보유 수량: <c:out value="${institution.riceHarvester}" /> )</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">기타 임대 농기계 보유정보(미지원)<br>(사유: 표준데이터 불량)</label>
                    </th>
                    <td>
                        <h6>https://www.data.go.kr/data/15017325/standard.do <br>
                            (데이터가 표준화되어있지 않아, 현재 지원하지 않고 있습니다.) </h6>
                        <div style="border: grey solid 1px"><img src="../../img/2.jpg"></div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <label class="label">생활 공구(부분시행중)<br>(사유: 데이터 갱신 오래됨(2016년)<br>&불량)</label>
                    </th>
                    <td>  <div style="font-size: 0.8rem">* 서울시 집수리공구대여소 취급품:
                        <br>충전 햄머드릴(BLDC)18V/5Ah,
                        충전 드라이버드릴(BLDC)18V/5Ah,
                        임팩트 드릴16mm,
                        드릴셋트33PCS,
                        공구셋트스마토 16PCS,
                        공구셋트스마토 25PCS,
                        치타접톱(대),
                        서울사다리LS-43,
                        줄자5.5M,
                        전선릴30M,
                        막삽,
                        각삽,
                        톱(톱날 265/300),
                        컷쏘US-400XE,
                        (공업용)진공청소기(S-201)220V 20L,
                        우마(수평작업발판)300*1600mm</div><br>
                        <div style="font-size: 0.8rem">* 공구도서관(사회복지관 또는 주민센터)
                            <br>http://data.seoul.go.kr/dataList/OA-13138/S/1/datasetView.do 목록 참고</div>
                        <input style="width: 50%" name="otherToolsRequest" type="text"
                               class="input-text" placeholder="예: 니퍼(6#2개), 막줄자(7.5m2개)"/>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="button-group a-c"><h6 style="color:red;">수령희망일을 꼭 선택해주세요!<br>(미선택시 에러가 발생할 수 있어요!)</h6><br>
                <h5 style="color: blue">1) 기본 대여 가능일은 3일입니다.</h5>
                <h5 style="color: blue">2) 추가 교육이수가 필요할 수 있습니다.</h5>
                <h5 style="color: blue">3) 일부 농기계/공구는 비용이 발생합니다.</h5>
                <h5 style="color: blue">4) 대여는 선착순으로 진행됩니다. 재고가 없을시 신청 반려 될 수 있습니다.</h5>

                <button onclick="send()" class="btn btn-primary">신청하기</button></div>
        </div>

    </form>
</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>