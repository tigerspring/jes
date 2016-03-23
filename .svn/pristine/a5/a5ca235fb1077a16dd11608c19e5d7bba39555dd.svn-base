<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="ljrkTop">
<table id="ljrkTopGrid"></table>
<div id="ljrkTopGridPager"></div>
</div>
<div id="ljrkBottom">
<table id="ljrkBottomGrid"></table>
<div id="ljrkBottomGridPager"></div>
</div>
<!-- 定义采集窗口 -->
<div id="cjWin"></div>
<div id="receiveTaskWin"></div>
<script type="text/javascript">
$(document).ready(function(){
	$('#ljrkTopGrid').jqGrid({
		url: ctx+'/wmspage/baseinfo/hpgl/data.json',
		datatype: "json",
		 colModel: [
			{ label: '任务号', name: 'CategoryName', editable: true },
			{ label: '任务状态', name: 'ProductName', editable: true},
			{ label: '采集类型', name: 'Country' ,editable: true},
			{ label: '任务来源', name: 'Name', width: 80,editable: true},
			{ label: '凭证号', name: 'Name', width: 80,editable: true},
			{ label: '创建日期', name: 'Name', width: 80,editable: true},
			{ label: '仓库代码', name: 'Name', width: 80,editable: true},
			{ label: '仓库名称', name: 'Name', width: 80,editable: true}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#ljrkTopGridPager"
	});
	$('#ljrkTopGrid').navGrid('#ljrkTopGridPager',
      {edit: false,add: false, del: false,search: false,refresh: true,view: false, position: "left",cloneToTop: false});
	/* 自定义采集按钮 */ 
	$('#ljrkTopGrid').navButtonAdd('#ljrkTopGridPager',
             {
                 buttonicon: "ui-icon-arrowthick-1-s",
                 title: "采集",
                 caption: "采集",
                 position: "last",
                 onClickButton: addCjModule
     });
	/* 自定义接受任务按钮 */
	 $('#ljrkTopGrid').navButtonAdd('#ljrkTopGridPager',
             {
                 buttonicon: "ui-icon-arrowthick-1-s",
                 title: "接受任务",
                 caption: "接受任务",
                 position: "last",
                 onClickButton: receiveTask
     });
	/* 定义采集窗口 */
	 $( "#cjWin" ).dialog({
 		autoOpen: false,
 		height: 700,
 		width: 900,
 		modal: true,
 		title:"采集",
 		resizable:false
 	});
	/* 定义接受任务窗口 */
	 $( "#receiveTaskWin" ).dialog({
	 		autoOpen: false,
	 		height: 700,
	 		width: 900,
	 		modal: true,
	 		title:"采集",
	 		resizable:false
	 	});
});
/* 打开采集窗口 */
function addCjModule(){
	
	$( "#cjWin" ).dialog('open');
	$('.ui-widget-overlay').attr('style','z-index:949');
	var parentStyle = $( "#cjWin" ).parent().attr('style');
	parentStyle += 'z-index:950;';
	$( "#cjWin" ).parent().attr('style',parentStyle);
	$('#cjWin').load(ctx+'/wmspage/pdasjcj/ljrkcj/cj.jsp');  
}
function receiveTask(){
	$( "#receiveTaskWin" ).dialog('open');
	$('.ui-widget-overlay').attr('style','z-index:949');
	var parentStyle = $( "#receiveTaskWin" ).parent().attr('style');
	parentStyle += 'z-index:950;';
	$( "#receiveTaskWin" ).parent().attr('style',parentStyle);
	$('#receiveTaskWin').load(ctx+'/wmspage/pdasjcj/ljrkcj/receiveTask.jsp');  
}
</script>