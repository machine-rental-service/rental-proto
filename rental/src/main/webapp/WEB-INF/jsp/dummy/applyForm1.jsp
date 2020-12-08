<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>접수폼 1단계</title>
</head>
<body>
<h1>1단계(개인정보입력 및 사무소 선택)</h1>

<div>
    <h1>Form</h1>
    <p>폼을 통해 데이터 전송해봅시다.</p>
</div>
<form action="step1" method="POST">
    <div>
        <label>성명</label>
        <input name="lesseeName" type="text"/>
        <label>생년월일</label>
        <input name="lesseeBirthday" type="text"/>
        <label>이메일</label>
        <input name="lesseeEmail" type="email"/>
        <label>연락처</label>
        <input name="lesseePhoneNumber" type="text"/>
        <label>주소</label>
        <input name="lesseeAddress" type="text"/>
        <label>사무소</label>
        <input name="localInstitution" type="text"/>
    </div>
    <button type="submit">전송</button>
</form>

</body>
</html>