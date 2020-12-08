<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<%@ include file="header.jsp"%>
<div class="container">
	<h2 class="text-center my-4">상세 조회</h2>
	<div class="row col-12">
		<table class='table  col-6 table-striped'>
			<tr>
				<th>대여물품</th>
				<td><c:if test="${rental.rentalDetail.tractor>0}">
					트랙터 ${rental.rentalDetail.tractor} 
				</c:if> <c:if test="${rental.rentalDetail.cultivator>0}">
					경운기 ${rental.rentalDetail.cultivator} 
				</c:if> <c:if test="${rental.rentalDetail.farmMaster>0}">
					관리기 ${rental.rentalDetail.farmMaster} 
				</c:if> <c:if test="${rental.rentalDetail.undergroundCropExtractor>0}">
					땅속작물수확기 ${rental.rentalDetail.undergroundCropExtractor} 
				</c:if> <c:if test="${rental.rentalDetail.thresher>0}">
					탈곡기 ${rental.rentalDetail.thresher} 
				</c:if> <c:if test="${rental.rentalDetail.sower>0}">
					자주형 종파기 ${rental.rentalDetail.sower} 
				</c:if> <c:if test="${rental.rentalDetail.ricePlantingMachine>0}">
					이앙 작업기 ${rental.rentalDetail.ricePlantingMachine} 
				</c:if> <c:if test="${rental.rentalDetail.riceHarvester>0}">
					벼 수확기 ${rental.rentalDetail.riceHarvester} 
				</c:if></td>
			</tr>
			<tr>
				<th>신청자 이름</th>
				<td>${rental.lesseeName}</td>
			</tr>
			<tr>
				<th>주소</th>
				<td>${rental.lesseeAddress}</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>${rental.lesseePhoneNumber}</td>
			</tr>
			<tr>
				<th>접수일자</th>
				<td>${rental.applied}</td>
			</tr>

		</table>
		<hr />
		<table class='table  col-6 table-striped '>
			<tr>
				<th>상태</th>
				<td>${rental.status}</td>
			</tr>
			<tr>
				<th>대여시작일</th>
				<td>${rental.started}</td>
			</tr>
			<tr>
				<th>반납(예정)일</th>
				<td>${rental.deadline}</td>
			</tr>
			<tr>
				<th>대여 일수</th>
				<td><fmt:parseDate var="started" value="${rental.started}" pattern="yyyy-MM-dd" /> <fmt:parseDate var="deadline" value="${rental.deadline}" pattern="yyyy-MM-dd" /> <fmt:formatDate
						var="started" value="${started}" pattern="yyyyMMdd" /> <fmt:formatDate var="deadline" value="${deadline}" pattern="yyyyMMdd" /> ${deadline-started}일</td>
			</tr>
			<tr>
				<th>대여소</th>
				<td>${rental.localInstitution}</td>
			</tr>
			<tr>
				<th>대여금액</th>
				<td></td>
			</tr>
		</table>
	</div>


	<hr />
	<div>
		<h3 class="text-center my-4">Comment(비고사항)</h3>
	</div>

	<form id="updateStatusForm" class='row' action="/admin/update_status" method="post">
		<textarea class="col-10" rows="4" name="staffComment">${rental.rentalDetail.staffComment}</textarea>
		<input type="hidden" name="id" value="${rental.id}">
		<input type="hidden" name="func" value="">
		<c:choose>
			<c:when test="${rental.status eq '신청 대기'}">
				<button value="신청 승인" class="btn btn-primary btn-lg">승인</button>
				<button value="신청 반려" class="btn btn-dark btn-lg">반려</button>
			</c:when>
			<c:otherwise>
				<button value="modify" class="btn btn-dark btn-lg" type="button">코멘트 수정</button>
			</c:otherwise>
		</c:choose>
	</form>
</div>

<script type="text/javascript">
	$("#updateStatusForm .btn").click(function(e) {
		e.preventDefault();

		$("#updateStatusForm input[name='func']").val($(this).attr('value'));

		$("#updateStatusForm").submit();
	});
</script>

<%@ include file="footer.jsp"%>

