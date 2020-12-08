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
    <h3> <c:out value="${institution.name}" /> 를 선택하셨습니다.</h3>

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
                    <input name="tractor" type="number" value="0" class="input-text">
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
                    <input name="cultivator" type="number" value="0" class="input-text">
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
                    <input name="farmMaster" type="number" value="0" class="input-text">
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
                    <input name="undergroundCropExtractor" type="number" value="0" class="input-text">
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
                    <input name="thresher" type="number" value="0" class="input-text">
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
                    <input name="sower" type="number" value="0" class="input-text">
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
                    <input name="ricePlantingMachine" type="number" value="0" class="input-text">
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
                    <input name="riceHarvester" type="number" value="0" class="input-text">
                    <span class="ex-txt">(보유 수량: <c:out value="${institution.riceHarvester}" /> )</span>
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">
                <label class="label">트랙터</label>
            </th>
            <td>
                <div class="input-ex-text w300px">
                    <input name="tractor" type="number" value="0" class="input-text">
                    <span class="ex-txt">(보유 수량: <c:out value="${institution.tractor}" /> )</span>
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">
                <label class="label">트랙터</label>
            </th>
            <td>
                <div class="input-ex-text w300px">
                    <input name="tractor" type="number" value="0" class="input-text">
                    <span class="ex-txt">(보유 수량: <c:out value="${institution.tractor}" /> )</span>
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">
                <label class="label">기타 임대 농기계 보유정보(미지원)<br>(사유: 표준데이터 불량)</label>
            </th>
            <td>
                <h6>https://www.data.go.kr/data/15017325/standard.do <br>
                    (데이터를 식별할 수없어, 현재 지원하지 않습니다. 규칙있는 숫자코드 처리 또는 데이터셋이 필요합니다.) </h6>
                <img src="../../img/2.jpg">
                    <div style="color: gray">
                    <br>* 케이스A: 176 (추가 기계정보 없이 숫자값만 존재하는 경우)<br>
                    * 케이스B: (정보는 있지만, 추가 가공또는 절차가 필요한경우)<br>
                    <div style="font-size: 0.5rem"> 농업용굴삭기(3)+동력제초기(3)+동력파쇄기(3)++로타베이터(3)+잔가지파쇄기(1)+전지전정기(3)+그레이
                    더(1)+농기계용사다리(24)+동력운반차(2)0+파종기(18)+결속기(1)+논두렁조성기(10)+동력배토기(15)+동력살분무기(4)+비료살포기(3)+석회살포기(2)+육묘상자운반기구(2)+탈망기(3)+플라우(6)+해로우(11)+김
                    매기용(2)+선별기(3)+파이프밴딩성형기(1)+돌수집기(2)+동력예취기(4)+동력이식기(2)+동력탈곡기(12)+
                    동력파종기(3)+로타리(1)+로타베이터(3)+무동력비닐피복기(5)+배토기(9)+비닐피복기(3)+소형관리기
                    (12)+수확기(17)+스피드스프레이어(1)+승용관리기(2)+심경로타리(4)+육묘용파종기(1)+잡곡탈곡기(3)+전
                    엽기(1)+제초기(5)+중경제초기(5)+치즐쟁기(6)+콩예취기(3)+콩정선기(2)+퇴비살포기(3)+플라우(5)+휴립
                        기(3)+휴립복토기(2)+휴립피복기(1)+농업용로우더(1)</div>
                </div>
            </td>
        </tr>
        <tr>
            <th scope="row">
                <label class="label">생활 공구(부분시행중)<br>(사유: 데이터 갱신 오래됨(2016년)<br>&불량)</label>
            </th>
            <td> http://data.seoul.go.kr/dataList/OA-13138/S/1/datasetView.do 목록 참고
                <input style="width: 50%" name="otherToolsRequest" type="text"
                       class="input-text" placeholder="예: 니퍼(6#2개), 막줄자(7.5m2개)"/>
            </td>
        </tr>
        </tbody>
    </table>
        <div class="button-group a-c"><button type="submit" class="btn btn-primary">전송</button></div>
    </div>

</form>
</div>
<%@ include file="../../navBar.jsp" %>
</body>
</html>