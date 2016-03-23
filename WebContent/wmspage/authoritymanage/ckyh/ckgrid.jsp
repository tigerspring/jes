<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#ckjqGrid").jqGrid({
		url: ctx+'/wmspage/authoritymanage/ckyh/data.json',
		datatype: "json",
		 colModel: [
			{ label: '仓库代码', name: 'CategoryName', editable: true },
			{ label: '仓库名称', name: 'ProductName', editable: true}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#ckGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#ckjqGrid').navGrid('#ckGridPager',
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
		
        $('#gbox_ckjqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_ckjqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#ckGridPager').height();
        aa = aa*0.995;
        $('#gbox_ckjqGrid').children('.ui-jqgrid-view').children(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
       
});
</script>
<div class="jggridContainer">
<table id="ckjqGrid"></table>
<div id="ckGridPager"></div>
</div>




