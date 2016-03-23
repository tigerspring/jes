<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#qxgljqGrid").jqGrid({
		url: ctx+'/sysGroup/listGroups.action',
		datatype: "json",
		 colModel: [
			{ label: '群组iKey',  name: "ikey", editable: true, hidden:true },
			{ label: '用户群主编码', name: 'groupcode', editable: true },
			{ label: '用户群主名称', name: 'groupname', editable: true},
			{ label: '用户群主描述', name: 'groupdescription' ,editable: true}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		loadonce: true, // this is just for the demo
		pager: "#qxglGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#qxgljqGrid').navGrid('#qxglGridPager',
           {edit: true,add: true, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false},
           // options for the Edit Dialog
           {
        	   height: 'auto',
               width: 620,
               editCaption: "修改",
               recreateForm: true,
               closeAfterEdit: true,
               url: ctx+"/sysGroup/updateGroups_edit.action",
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
               url: ctx+"/sysGroup/updateGroups_add.action",
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
           });
		//ui-jqgrid-hdiv ui-state-default ui-corner-top头
		
        $('#gbox_qxgljqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_qxgljqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#qxglGridPager').height();
        aa = aa*0.995;
        $('#gbox_qxgljqGrid').children('.ui-jqgrid-view').children(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
       
});
</script>
<table id="qxgljqGrid"></table>
<div id="qxglGridPager"></div>




