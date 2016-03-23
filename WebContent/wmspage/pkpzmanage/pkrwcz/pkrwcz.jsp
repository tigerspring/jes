<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript"> 
$(document).ready(function () {
	$("#pkrwczGrid").jqGrid({
		url: ctx+'/wmspage/impvouchermanage/rkrucz/rkTaskdata.json',
		datatype: "json",
		 colModel: [
			{ label: '物资编码', name: 'CategoryName' ,editable: false},
			{ label: '物资名称', name: 'CategoryName' ,editable: false},
			{ label: '规格', name: 'CategoryName' ,editable: false},
			{ label: '存放数', name: 'CategoryName' ,editable: false},
			{ label: '单位', name: 'CategoryName' ,editable: false},
			{ label: '物资分类代码', name: 'CategoryName' ,editable: false},
			{ label: '物资分类名称', name: 'CategoryName' ,editable: false},
			{ label: '单价', name: 'CategoryName' ,editable: false}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			loadonce: true, // this is just for the demo
			pager: "#pkrwczGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#pkrwczGrid').navGrid('#pkrwczGridPager',
           {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
		/* 添加自定义按钮下达指派 */
        $('#pkrwczGrid').navButtonAdd('#pkrwczGridPager',
                {
                    buttonicon: "",
                    title: "下达指派",
                    caption: "下达指派",
                    position: "last",
                    onClickButton: openpkxdWin
                });
        /* 打开下达窗口 */
        $( "#pkxdWin" ).dialog({
    		autoOpen: false,
    		height: 750,
    		width: 950,
    		modal: true,
    		title:"新增",
    		resizable:false
    	});
});
function openpkxdWin(){
	$( "#pkxdWin" ).dialog('open');
	$('.ui-widget-overlay').attr('style','z-index:949');
	$( "#pkxdWin" ).parent().css({'z-index':'950'});
	$('#pkxdWin').load(ctx+'/wmspage/pkpzmanage/pkrwcz/pkrwxd.jsp');
}
function closeXdWin(){
	$( "#pkxdWin" ).dialog('close');
}
</script>
<table id="pkrwczGrid"></table>
<div id="pkrwczGridPager"></div>
<div id="pkxdWin"></div>