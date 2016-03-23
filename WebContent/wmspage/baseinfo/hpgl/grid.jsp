<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#jqGrid").jqGrid({
		url: ctx+'/wmspage/baseinfo/hpgl/data.json',
		datatype: "json",
		mtype: "GET",
		 colModel: [
            {name:'rowid',hidden:true,key:true},
			{ label: '物资分类代码', name: 'CategoryName', editable: true },
			{ label: '物资分类名称', name: 'ProductName', editable: true},
			{ label: '物资分类描述', name: 'Country' ,editable: true},
			{ label: '打印字号 ', name: 'Price', sorttype: 'integer',editable: true},
			// sorttype is used only if the data is loaded locally or loadonce is set to true
			{ label: '记账分类', name: 'Quantity', width: 80, sorttype: 'number',editable: true},
			{ label: '交易类型', name: 'Name', width: 80,editable: true} ,
			{ label: '修改时间', name: 'Name', width: 80,editable: true} ,
			{ label: '用户工号', name: 'Name', width: 80,editable: true} ,
			{ label: '用户姓名', name: 'Name', width: 80,editable: true} ,
			{ label: 'IP', name: 'Name', width: 80,editable: true} 
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 30,
		loadonce: true, // this is just for the demo
		pager: "#jqGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#jqGrid').navGrid('#jqGridPager',
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
		
        $('#gbox_jqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_jqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#jqGridPager').height();
        aa = aa*0.995;
        $(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
       
});

</script>
<div class="jggridContainer">
<table id="jqGrid"></table>
<div id="jqGridPager"></div>
</div>




