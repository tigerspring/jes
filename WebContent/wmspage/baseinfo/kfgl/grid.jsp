<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<script type="text/javascript"> 
	

$(document).ready(function () {
	
		$("#kfgljqGrid").jqGrid({
		url: ctx+"/wmspage/baseinfo/kfgl/data.json",
		datatype: "json",
		 colModel: [
		    {name:'rowid',hidden:true,key:true},
			{ label: '仓库代码', name: 'shcode', editable: true },
			{ label: '仓库名称', name: 'shname', editable: true},
			{ label: '库房类型', name: 'Country' ,editable: true},
			{ label: '是否扫描', name: 'isScan',editable: true},
			{ label: '是否锁定', name: 'isLock',editable: true},
			{ label: '仓库说明', name: 'description', width: 80,editable: true} ,
			{ label: '修改时间', name: 'updatedate', width: 80,editable: true} ,
			{ label: '用户工号', name: 'usercode', width: 80,editable: true} ,
			{ label: '用户姓名', name: 'username', width: 80,editable: true} 
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 30, 
		pager: "#kfglGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#kfgljqGrid').navGrid('#kfglGridPager', {
        	    edit: true,add: true, del: true,search: false,refresh: true,view: true, position: "left",cloneToTop: false},
        	   	   {//edit        	  
        	       	      height: 'auto',
        	              width: 620,
        	              editCaption: "The Edit Dialog",
        	              recreateForm: true,
        	              closeAfterEdit: true,
        	              errorTextFormat: function (data) {
        	                  return 'Error: ' + data.responseText;
        	              },
        	              reloadAfterSubmit:true,
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
        	          {//add 
        	       	      height: 'auto',
        	              width: 620,
        	              editCaption: "The Add Dialog",
        	              recreateForm: true,
        	              closeAfterEdit: true,
        	              errorTextFormat: function (data) {
        	                  return 'Error: ' + data.responseText;
        	              },
        	              closeAfterAdd: true,
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
		//ui-jqgrid-hdiv ui-state-default ui-corner-top头
		
        $('#gbox_kfgljqGrid').attr("style","height:"+height+"px;");
        var aa = height-$('#gview_kfgljqGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#kfglGridPager').height();
        aa = aa*0.995;
        $(".ui-jqgrid-bdiv").attr("style","height:"+aa+"px;");
       
});
</script>
<div class="jggridContainer">
<table id="kfgljqGrid"></table>
<div id="kfglGridPager"></div>
</div>




