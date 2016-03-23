<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 盘库凭证单生成 -->
<table id="pkpzdscGrid"></table>
<div id="pkpzdscGridPager"></div>
<script type="text/javascript">
$(function(){
	/* pkpzdscGrid*/
	$("#pkpzdscGrid").jqGrid({
			url: ctx+'/wmspage/baseinfo/hpgl/data.json',
			datatype: "json",
			 colModel: [
				{ label: '状态', name: 'CategoryName', editable: true },
				{ label: '凭证号', name: 'ProductName', editable: true},
				{ label: '是否下达', name: 'Country' ,editable: true},
				{ label: '凭证创建日期', name: 'Price', sorttype: 'integer',editable: true},
				{ label: '盘库类型', name: 'Name', width: 80,editable: true,edittype: "select"} ,
				{ label: '盘库方式', name: 'Name', width: 80,editable: true} ,
				{ label: '仓库代码', name: 'Name', width: 80,editable: true} ,
				{ label: '仓库名称', name: 'Name', width: 80,editable: true} ,
				{ label: '创建人工号', name: 'Name', width: 80,editable: true} ,
				{ label: '创建人姓名', name: 'Name', width: 80,editable: true} 
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			loadonce: true, // this is just for the demo
			pager: "#pkpzdscGridPager"
		});
		$('#pkpzdscGrid').navGrid('#pkpzdscGridPager',
	           {edit: false,add: true, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false},
	           // options for the Edit Dialog
	           {
	        	   height: 'auto',
	               width: 620,
	               editCaption: "The Edit Dialog",
	               recreateForm: true,
	               closeAfterEdit: true,
	               errorTextFormat: function (data) {
	                   return 'Error: ' + data.responseText
	               }
	           });
});
</script>