// Call the dataTables jQuery plugin
$.fn.dataTable.ext.search.push(
	function(settings, data, dataIndex) {
		var inputFrom = $('#from').val();
		if (inputFrom == '')
			inputFrom = null;

		if (inputFrom != null) {
			var fromDateArr = inputFrom.split('-');
			var fromDate = new Date(fromDateArr[0], fromDateArr[1], fromDateArr[2]);
		}

		var inputTo = $('#to').val();

		if (inputTo == '')
			inputTo = null;

		if (inputTo != null) {
			var toDateArr = inputTo.split('-');
			var toDate = new Date(toDateArr[0], toDateArr[1], toDateArr[2]);
		}

		var dateArr = data[5].split('-') || 0;
		var date = new Date(dateArr[0], dateArr[1], dateArr[2]);


		if (
			((inputFrom == null) && (inputTo == null)) ||
			((inputFrom == null) && date <= toDate) ||
			(fromDate <= date && (inputTo == null)) ||
			(fromDate <= date && date <= toDate)) {
			return true;
		}
		return false;
	}
);

$(document).ready(function() {
	var table = $('#dataTable').DataTable();

	$("#dataTable_filter label").attr("hidden", "hidden");

	$("#dataTable_filter").append("<select id='searchType' class='form-control-sm border'></select>");
	$("#dataTable_filter select").append("<option value='1'>신청번호</option>");
	$("#dataTable_filter select").append("<option value='4'>대여자</option>");
	$("#dataTable_filter select").append("<option value='5'>접수일</option>");

	$("#dataTable_filter").append("<span id='peorid'><input id='from' type='date' class='form-control-sm border'>~<input id='to' type='date' class='form-control-sm border ml-0'></span>");
	$("#peorid").hide();

	$("#dataTable_filter").append("<input id='searchValue' type='search' class='form-control form-control-sm border w-50' placeholder='검색어 입력 후 Enter 입력하세요.' aria-controls='dataTable'>");

	$("#searchValue, #searchType").on('keyup, change', function() {
		var numCols = table.columns().nodes().length;
		for (var i = 0; i < numCols; i++) { table.column(i).search(''); }

		var searchType = $("#searchType").val();
		var searchValue = $("#searchValue").val();

		table.column(searchType).search(searchValue).draw();
	});

	// Event listener to the two range filtering inputs to redraw on input
	$('#from, #to').change(function() {
		table.draw();
	});
});