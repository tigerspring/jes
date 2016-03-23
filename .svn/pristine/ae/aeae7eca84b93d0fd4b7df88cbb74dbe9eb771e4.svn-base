/**
 * 
 */
$(document).ready(function () {	
		$("#jldwJqGrid").jqGrid({
		url: ctx+"/json/listUnits.action",
		datatype: "json",
		mtype: "GET",		
		colModel: [
			{ label: '单位代码', name: 'unitcode', editable: true },
			{ label: '单位', name: 'unit', editable: true},
			{ label: '单位描述', name: 'unitdescription' ,editable: true},
			{ label: '修改时间', name: 'updateDate',editable: false},
			{ label: '用户工号', name: 'usercode', width: 80,editable: false},
			{ label: '用户姓名', name: 'username', width: 80,editable: false} 
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true, 
		rowNum: 30,
		//rowList:[10,20,50],
		loadonce: true, // this is just for the demo
		jsonReader:{
			root:"gridModel",//注意此处，是你返回的数据集名称
			repeatitems:true
		},
		editurl:  ctx+"/json/listUnitsAction!updateUnits.action",
		pager: "#jldwJqGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#jldwJqGrid').navGrid('#jldwJqGridPager', {
//           {edit: true,add: true, del: true,search: false,refresh: true,view: true, position: "left",cloneToTop: false},
//           {
//        	   height: 'auto',
//               width: 620,
//               editCaption: "The Edit Dialog",
//               recreateForm: true,
//               closeAfterEdit: true,
//               errorTextFormat: function (data) {
//                   return 'Error: ' + data.responseText
//               }
//           },
//           {
//        	   height: 'auto',
//               width: 620,
//               editCaption: "The Add Dialog",
//               recreateForm: true,
//               closeAfterEdit: true,
//               errorTextFormat: function (data) {
//                   return 'Error: ' + data.responseText
//               }
//             }
        	   addfunc: openDialog4Adding,
//        	   editfunc:oepnDialog4Updating,
//        	   delfunc: oepnDialog4Deleting,
        	   alerttext:"请选择需要操作的数据行！"
        		});
		var openDialog4Adding = function(){
			var consoleDlg = $("#consoleDlg");
			var dialogButtonPanel = consoleDlg.siblings(".ui-dialog-buttonpane");
			consoleDlg.find("input").removeAttr("disable").val("");
			dialogButtonPanel.find("button:not(:contains('取消'))").hide();
			dialogButtonPanel.find("button:(:contains('创建'))").show();
			consoleDlg.dialog("option","title","新增计量单位").dialog("open");
		};
		
		
		//ui-jqgrid-hdiv ui-state-default ui-corner-top		
        $('#gbox_jldwJqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_jldwJqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#jldwJqGridPager').height();
        aa = aa*0.995;
        $(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");       
});
