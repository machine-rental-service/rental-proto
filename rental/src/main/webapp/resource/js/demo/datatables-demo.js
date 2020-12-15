// Call the dataTables jQuery plugin
// Call the dataTables jQuery plugin
$(document).ready(function() {
	// Setup - add a text input to each footer cell

	var table = $('#dataTable').DataTable({});

	$("#dataTable_filter label").attr("hidden", "hidden");

	$("#dataTable_filter").append("<select id='searchType' class='form-control-sm border'></select>");
	$("#dataTable_filter select").append("<option value='1'>신청번호</option>");
	$("#dataTable_filter select").append("<option value='4'>대여자</option>");
	$("#dataTable_filter").append("<input id='searchValue' type='search' class='form-control form-control-sm border' placeholder='' aria-controls='dataTable'>");
	$("#dataTable_filter").append("<button id='searchBtn' class='btn btn-primary ml-2' type='button'>검색</button>");

	$("#searchBtn").click(function() {
		var numCols = table.columns().nodes().length;
		for (var i = 0; i < numCols; i++) { table.column(i).search(''); }

		var searchType = $("#searchType").val();
		var searchValue = $("#searchValue").val();

		table.column(searchType).search(searchValue).draw();
	});
});
