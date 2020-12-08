<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/endUser/rental-apply/portalScriptInc.jspf" %>	<!-- UI/UX팀 작업결과물 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
	<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
	<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
	<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>
	<script>
		function send(keyword){
			window.opener.setInstitution(keyword);
			window.open('','_self').close();
		}
	</script>
<body>
<Button onclick="setInstitution2('temp')">세팅</Button>
<article>
	<H1>검색결과입니다</H1>
	<form action="search" method="POST">
		<div class="col-lg-10 col-xl-9 mx-auto">
			<div class="data-mark-box">
				<label class="title req-info" style>거주 구역</label>
				<input type="text" name="keyword" placeholder="" title="주소 입력" class="input-text" style = "width: auto;">
				<button type="submit" class="btn btn-primary">검색</button>
				<div class="input-util">
					<span class="text-area">추천검색 예시 : <strong class="color-orange">봉화군, 충청남도, 인천</strong> (도/시/군 단위)</span>
				</div>
			</div>
		</div>
	</form>

<table class="table">
	<tr>
		<td>구분</td><td>사무소 이름</td>주소지</td><td>전화번호</td>
	</tr>
	<c:forEach items="${list}" var="institution">
		<tr>
			<td>${institution.product}"</td>
			<td>${institution.name}"</td>
			<td>${institution.address}"</td>
			<td>${institution.phoneNumber}"</td>
			<td><button onclick="send('${institution.name}')">선택</button></td>
		</tr>
	</c:forEach>
</table>

</article>
</body>
</head>
</html>
