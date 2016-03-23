<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table id="hwmxjqGrid"></table>
<div id="hwmxGridPager"></div>

<script type="text/javascript">
var hwgridHeight = $('#hw').height() - $('#hwtitleBar').height() - $('#hwsearchBar').height();
//初始化多选货物明细表格
$('#hwmxjqGrid').jqGrid({
	url: ctx+'/wmspage/impvouchermanage/rkpzgl/importdata.json',
	datatype: "json",
	 colModel: [
		{ label: '物资编码', name: 'CategoryName' ,editable: true},
		{ label: '物资名称', name: 'CategoryName' ,editable: true},
		{ label: '规格', name: 'CategoryName' ,editable: true},
		{ label: '存放数', name: 'CategoryName' ,editable: true},
		{ label: '单位', name: 'CategoryName' ,editable: true},
		{ label: '物资分类代码', name: 'CategoryName' ,editable: true},
		{ label: '物资分类名称', name: 'CategoryName' ,editable: true},
		{ label: '单价', name: 'CategoryName' ,editable: true}
	],
	viewrecords: true, // show the current page, data rang and total records on the toolbar
	autowidth: true,
	altRows :true,
	loadonce: true,
	altclass: 'someClass',
	rownumbers: true,
	rowNum: 20,
	multiselect: true,
	pager: "#hwmxGridPager"
});

 $('#hwmxjqGrid').navGrid('#hwmxGridPager',
           {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
 $('#hwmxjqGrid').navButtonAdd('#hwmxGridPager',
         {
     buttonicon: "ui-icon-arrowthick-1-s",
     title: "添加到已选择",
     caption: "添加到已选择",
     position: "last",
     onClickButton: customButtonClicked
 });
 
 var paddingleft = $('#addpzDetailWin').css('padding-right').replace('px','');
 var hwgridHeight = $('#hw').height() - $('#hwtitleBar').height() - $('#hwsearchBar').height()-$('#gview_hwmxjqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#hwmxGridPager').height();
 //重新调整宽度
//  $('#hwmxjqGrid').setGridWidth($('#hwsearchBar').width());
 $('#hwmxjqGrid').setGridHeight(hwgridHeight);
</script>