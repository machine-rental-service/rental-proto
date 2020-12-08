<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>접수폼 2단계</title>
</head>
<body>
<c:out value="${institution.name}" /> 를 선택하셨습니다.
<form action="step2" method="POST">
    <div>
        <label>수령희망일</label>
        <input name="started" input type="date">
        <label>트랙터</label> (보유 수량: <c:out value="${institution.tractor}" /> )
        <input name="tractor" type="number" value="0" >
        <label>경운기</label> (보유 수량: <c:out value="${institution.cultivator}" /> )
        <input name="cultivator" type="number" value="0"/>
        <label>관리기</label> (보유 수량: <c:out value="${institution.farmMaster}" /> )
        <input name="farmMasterr" type="number" value="0"/>
        <label>땅속작물 수확기</label> (보유 수량: <c:out value="${institution.undergroundCropExtractor}" /> )
        <input name="undergroundCropExtractorr" type="number" value="0"/>
        <label>탈곡기</label> (보유 수량: <c:out value="${institution.thresher}" /> )
        <input name="thresher" type="number" value="0"/>
        <label>자주형 종파기</label> (보유 수량: <c:out value="${institution.sower}" /> )
        <input name="sower" type="number" value="0"/>
        <label>이앙 작업기</label> (보유 수량: <c:out value="${institution.ricePlantingMachine}" /> )
        <input name="ricePlantingMachine" type="number" value="0"/>
        <label>벼 수확기</label> (보유 수량: <c:out value="${institution.riceHarvester}" /> )
        <input name="riceHarvester" type="number" value="0"/>
        <div>
            - 기타 임대 농기계 보유정보 (준비중)(사유: 표준데이터 불량)<br>
            농업용굴삭기(3)+동력제초기(3)+동력파쇄기(3)++로타베이터(3)+잔가지파쇄기(1)+전지전정기(3)+그레이
            더(1)+농기계용사다리(24)+동력운반차(2)0+파종기(18)+결속기(1)+논두렁조성기(10)+동력배토기(15)+동
            력살분무기(4)+비료살포기(3)+석회살포기(2)+육묘상자운반기구(2)+탈망기(3)+플라우(6)+해로우(11)+김
            매기용(2)+선별기(3)+파이프밴딩성형기(1)+돌수집기(2)+동력예취기(4)+동력이식기(2)+동력탈곡기(12)+
            동력파종기(3)+로타리(1)+로타베이터(3)+무동력비닐피복기(5)+배토기(9)+비닐피복기(3)+소형관리기
            (12)+수확기(17)+스피드스프레이어(1)+승용관리기(2)+심경로타리(4)+육묘용파종기(1)+잡곡탈곡기(3)+전
            엽기(1)+제초기(5)+중경제초기(5)+치즐쟁기(6)+콩예취기(3)+콩정선기(2)+퇴비살포기(3)+플라우(5)+휴립
            기(3)+휴립복토기(2)+휴립피복기(1)+농업용로우더(1)
        </div><br>

        <label>생활공구(정비중: 데이터 불량으로 인해 필요한 공구를 적어주세요 )<br>
            http://data.seoul.go.kr/dataList/OA-13138/S/1/datasetView.do 목록 참고</label>
        <input name="otherToolsRequest" type="text" placeholder="예: 니퍼(6#2개), 막줄자(7.5m2개)"/>



    </div>
    <button type="submit">전송</button>
</form>
</body>
</html>