<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.someClass {
	background-color: #F5FBFF;
	background-image: none;
}
</style>
<script type="text/javascript">
$(document).ready(function () {	
		$("#jldwJqGrid").jqGrid({
		url: ctx+"/json1/listUnits.action",
		datatype: "json",
		mtype: "POST",		
		colModel: [
		    {name:'iKey',label:'库id',hidden:true,key:true},
			{ label: '单位代码', name: 'unitcode', editable: true,
				edittype:'text',
				editoptions:{size:10,maxlength:32},
				editrules:{required:true}},
			{ label: '单位', name: 'unit', editable: true,
				edittype:'text',
				editoptions:{size:10,maxlength:32},
				editrules:{required:true}},
			{ label: '单位描述', name: 'unitdescription' ,editable: true,
				edittype:'text',
				editoptions:{size:10,maxlength:32},
				editrules:{required:true}},
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
// 		rowList:[10,20,50],
		//loadonce: true, // this is just for the demo
		jsonReader:{
			root:"gridModel",//注意此处，是你返回的数据集名称
			repeatitems:true			
		}, 
		rmNames:{
			search:'search'
		},
		pager: "#jldwJqGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#jldwJqGrid').navGrid('#jldwJqGridPager', {
          edit: true,add: true, del: true,search: false,refresh: true,view: true, position: "left",cloneToTop: false},
   	   {//edit        	  
       	      height: 'auto',
              width: 620,
              editCaption: "The Edit Dialog",
              recreateForm: true,
              closeAfterEdit: true,
              url: ctx+"/json1/updateUnits_edit.action",
              errorTextFormat: function (data) {
                  return 'Error: ' + data.responseText;
              },
              reloadAfterSubmit:true,
              afterSubmit:function(response,postdata){
            	  var selectedId = $("#jldwJqGrid").jgGrid('getGridParam','selrow');
            	  if(response.responseText==""){
            		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');//reloads the grid after edit
            		  return [true,''];
            	  }
            	  else{
            		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');
            		  return [false,response.responseText];
            	  }
              }
          },
          {//add 
//        	      height: 'auto',
//               width: 620,
//               editCaption: "The Add Dialog",
//               recreateForm: false,
//               closeAfterEdit: true, 
//               url:ctx+"/json1/updateUnits_Btest.action",
//               errorTextFormat: function (data) {
//                   return 'Error: ' + data.responseText;
//               },
//               closeAfterAdd: true,
//               afterSubmit:function(response,postdata){
//             	  if(response.responseText==""){
//             		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');//reloads the grid after edit
//             		  return [true,''];
//             	  }
//             	  else{
//             		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');
//             		  return [false,response.responseText];
//             	  }
//               }
              closeAfterAdd: true,
              url:ctx+"/json1/updateUnits_add.action",
              recreateForm: true,
              errorTextFormat: function (data) {
                  return 'Error: ' + data.responseText;
              },
              afterSubmit:function(response,postdata){
            	  if(response.responseText==""){
            		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');//reloads the grid after edit
            		  return [true,''];
            	  }
            	  else{
            		  $(this).jqGrid('setGridParam',{datatype:'json'}).trigger('reloadGrid');
            		  return [false,response.responseText];
            	  }
              }
          },
          {//delete
        	  closeAfterDelete:true,
        	  url:ctx+"/json1/updateUnits_del.action",
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
          },
          {//search
        	  closeOnEscape:true
          });
		
		//ui-jqgrid-hdiv ui-state-default ui-corner-top		
        $('#gbox_jldwJqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_jldwJqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#jldwJqGridPager').height();
        aa = aa*0.995;
        $(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");       
});
</script>
<div class="jggridContainer">
	<table id="jldwJqGrid"></table>
	<div id="jldwJqGridPager"></div>
</div>




