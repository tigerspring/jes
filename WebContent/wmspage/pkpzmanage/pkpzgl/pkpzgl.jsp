<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript"> 
$(document).ready(function () {
		/*  盘库凭证*/
		$("#pkpzGrid").jqGrid({
		url: ctx+'/wmspage/pkpzmanage/pkpzgl/pkpzgldata.json',
		datatype: "json",
		 colModel: [
			{ label: '状态', name: 'CategoryName', editable: true },
			{ label: '凭证号', name: 'ProductName', editable: true},
			{ label: '是否下达', name: 'Country' ,editable: true},
			{ label: '凭证创建日期', name: 'Country' ,editable: true},
			{ label: '盘库类型', name: 'Country' ,editable: true},
			{ label: '盘库方式', name: 'Country' ,editable: true},
			{ label: '仓库代码', name: 'Country' ,editable: true},
			{ label: '仓库名称', name: 'Country' ,editable: true},
			{ label: '创建人工号', name: 'Country' ,editable: true},
			{ label: '创建人姓名', name: 'Country' ,editable: true},
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#pkpzGridPager"
	});
		$('#pkpzGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 13, "titleText": "盘库凭证", "startColumnName": "rn" }]
			      });
	    $('#gbox_pkpzGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
		// add navigation bar with some built in actions for the grid
        $('#pkpzGrid').navGrid('#pkpzGridPager',
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
		/* 盘库指令 */
        $("#pkzlGrid").jqGrid({
    		url: ctx+'/wmspage/pkpzmanage/pkpzgl/pkpzgldata.json',
    		datatype: "json",
    		 colModel: [
    			{ label: '库位编号', name: 'CategoryName', editable: true },
    			{ label: '物资编码', name: 'ProductName', editable: true},
    			{ label: '物资名称', name: 'Country' ,editable: true},
    			{ label: '规格', name: 'Country' ,editable: true},
    			{ label: '数量', name: 'Country' ,editable: true},
    			{ label: '盘库数量', name: 'Country' ,editable: true},
    			{ label: '亏盈', name: 'Country' ,editable: true}
    		],
    		viewrecords: true, // show the current page, data rang and total records on the toolbar
    		autowidth: true,
    		altRows :true,
    		altclass: 'someClass',
    		rownumbers: true,
    		rowNum: 20,
    		loadonce: true, // this is just for the demo
    		pager: "#pkzlGridPager"
    	});
        $('#pkzlGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 8, "titleText": "盘库指令", "startColumnName": "rn" }]
			      });
	    $('#gbox_pkzlGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
    		// add navigation bar with some built in actions for the grid
            $('#pkzlGrid').navGrid('#pkzlGridPager',{edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
		/* 盘库凭证自定义新增方法 */
        $('#add_pkpzGrid').unbind('click');
        $('#add_pkpzGrid').on('click',function(){
        	/* 添加窗口 */
            $( "#addPkpzWin" ).dialog({
        		autoOpen: false,
        		height: 750,
        		width: 950,
        		modal: true,
        		title:"新增",
        		resizable:false
        	});
        	$( "#addPkpzWin" ).dialog('open');
        	$('.ui-widget-overlay').attr('style','z-index:949');
    		$( "#addPkpzWin" ).parent().css({'z-index':'950'});
        	$('#addPkpzWin').load(ctx+'/wmspage/pkpzmanage/pkpzgl/addPkpz.jsp');
        });
});
</script>
<div id="pkpz" style="width:100%;">
<table id="pkpzGrid"></table>
<div id="pkpzGridPager"></div>
</div>
<div id="pkzl" style="width:100%;">
<table id="pkzlGrid"></table>
<div id="pkzlGridPager"></div>
</div>
<div id="addPkpzWin"></div>
    