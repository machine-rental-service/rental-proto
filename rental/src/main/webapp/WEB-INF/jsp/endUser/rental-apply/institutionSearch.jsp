<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/endUser/rental-apply/portalScriptInc.jspf" %>	<!-- UI/UX팀 작업결과물 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<div class="col-lg-10 col-xl-9 mx-auto">
	<div class="data-mark-box">
		<label for="inputPopAdres" class="title req-info" style>거주지  </label>
		<div class="input-btn-type word-4 w380px">
			<input type="text" id="inputPopAdres" placeholder="" title="주소 입력" class="input-text" value="${searchWord}" onkeyup="fn_clickEnter(this)">
			<input type="hidden" id="hiddenAdres" value="${searchWord}">
			<button type="button" onclick="javascript:fn_selectAdresList()" class="button blue mt00">검색</button>
		</div>
		<div class="input-util">
			<span class="text-area">추천검색 예시 : <strong class="color-orange">봉화군, 충청남도, 인천</strong> (도/시/군 단위)</span>
		</div>

	</div>
</div>

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
			<c:if test="${totalCount == 0}">
			<tr>
				<td colspan="4" class ="color-orange">데이터가 없어요 :( </td>
			</tr>
			</c:if>
			<c:forEach items="${list}" var="result" varStatus = "status">
				<tr>
					<td class="a-l">
						<div>
							<a href="javascript:fn_selectAdres('lnmAdres_${status.index}')">
<%--								<input type="hidden" class="lnmAdres_${status.index}" value="${result.zipNo}">--%>
<%--								<input type="hidden" class="lnmAdres_${status.index}" value="${result.lnmAdres}">--%>
<%--								<input type="hidden" class="lnmAdres_${status.index}" value="${result.lnmAdres}">--%>
							</a>
						</div>
					</td>
					<td>${result.zipNo}</td>
					<td>${result.zipNo}</td>
					<td class="a-l">
						<div>
							<a href="javascript:fn_selectAdres('lnmAdres_${status.index}')">
									<%--								<input type="hidden" class="lnmAdres_${status.index}" value="${result.zipNo}">--%>
									<%--								<input type="hidden" class="lnmAdres_${status.index}" value="${result.lnmAdres}">--%>
									<%--								<input type="hidden" class="lnmAdres_${status.index}" value="${result.lnmAdres}">--%>
							</a>
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div class="button-group a-c">
		<a class="button gray"><strong class="color-picker-label">취소</strong></a>
<%--		<a href="javascript:fn_search2();" class="button blue">다음</a>--%>
	</div>
</div>
<!-- pagination -->
<ui:pagination paginationInfo = "${paginationInfo}" type="text" jsFunction="fn_adresList" />
<!--// pagination -->
