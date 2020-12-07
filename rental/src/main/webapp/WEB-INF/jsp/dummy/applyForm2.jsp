<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>접수폼 2단계</title>
</head>
<body>
<form action="step2" method="POST">
    <div>
        <label>트랙터</label> (보유 수량: 출력예정)
        <input name="tractor" type="number"/>
        <label>경운기</label>
        <input name="tractor" type="number"/>
        <label>관리기</label>
        <input name="tractor" type="number"/>
        <label>땅속작물 수확기</label>
        <input name="tractor" type="number"/>
        <label>탈곡기</label>
        <input name="tractor" type="number"/>
        <label>자주형 종파기</label>
        <input name="tractor" type="number"/>
        <label>이앙 작업기</label>
        <input name="tractor" type="number"/>
        <label>벼 수확기</label>
        <input name="tractor" type="number"/>
        <label>생활공구</label>
        <input name="otherToolsRequest" type="text"/>

        <label>수령희망일</label>
        <input type="date">

    </div>
    <button type="submit">전송</button>
</form>
</body>
</html>