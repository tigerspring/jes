<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#ckyhjqGrid").jqGrid({
		url: ctx+'/wmspage/authoritymanage/ckyh/data.json',
		datatype: "json",
		 colModel: [
			{ label: '用户名称', name: 'CategoryName', editable: true },
			{ label: '仓库名称', name: 'ProductName', editable: true},
			{ label: '修改时间', name: 'Name', width: 80,editable: true} ,
			{ label: '修改者工号', name: 'Name', width: 80,editable: true} ,
			{ label: '修改者姓名', name: 'Name', width: 80,editable: true} 
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#ckyhGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#ckyhjqGrid').navGrid('#ckyhGridPager',
           {edit: true,add: true, del: true,search: false,refresh: true,view: true, position: "left",cloneToTop: false},
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
		//ui-jqgrid-hdiv ui-state-default ui-corner-top头
		
        $('#gbox_ckyhjqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_ckyhjqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#ckyhGridPager').height();
        aa = aa*0.995;
        $('#gbox_ckyhjqGrid').children('.ui-jqgrid-view').children(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
       
});
</script>
<div class="jggridContainer">
<table id="ckyhjqGrid"></table>
<div id="ckyhGridPager"></div>
</div>




