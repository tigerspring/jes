<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#rkTaskjqGrid").jqGrid({
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
		pager: "#rkTaskjqGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#rkTaskjqGrid').navGrid('#rkTaskjqGridPager',
           {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
        
        $('#rkTaskjqGrid').navButtonAdd('#rkTaskjqGridPager',
                {
                    buttonicon: "",
                    title: "下达指派",
                    caption: "下达指派",
                    position: "last",
                    onClickButton: openXdWin
                });
        $('#rkTaskjqGrid').navButtonAdd('#rkTaskjqGridPager',
                {
                    buttonicon: "",
                    title: "入库批次生成",
                    caption: "入库批次生成",
                    position: "last"
//                     onClickButton: customButtonClicked
                });
        $('#rkTaskjqGrid').navButtonAdd('#rkTaskjqGridPager',
                {
                    buttonicon: "",
                    title: "标签打印",
                    caption: "标签打印",
                    position: "last"
//                     onClickButton: customButtonClicked
                });
        $('#gbox_rkTaskjqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_rkTaskjqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#rkTaskjqGridPager').height();
        aa = aa*0.995;
        $('#gbox_rkTaskjqGrid').children('.ui-jqgrid-view').children(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
		//注销jqgrid自带方法
        $('#add_rkTaskjqGrid').unbind('click');
        $( "#xdWin" ).dialog({
    		autoOpen: false,
    		height: $(window).height()*0.9,
    		width: $(window).width()*0.9,
    		modal: true,
    		title:"下达",
    		resizable:false
    	});
});
function openXdWin(){
	$( "#xdWin" ).dialog('open');
	$('.ui-widget-overlay').attr('style','z-index:949');
	var parentStyle = $( "#xdWin" ).parent().attr('style');
	parentStyle += 'z-index:950;';
	$( "#xdWin" ).parent().attr('style',parentStyle);
	$('#xdWin').load(ctx+'/wmspage/impvouchermanage/rkrucz/xd.jsp');
}
function closeXdWin(){
	$( "#xdWin" ).dialog('close');
}
</script>
<table id="rkTaskjqGrid" style="height:100%;"></table>
<div id="rkTaskjqGridPager"></div>
<div id="xdWin"></div>