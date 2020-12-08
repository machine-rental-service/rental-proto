<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<%@ include file="header.jsp"%>
<div class="container h-100">
	<h2 class="text-center my-4">신청 목록</h2>
	<div class='row float-right mb-2'>
		<div class="dropdown mr-4">
			<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">정렬</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="?size=${size}&orderBy=id">신청번호</a>
				<a class="dropdown-item" href="?size=${size}&orderBy=status">상태</a>
				<a class="dropdown-item" href="?size=${size}&orderBy=applied">접수일</a>
				<a class="dropdown-item" href="?size=${size}&orderBy=localInstitution">담당 사무소</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">글개수</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="?size=20&orderBy=${orderBy}">20</a>
				<a class="dropdown-item" href="?size=50&orderBy=${orderBy}">50</a>
				<a class="dropdown-item" href="?size=100&orderBy=${orderBy}">100</a>
			</div>
		</div>
	</div>
	<div>
		<table class="table table-hover">
			<tr class='bg-light'>
				<th width="10%">연번</th>
				<th width="10%">신청번호</th>
				<th width="20%">담당사무소</th>
				<th width="25%">대여중인 물품</th>
				<th witdh="10%">대여자</th>
				<th width="10%">접수일</th>
				<th width="15%">상태</th>

			</tr>

			<c:choose>
				<c:when test="${fn:length(rentalList) > 0}">
					<c:forEach var="rental" items="${rentalList}" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${rental.id}</td>
							<td>${rental.localInstitution}</td>
							<td><a href="rentalDetail/${rental.id}">
									<c:if test="${rental.rentalDetail.tractor>0}">
						트랙터 ${rental.rentalDetail.tractor} 
					</c:if>
									<c:if test="${rental.rentalDetail.cultivator>0}">
						경운기 ${rental.rentalDetail.cultivator} 
					</c:if>
									<c:if test="${rental.rentalDetail.farmMaster>0}">
						관리기 ${rental.rentalDetail.farmMaster} 
					</c:if>
									<c:if test="${rental.rentalDetail.undergroundCropExtractor>0}">
						땅속작물수확기 ${rental.rentalDetail.undergroundCropExtractor} 
					</c:if>
									<c:if test="${rental.rentalDetail.thresher>0}">
						탈곡기 ${rental.rentalDetail.thresher} 
					</c:if>
									<c:if test="${rental.rentalDetail.sower>0}">
						자주형 종파기 ${rental.rentalDetail.sower} 
					</c:if>
									<c:if test="${rental.rentalDetail.ricePlantingMachine>0}">
						이앙 작업기 ${rental.rentalDetail.ricePlantingMachine} 
					</c:if>
									<c:if test="${rental.rentalDetail.riceHarvester>0}">
						벼 수확기 ${rental.rentalDetail.riceHarvester} 
					</c:if>
								</a></td>
							<td>${rental.lesseeName}</td>
							<td>${rental.applied}</td>
							<td>${rental.status}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td class="text-center" colspan="7">데이터가 존재하지 않습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>

		</table>
	</div>
	<hr />
	<div class='d-flex justify-content-between'>
		<ul class="pagination">
			<c:if test="${page>1}">
				<li class="page-item">
					<a class="page-link" href="?page=${page-1}&size=${size}&orderBy=${orderBy}" tabindex="-1" aria-disabled="true">Previous</a>
				</li>
			</c:if>
			<c:forEach var="num" items="${pageList}" varStatus="status">
				<c:if test="${num ne null}">
					
						<li class="page-item <c:if test="${num eq page }">active</c:if>">
							<a href="?page=${num}&size=${size}&orderBy=${orderBy}" class="page-link">${num}</a>
						</li>
					
				</c:if>

			</c:forEach>

			<c:if test="${page<lastPage}">
				<li class="page-item">
					<a class="page-link" href="?page=${page+1}&size=${size}&orderBy=${orderBy}">Next</a>
				</li>
			</c:if>

		</ul>

		<form action="/admin/search" method="GET" class="form-inline ">
			<select id="selectBox" name='searchType' class='form-control'>
				<option value="localInstitution">담당 사무소</option>
				<option value="lesseeName">대여자 이름</option>
				<option value="applied">접수일</option>
			</select>
			<input id="keyword" class="form-control mx-2" name="keyword" type="text" placeholder="검색어를 입력해주세요">
			<div class='row mx-2' id="peoridInput">
				<input name='keyword' type="date" class='form-control'>
				~
				<input name='keyword' type="date" class='form-control'>
			</div>
			<button class="btn btn-dark">검색</button>
		</form>
	</div>
</div>
<%@ include file="footer.jsp"%>

<script>
	$("#peoridInput").hide();

	$("#selectBox").change(function() {
		if ($(this).val() == 'applied') {
			$("#peoridInput").show();
			$("#keyword").hide();
		} else {
			$("#peoridInput").hide()
			$("#keyword").show();
		}
		;
	});
</script>