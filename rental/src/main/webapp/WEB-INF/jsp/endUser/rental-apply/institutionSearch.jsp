<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/endUser/rental-apply/portalScriptInc.jspf" %>	<!-- UI/UX팀 작업결과물 -->
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
	<script src='//unpkg.com/jquery@3/dist/jquery.min.js'></script>
	<script src='//unpkg.com/popper.js@1/dist/umd/popper.min.js'></script>
	<script src='//unpkg.com/bootstrap@4/dist/js/bootstrap.min.js'></script>

<body>
<article>

<form action="search" method="POST">
	<div class="col-lg-10 col-xl-9 mx-auto">
		<div class="data-mark-box">
			<label class="title req-info" style>사업장/거주 구역</label>
			<input type="text" name="keyword" placeholder="" title="주소 입력" class="input-text" style = "width: auto;">
			<button type="submit" class="btn btn-primary">검색</button>
			<div class="input-util">
				<span class="text-area">추천검색 예시 : <strong class="color-orange">봉화군, 충청남도, 인천</strong> (도/시/군 단위)</span>
			</div>
		</div>
	</div>
</form>


<div class="col-table">
	<table>
		<colgroup>
			<col style="width:10%;"><!-- 구분 -->
			<col style="width:25%"><!-- 사업소명 -->
			<col style="width:25%"><!-- 주소지 -->
			<col style="width:25%"><!-- 전화번호 -->
			<col style="width:15%"><!-- 선택 -->
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
		<tbody id="tbodyAddressList">
			<tr>
				<td colspan="5" class ="color-orange"> 거주지를 입력하면 인근 사업소가 나옵니다. </td>
			</tr>
		</tbody>
	</table>
</div>

</article>
</body>
</head>
</html>
