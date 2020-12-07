<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>접수폼 1단계</title>
</head>
<body>
주소지 관련 키워드로 기준으로 검색된 리스트 나열
링크클릭시 빈칸에 세팅
<c:forEach items="${list}" var="e">
    사무소 이름: ${e.name}" / 주소지 : Employee ID: ${e.address}"
        <br>
</c:forEach>

</form>
</body>
</html>