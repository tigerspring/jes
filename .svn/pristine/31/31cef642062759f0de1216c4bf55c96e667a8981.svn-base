<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
		$("#importjqGrid").jqGrid({
		url: ctx+'/wmspage/impvouchermanage/rkpzgl/importdata.json',
		datatype: "json",
		 colModel: [
			{ label: '状态', name: 'CategoryName' ,editable: true},
			{ label: '凭证号', name: 'CategoryName' ,editable: true},
			{ label: '是否下达', name: 'CategoryName' ,editable: true},
			{ label: '入库类型', name: 'CategoryName' ,editable: true},
			{ label: '客户名称', name: 'CategoryName' ,editable: true},
			{ label: '订单号', name: 'CategoryName' ,editable: true},
			{ label: '仓库名称', name: 'CategoryName' ,editable: true},
			{ label: '凭证创建日期', name: 'CategoryName' ,editable: true},
			{ label: '创建人工号', name: 'ProductName' ,editable: true},
			{ label: '凭证人姓名', name: 'CategoryName' ,editable: true},
			{ label: '凭证备注', name: 'CategoryName' ,editable: true}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#importGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#importjqGrid').navGrid('#importGridPager',
           {edit: true,add: true, del: true,search: false,refresh: true,view: false, position: "left",cloneToTop: false},
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
		
        $('#importjqGrid').navButtonAdd('#importGridPager',
         {
        	 id: "pzprintBtn",
             buttonicon: "ui-icon-print",
             title: "打印",
             caption: "打印",
             position: "last",
             onClickButton: startPrint
         });
        
        $('#importjqGrid').navButtonAdd('#importGridPager',
                {
                    buttonicon: "ui-icon-arrowthick-1-s",
                    title: "筛选",
                    caption: "筛选",
                    position: "last",
                    onClickButton: customButtonClicked
                });
        
        $('#importjqGrid').navButtonAdd('#importGridPager',
                {
                    buttonicon: "ui-icon-print",
                    title: "导入",
                    caption: "导入",
                    position: "last",
                    onClickButton: customButtonClicked
                });
        $('#importjqGrid').navButtonAdd('#importGridPager',
                {
                    buttonicon: "ui-icon-battery-3",
                    title: "打印标签",
                    caption: "打印标签",
                    position: "last",
                    onClickButton: ""
                });
		
		
 		
		
		$('#gbox_importjqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_importjqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#importGridPager').height();
        aa = aa*0.995;
        $('#gbox_importjqGrid').children('.ui-jqgrid-view ').children(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
        //注销自带函数
        $('#edit_importjqGrid').unbind('click');
        $('#add_importjqGrid').unbind('click');
        
        $( "#addVoucherWin" ).dialog({
    		autoOpen: false,
    		height: 650,
    		width: 900,
    		modal: true,
    		title:"新增",
    		resizable:false
    	});
        
        $('#add_importjqGrid').on('click',function(){
        	$( "#addVoucherWin" ).dialog('open');
        	$('.ui-widget-overlay').attr('style','z-index:949');
    		var parentStyle = $( "#addVoucherWin" ).parent().attr('style');
    		parentStyle += 'z-index:950;';
    		$( "#addVoucherWin" ).parent().attr('style',parentStyle);
        	$('#addVoucherWin').load(ctx+'/wmspage/impvouchermanage/rkpzgl/addvoucher.jsp');
        });
        
//         $("#buttonForInsert").click(function(){
//             jQuery("#importjqGrid").jqGrid('editGridRow', "new", { height: 300, reloadAfterSubmit: false });
//         });
		
       
});
function customButtonClicked(){
	alert("自定义按钮");
}
function closeWin(){
	$('#addVoucherWin').dialog( 'close' );
}

function startPrint()  

{  
	var oWin=window.open(ctx+"/wmspage/impvouchermanage/rkpzgl/printPage.jsp","_blank");
    oWin.focus();  
    oWin.document.close();  
}  
</script>
<table id="importjqGrid"></table>
<div id="importGridPager"></div>
<div id="addVoucherWin">
</div>

