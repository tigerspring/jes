<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<div id="qzyhright">
<table id="qzyhjqGrid"></table>
<div id="qzyhGridPager"></div>
</div>  
<script type="text/javascript">
$(document).ready(function () {
   /* 用户群组Tree */
    $("#qzyhjqGrid").jqGrid({
		url: ctx+'/sysStaff/listStaffs.action',
		datatype: "json",
		 colModel: [
			{ label: '用户iKey',  name: "ikey", editable: true, hidden:true },
			{ label: '用户名称', name: 'name', editable: true },
			{ label: '工号', name: 'code', editable: true},
			{ label: '邮箱', name: 'mail',editable: true} ,
			{ label: '电话', name: 'mobilephone',editable: true} ,
			{ label: '是否在线', name: 'isoutline',editable: true} 
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#qzyhGridPager"
	});
   
		// add navigation bar with some built in actions for the grid
        $('#qzyhjqGrid').navGrid('#qzyhGridPager',
           {edit: true,add: true, del: true,search: false,refresh: true,view: true, position: "left",cloneToTop: false},
           // options for the Edit Dialog
           {
               autowidth: true,
               editCaption: "修改",
               recreateForm: true,
               closeAfterEdit: true,
               url: ctx+"/sysStaff/updateStaffs_edit.action",
               reloadAfterSubmit:true,
               errorTextFormat: function (data) {
                   return 'Error: ' + data.responseText
               },
               afterSubmit:function(response,postdata){
              	  if(response.responseText==""){
              		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');//reloads the grid after edit
              		  return [false,''];
              	  }
              	  else{
              		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');
              		  return [true,response.responseText];
              	  }
                }
           },
           {
        	   height: 'auto',
               width: 620,
               addCaption: "添加",
               recreateForm: true,
               closeAfterAdd: true,
               url: ctx+"/sysStaff/updateStaffs_add.action",
               reloadAfterSubmit:true,
               errorTextFormat: function (data) {
                   return 'Error: ' + data.responseText
               },
               afterSubmit:function(response,postdata){
             	  if(response.responseText==""){
             		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');//reloads the grid after edit
             		  return [false,''];
             	  }
             	  else{
             		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');
             		  return [true,response.responseText];
             	  }
               }
           },
           {//delete
        	  closeAfterDelete:true,
        	  reloadAfterSubmit:true,
        	  url:ctx+"/sysStaff/updateStaffs_del.action",
        	  delData: {ikey : function(){
        		  	var id = $("#qzyhjqGrid").jqGrid('getGridParam','selrow');//根据点击行获得点击行的id（id为jsonReader: {id: "id" },）
        		    var rowData = $("#qzyhjqGrid").jqGrid("getRowData",id);//根据上面的id获得本行的所有数据
        		    var val= rowData.ikey; //获得制定列的值 （auditStatus 为colModel的name）
        		    return val;
        	  }},
        	  afterSubmit:function(response,postdata){       		  
        		  if(response.responseText==""){
            		  //$(this).jqGrid('setGridParam').trigger('reloadGrid',[{current:true}]);//reloads the grid after edit
            		  $(this).jqGrid('setGridParam').trigger('reloadGrid');
            		  return [false,response.responseText];
            	  }
            	  else{
            		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');
            		  return [true,response.responseText];
            	  }
        	  }
          });
		//ui-jqgrid-hdiv ui-state-default ui-corner-top头
		
        $('#gbox_qzyhjqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_qzyhjqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#qzyhGridPager').height();
        aa = aa*0.995;
        $('#gbox_qzyhjqGrid').children('.ui-jqgrid-view').children(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
});
</script>
