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
<%--<Button onclick="setInstitution2('temp')">세팅</Button>--%>
<article>
	<form action="search" method="POST">
		<div class="col-lg-10 col-xl-9 mx-auto">
			<div class="data-mark-box">
				<label class="title req-info" style>거주 구역</label>
				<input type="text" name="keyword" placeholder="" title="주소 입력" class="input-text" style = "width: auto;">
				<button type="submit" class="btn btn-primary">검색</button>
				<div class="input-util">
					<span class="text-area">추천검색 예시 : <strong class="color-orange">봉화군, 충청남도, 인천</strong> (도/시/군 단위)</span>
				</div>
				<span><strong class="color-orange"></br>"${keyword}"</strong> 검색 결과입니다</span>
			</div>
		</div>
	</form>

<div class="col-table">
	<table>
		<colgroup>
			<col style="width:150px;"><!-- 구분 -->
			<col><!-- 사업소명 -->
			<col><!-- 주소지 -->
			<col style="width:300px;"><!-- 전화번호 -->
			<col style="width:100px;"><!-- 선택 -->
		</colgroup>
		<thead>
		<tr>
			<th scope="col">구분</th>
			<th scope="col">사무소 이름</th>
			<th scope="col">주소지</th>
			<th scope="col">전화번호</th>
			<th scope="col">선택</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="institution">
				<tr>
					<td>${institution.product}"</td>
					<td>${institution.name}"</td>
					<td>${institution.address}"</td>
					<td>${institution.phoneNumber}"</td>
					<td><button onclick="send('${institution.name}')">선택</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</article>
</body>
</head>
</html>
