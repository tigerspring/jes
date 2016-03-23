<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#kwgljqGrid").jqGrid({
		url: ctx+'/jsp/wmspage/baseinfo/kwgl/data.json',
		datatype: "json",
		 colModel: [
			{ label: '仓库代码', name: 'CategoryName', editable: true },
			{ label: '仓库名称', name: 'ProductName', editable: true},
			{ label: '库房类型', name: 'Country' ,editable: true},
			{ label: '是否扫描', name: 'Price', sorttype: 'integer',editable: true},
			// sorttype is used only if the data is loaded locally or loadonce is set to true
			{ label: '是否锁定', name: 'Quantity', width: 80, sorttype: 'number',editable: true},
			{ label: '仓库说明', name: 'Name', width: 80,editable: true} ,
			{ label: '修改时间', name: 'Name', width: 80,editable: true} ,
			{ label: '用户工号', name: 'Name', width: 80,editable: true} ,
			{ label: '用户姓名', name: 'Name', width: 80,editable: true} 
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#kwglGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#kwgljqGrid').navGrid('#kwglGridPager',
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
		
        $('#gbox_kwgljqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_kwgljqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#kwglGridPager').height();
        aa = aa*0.995;
        $(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
       
});
</script>
<div class="jggridContainer">
<table id="kwgljqGrid"></table>
<div id="kwglGridPager"></div>
</div>




