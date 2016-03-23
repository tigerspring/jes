<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#qxjqGrid").jqGrid({
		url: '',
		datatype: "json",
		 colModel: [
			{ label: 'MENU_ICON', name: 'CategoryName', editable: true },
			{ label: 'FUNCTION_NAME', name: 'ProductName', editable: true},
			{ label: '功能', name: 'Country' ,editable: true},
			{ label: '权限', name: 'Country' ,editable: true}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#qxjqGridPager"
	});
		$('#qxjqGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 5, "titleText": "权限", "startColumnName": "rn" }]
			      });
		$('#qxjqGrid').find('.ui-state-default .ui-th-column-header .ui-th-ltr').css({'text-align':'left'});
		// add navigation bar with some built in actions for the grid
        $('#qxjqGrid').navGrid('#qxjqGridPager',
           {edit: true,add: true, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false},
           // options for the Edit Dialog
           {
        	   height: 'auto',
               width: 620,
               editCaption: "修改",
               recreateForm: true,
               closeAfterEdit: true,
               errorTextFormat: function (data) {
                   return 'Error: ' + data.responseText
               }
           });
       
});
</script>
<table id="qxjqGrid"></table>
<div id="qxjqGridPager"></div>