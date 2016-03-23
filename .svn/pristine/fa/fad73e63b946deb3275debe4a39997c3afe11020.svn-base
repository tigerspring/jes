<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="bybspz">
<table id="bybspzGrid"></table>
<div id="bybspzGridPager"></div>
</div>
<div id="bybspzmx">
<table id="bybspzmxGrid"></table>
<div id="bybspzmxGridPager"></div>
</div>
<!-- 新增报溢报损明细窗口 -->
<div id="addBybsmxdWin"></div>
<script type="text/javascript">
$(document).ready(function(){
	/* 报溢报损凭证Grid */
	$('#bybspzGrid').jqGrid({
		url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
		datatype: "json",
		colModel: [			
			{ label: '凭证号', name: 'ProductName'},
			{ label: '凭证的创建日期', name: 'Country'},
			{ label: '盘库凭证号', name: 'ProductName'},
			{ label: '状态', name: 'ProductName'},
			{ label: '创建人工号', name: 'Country' },
			{ label: '创建人姓名', name: 'Country'},
			{ label: '仓库代码', name: 'Country'},
			{ label: '仓库名称代码', name: 'Country'},
			{ label: '凭证备注', name: 'Country'}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#bybspzGridPager"
	});
	$('#bybspzGrid').setGroupHeaders(
		      {
		          useColSpanStyle: true,
		          groupHeaders: [{ "numberOfColumns": 10, "titleText": "报溢报损凭证", "startColumnName": "rn" }]
		      });
	$('#gbox_bybspzGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
	// add navigation bar with some built in actions for the grid
	$('#bybspzGrid').navGrid('#bybspzGridPager',{edit: true,add: true, del: true,search: false,refresh: true,view: false, position: "left",cloneToTop: false});
	/* 注销自带add方法 */
	$('#add_bybspzGrid').unbind('click');
	/* 自定义add方法 */
	$('#add_bybspzGrid').click(function(){
		/* 添加报溢报损明细 */
		$('#addBybsmxdWin').dialog({
			autoOpen: false,
			height: 650,
			width: 900,
			modal: true,
			title:"新增",
			resizable:false
		});
		$( "#addBybsmxdWin" ).dialog('open');
	   	$('.ui-widget-overlay').attr('style','z-index:949');
		$( "#addBybsmxdWin" ).parent().css({'z-index':'950'});
	   	$('#addBybsmxdWin').load(ctx+'/wmspage/yspzmanage/yspzgl/addbybsmx.jsp');
	});
	
	
	
	/* 报溢报损凭证明细Grid */
	$('#bybspzmxGrid').jqGrid({
		url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
		datatype: "json",
		colModel: [			
			{ label: '报溢报损类型', name: 'ProductName'},
			{ label: '物资编码', name: 'Country'},
			{ label: '物资名称', name: 'ProductName'},
			{ label: '规格', name: 'ProductName'},
			{ label: '库位编码', name: 'Country' },
			{ label: '数量', name: 'Country'},
			{ label: '单位', name: 'Country'},
			{ label: '备注', name: 'Country'}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#bybspzmxGridPager"
	});
	$('#bybspzmxGrid').setGroupHeaders(
		      {
		          useColSpanStyle: true,
		          groupHeaders: [{ "numberOfColumns": 10, "titleText": "报溢报损明细", "startColumnName": "rn" }]
		      });
	$('#gbox_bybspzmxGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
	// add navigation bar with some built in actions for the grid
	$('#bybspzGrid').navGrid('#bybspzGridPager',{edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
});
</script>