<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
$(document).ready(function(){
	$('#ykdGrid').jqGrid({
		url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
		datatype: "json",
		colModel: [
			{ label: '状态', name: 'CategoryName', editable: true },
			{ label: '凭证号', name: 'ProductName', editable: true},
			{ label: '仓库名称', name: 'Country' ,editable: true},
			{ label: '凭证的创建日期', name: 'Country' ,editable: true},
			{ label: '创建人工号', name: 'Country' ,editable: true},
			{ label: '创建人姓名', name: 'Country' ,editable: true},
			{ label: '办理人', name: 'Country' ,editable: true},
			{ label: '凭证备注', name: 'Country' ,editable: true}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#ykdGridPager"
	});
	$('#ykdGrid').setGroupHeaders(
		      {
		          useColSpanStyle: true,
		          groupHeaders: [{ "numberOfColumns": 9, "titleText": "移库单", "startColumnName": "rn" }]
		      });
	$('#gbox_ykdGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
	// add navigation bar with some built in actions for the grid
  	$('#ykdGrid').navGrid('#ykdGridPager',{edit: true,add: true, del: true,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	/* 注销Grid自带add方法和edit方法 */
	$('#add_ykdGrid').unbind('click');
	$('#edit_ykdGrid').unbind('click');
	
	$('#add_ykdGrid').click(function(){
		/* 添加移库单 */
		$('#addYkdWin').dialog({
			autoOpen: false,
			height: 650,
			width: 900,
			modal: true,
			title:"新增",
			resizable:false
		});
		$( "#addYkdWin" ).dialog('open');
	   	$('.ui-widget-overlay').attr('style','z-index:949');
		$( "#addYkdWin" ).parent().css({'z-index':'950'});
	   	$('#addYkdWin').load(ctx+'/wmspage/ykpzmanage/ykpzgl/addykpz.jsp');
	});
	/* 修改移库单 */
	$('#edit_ykdGrid').click(function(){
	$('#updateYkWin').dialog({
		autoOpen: false,
		height: 650,
		width: 900,
		modal: true,
		title:"修改",
		resizable:false
	});
	$( "#updateYkWin" ).dialog('open');
   	$('.ui-widget-overlay').attr('style','z-index:949');
	$( "#updateYkWin" ).parent().css({'z-index':'950'});
   	$('#updateYkWin').load(ctx+'/wmspage/ykpzmanage/ykpzgl/updateykpz.jsp');
	});
	
  $('#ykmxGrid').jqGrid({
		url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
		datatype: "json",
		colModel: [
			{ label: '批号', name: 'CategoryName'},
			{ label: '物资编码', name: 'ProductName'},
			{ label: '物资名称', name: 'Country'},
			{ label: '规格', name: 'Country'},
			{ label: '来源库位编码', name: 'Country'},
			{ label: '目标库位编码', name: 'Country'},
			{ label: '数量', name: 'Country'},
			{ label: '单位', name: 'Country'},
			{ label: '描述', name: 'Country'}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#ykmxGridPager"
	});
	$('#ykmxGrid').setGroupHeaders(
		      {
		          useColSpanStyle: true,
		          groupHeaders: [{ "numberOfColumns": 10, "titleText": "移库明细", "startColumnName": "rn" }]
		      });
	$('#gbox_ykmxGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
	// add navigation bar with some built in actions for the grid
	$('#ykdGrid').navGrid('#ykdGridPager',{edit: false,add: true, del: true,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	
	
	
	
	
});
</script>

<!-- 移库单模块 -->
<div id="ykd">
<!-- 移库单列表 -->
<table id="ykdGrid"></table>
<div id="ykdGridPager"></div>
</div>

<!-- 移库明细模块 -->
<div id="ykmx">
<!-- 移库明细 -->
<table id="ykmxGrid"></table>
<div id="ykmxGridPager"></div>
</div>

<!-- 添加移库单串口 -->
<div id="addYkdWin"></div>
<!-- 修改移库单串口 -->
<div id="updateYkWin"></div>

