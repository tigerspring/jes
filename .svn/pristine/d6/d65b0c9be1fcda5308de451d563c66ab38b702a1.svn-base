<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<style type="text/css">
		*{margin: 0;padding: 0}
		
		.a{width: 100%;height: 200px;border: 1px solid black;}
		
	</style>
	



<link id="uiThemes" rel="stylesheet" type="text/css" media="screen" href="styles/themes/redmond/jquery-ui-1.7.2.custom.css" />
     <link rel="stylesheet" type="text/css" media="screen" href="styles/themes/ui.jqgrid.css" />
     <!-- 引入jQuery -->
     <script type="text/javascript" src="scripts/jQuery/jquery-1.3.2.js"></script>
     <script src="scripts/jQuery/plugins/jquery-ui-1.7.2.custom.min.js" type="text/javascript"></script>
     <script src="scripts/jQuery/plugins/grid.locale-zh_CN.js" type="text/javascript"></script>
     <script src="scripts/jQuery/plugins/jquery.jqGrid.min.js" type="text/javascript"></script>
     <script type="text/javascript">
     
     $(function()
    		 {
    	 $("#jqGrid").jqGrid({
    		 url: ctx+'/wmspage/baseinfo/hmd/ye.json',
    		 datatype: "json",
    		 mtype:"GET",
    		 colModel: [
    		            {name:'rowid',hidden:true,key:true},
    					{ label: '订单号', name: 'dingdanghao', editable: true},
    					{ label: '物资名称', name: 'wuzhi' ,editable: true},
    					{ label: '数量 ', name: 'number', sorttype: 'integer',editable: true},
    					// sorttype is used only if the data is loaded locally or loadonce is set to true
    					{ label: '规格', name: 'guige', width: 80, ,editable: true},
    					{ label: '单位 ', name: 'dangwei', width: 80,editable: true} ,
    					{ label: '单价 ', name: 'price', width: 80,editable: true} ,
    					{ label: '金额 ', name: 'jine', width: 80,editable: true} ,
    					{ label: '供应商 ', name: 'gongying', width: 80,editable: true} ,
    					
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

</head>







<body>

<div class="a">
		<input type="button" value="保存" >&nbsp;&nbsp;
		
		<input type="button" value="取消">
		
		<hr>
		<br>
		
		凭证号：<input type="text"  align="left">
		&nbsp;&nbsp;&nbsp;&nbsp;
		状态:<select name="s" >
		<option value="新建">新建</option>
		<option value="审核">审核</option>
		<option value="完成">完成</option>
	
	</select>
	
	<br>
	<br>
	
	供应商：
	<select name="i" >
		<option value=""></option>
		<option value=""></option>
		<option value=""></option>
		</select>
		<br>
		<br>
		
		上传合同：<input type="file" value="上传">
		&nbsp;
		凭证：<input type="file" value="上传">
		&nbsp;
		发票：<input type="file" value="上传">
		
	</div>
		
	<div class="jggridContainer">
<table id="jqGrid"></table>
<div id="jqGridPager"></div>
</div>
	
	
	




	<table id="t"></table>
	<div id="d"></div>

</body>
</html>