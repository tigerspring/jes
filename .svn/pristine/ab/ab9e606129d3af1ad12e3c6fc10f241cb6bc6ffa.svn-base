<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>

<script type="text/javascript"> 
$(document).ready(function () {
		/*  出库凭证*/
		$("#ckpzGrid").jqGrid({
		url: ctx+'/wmspage/expvouchermanage/ckpzgl/ckpzdata.json',
		datatype: "json",
		 colModel: [
			{ label: '状态', name: 'CategoryName', editable: true },
			{ label: '凭证号', name: 'ProductName', editable: true},
			{ label: '是否下达', name: 'Country' ,editable: true},
			{ label: '出库类型', name: 'Price',editable: true},
			{ label: '是否下达', name: 'Country' ,editable: true},
			{ label: '客户名称', name: 'Country' ,editable: true},
			{ label: '订单号', name: 'Country' ,editable: true},
			{ label: '仓库名称', name: 'Country' ,editable: true},
			{ label: '凭证创建日期', name: 'Country' ,editable: true},
			{ label: '创建人工号', name: 'Country' ,editable: true},
			{ label: '创建人姓名', name: 'Country' ,editable: true},
			{ label: '创建凭证', name: 'Country' ,editable: true} 
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#ckpzGridPager"
	});
	
		// add navigation bar with some built in actions for the grid
        $('#ckpzGrid').navGrid('#ckpzGridPager',
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
		/* 自定义按钮组 */
        $('#ckpzGrid').navButtonAdd('#ckpzGridPager',
         {
             buttonicon: "ui-icon-print",
             title: "打印",
             caption: "打印",
             position: "last",
             onClickButton: ""
         });
        
        $('#ckpzGrid').navButtonAdd('#ckpzGridPager',
         {
             buttonicon: "ui-icon-arrowthick-1-s",
             title: "筛选",
             caption: "筛选",
             position: "last",
             onClickButton: ""
         });
        
        $('#ckpzGrid').navButtonAdd('#ckpzGridPager',
         {
             buttonicon: "ui-icon-print",
             title: "导入",
             caption: "导入",
             position: "last",
             onClickButton: ""
         });
        $('#ckpzGrid').navButtonAdd('#ckpzGridPager',
        {
            buttonicon: "ui-icon-arrowthick-1-e",
            title: "执行",
            caption: "执行",
            position: "last",
            onClickButton: ""
        });
        $('#ckpzGrid').navButtonAdd('#ckpzGridPager',
         {
             buttonicon: "ui-icon-clipboard",
             title: "登记",
             caption: "登记",
             position: "last",
             onClickButton: ""
         });
		
      	//注销自带函数
        $('#edit_ckpzGrid').unbind('click');
        $('#add_ckpzGrid').unbind('click');
        
        $('#add_ckpzGrid').on('click',function(){
        	/* 添加窗口 */
            $( "#addCkVoucherWin" ).dialog({
        		autoOpen: false,
        		height: 650,
        		width: 900,
        		modal: true,
        		title:"新增",
        		resizable:false
        	});
        	$( "#addCkVoucherWin" ).dialog('open');
        	$('.ui-widget-overlay').attr('style','z-index:949');
    		$( "#addCkVoucherWin" ).parent().css({'z-index':'950'});
        	$('#addCkVoucherWin').load(ctx+'/wmspage/expvouchermanage/ckpzgl/addCkVoucher.jsp');
        });
        $('#edit_ckpzGrid').on('click',function(){
        	/* 修改窗口 */
            $( "#addCkVoucherWin" ).dialog({
        		autoOpen: false,
        		height: 650,
        		width: 900,
        		modal: true,
        		title:"修改",
        		resizable:false
        	});
        	$( "#addCkVoucherWin" ).dialog('open');
        	$('.ui-widget-overlay').attr('style','z-index:949');
    		$( "#addCkVoucherWin" ).parent().css({'z-index':'950'});
        	$('#addCkVoucherWin').load(ctx+'/wmspage/expvouchermanage/ckpzgl/addCkVoucher.jsp');
        });
	
		/* 出口凭证明细 */
		$("#ckpzDetailGrid").jqGrid({
			url: ctx+'/wmspage/expvouchermanage/ckpzgl/ckpzdata.json',
			datatype: "json",
			 colModel: [
				{ label: '状态', name: 'CategoryName', editable: false },
				{ label: '凭证号', name: 'ProductName', editable: false},
				{ label: '是否下达', name: 'Country' ,editable: false},
				{ label: '出库类型', name: 'Price',editable: false},
				{ label: '是否下达', name: 'Country' ,editable: false},
				{ label: '客户名称', name: 'Country' ,editable: false},
				{ label: '订单号', name: 'Country' ,editable: false},
				{ label: '仓库名称', name: 'Country' ,editable: false},
				{ label: '凭证创建日期', name: 'Country' ,editable: false},
				{ label: '创建人工号', name: 'Country' ,editable: false},
				{ label: '创建人姓名', name: 'Country' ,editable: false},
				{ label: '创建凭证', name: 'Country' ,editable: false} 
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			loadonce: true, // this is just for the demo
			pager: "#ckpzDetailGridPager"
		});
		$('#ckpzDetailGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 13, "titleText": "出库明细", "startColumnName": "rn" }]
			      });
	    $('#gbox_ckpzDetailGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
        $('#ckpzDetailGrid').navGrid('#ckpzDetailGridPager',
           {edit: false,add: false, del: false,search: false,refresh: true,view: true, position: "left",cloneToTop: false},
           // options for the Edit Dialog
           {
        	   height: 'auto',
               width: 620,
               editCaption: "修改",
               recreateForm: true,
               closeAfterEdit: true,
               errorTextFormat: function (data) {
                   return 'Error: ' + data.responseText
               }
           });
        
        
        
});
function closeCkVoucherWin(){
	$( "#addCkVoucherWin" ).dialog('close');
}
</script>
<div id="ckpz" style="width:100%;">
<table id="ckpzGrid"></table>
<div id="ckpzGridPager"></div>
</div>
<div id="ckpzDetail" style="width:100%;">
<table id="ckpzDetailGrid"></table>
<div id="ckpzDetailGridPager"></div>
</div>

<!-- 凭证添加窗口 -->
<div id="addCkVoucherWin"></div>
<!-- 凭证修改窗口 -->
<div id="editCkVoucherWin"></div>
