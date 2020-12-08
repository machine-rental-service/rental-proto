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
			<label class="title req-info" style>거주 구역</label>
			<input type="text" name="keyword" placeholder="" title="주소 입력" class="input-text" style = "width: auto;">
			<button type="submit" class="btn btn-primary">검색</button>
			<div class="input-util">
				<span class="text-area">추천검색 예시 : <strong class="color-orange">봉화군, 충청남도, 인천</strong> (도/시/군 단위)</span>
			</div>
		</div>
	</div>
</form>


<div class="col-table">
	<p class="tit-hide">사업소 선택</p>
	<table>
		<caption></caption>
		<colgroup>
			<col><!-- 사업소명 -->
			<col style="width:150px;"><!-- 구분 -->
			<col style="width:300px;"><!-- 전화번호 -->
			<col><!-- 도로명/지번 주소 -->
		</colgroup>
		<thead>
			<tr>
				<th scope="col">사업소명</th>
				<th scope="col">구분</th>
				<th scope="col">전화번호</th>
				<th scope="col">소재지도로명주소</th>
			</tr>
		</thead>
		<tbody id="tbodyAdresList">
			<tr>
				<td colspan="4" class ="color-orange"> 거주지를 입력하면 인근 사업소가 나옵니다. </td>
			</tr>
		</tbody>
	</table>

	<div class="button-group a-c">
		<a class="button gray"><strong class="color-picker-label">취소</strong></a>
<%--		<a href="javascript:fn_search2();" class="button blue">다음</a>--%>
	</div>
</div>

</article>
</body>
</head>
</html>
