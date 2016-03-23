<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 	<link rel="stylesheet" type="text/css" media="screen" href="../../jquery/css/redmond/jquery-ui-1.10.4.custom.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="../../jquery.jqGrid-4.4.3/css/ui.jqgrid.css" />
	<script src="../../jquery/js/jquery-1.10.2.js"></script>
	<script src="../../jquery/core/ui/jquery-ui.custom.js"></script>
	<script src="../../jquery.jqGrid-4.4.3/js/i18n/grid.locale-cn.js" type="text/javascript"></script>
	<script src="../../jquery.jqGrid-4.4.3/js/jquery.jqGrid.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="../../jquery/css/demos.css">
</head>
<body>
<table id="jqGrid"></table>
    <div id="jqGridPager"></div>
<script type="text/javascript"> 
	

$(document).ready(function () {

		$("#jqGrid").jqGrid({
		url: 'data.json',
		datatype: "json",
		 colModel: [
			{ label: 'Category Name', name: 'CategoryName', width: 75 },
			{ label: 'Product Name', name: 'ProductName', width: 90 },
			{ label: 'Country', name: 'Country', width: 100 },
			{ label: 'Price', name: 'Price', width: 80, sorttype: 'integer' },
			// sorttype is used only if the data is loaded locally or loadonce is set to true
			{ label: 'Quantity', name: 'Quantity', width: 80, sorttype: 'number' }                   
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		width: 780,
		height: 200,
		rowNum: 30,
		loadonce: true, // this is just for the demo
		pager: "#jqGridPager"
	});
});

 </script>
</body>
</html>