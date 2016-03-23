<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#qxglyhjqGrid").jqGrid({
		url: ctx+'/wmspage/authoritymanage/qzqx/qxgldata.json',
		datatype: "json",
		 colModel: [
			{ label: '用户工号', name: 'CategoryName' },
			{ label: '用户姓名', name: 'ProductName'}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 50,
		loadonce: true, // this is just for the demo
		pager: "#qxglyhGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#qxglyhjqGrid').navGrid('#qxglyhGridPager',
           {edit: true,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false}
           );
		
		//注销所有的事件
		$('#edit_qxglyhjqGrid').unbind('click');
		
       
});

</script>
<table id="qxglyhjqGrid"></table>
<div id="qxglyhGridPager"></div>

<%@include file="qxglyhxg.jsp" %>







