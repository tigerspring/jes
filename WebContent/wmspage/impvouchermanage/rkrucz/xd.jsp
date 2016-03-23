<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.someClass { background-color: #F5FBFF; background-image: none; }
</style>
<!-- 采集人 -->
<div id="cjr" style="border:1px solid #C5D5E0;">
<table id="xdcheckedGrid"></table>
<div id="xdGridPager"></div>
</div>
<!-- 任务分配 -->
<div id="taskMxFp" style="border:1px solid #C5D5E0;">
<table style="width: 100%;height: 100%;">
<tr >
	<td style="width: 40%;height: 100%;">
		<table id="rwmx"></table>
		<div id="rwmxGridPager"></div>
	</td>
	<td style="width:5%;height: 100%;" align="center">
		 <button id="add">add</button>
		 <div style="height: 5%;"></div>
		 <button id="remove">remove</button>
	</td>
	<td style="width: 60%;height: 100%;">
		<table id="fpqk"></table>
		<div id="fpqkGridPager"></div>
	</td>
</tr>
</table>




</div>
<table style="height: auto;width: 100%;" class="EditTable ui-common-table">
	<tbody >
		<tr>
			<td colspan="2"><hr class="ui-widget-content"
					style="margin: 1px">
			</td>
		</tr>
		<tr align="right">
			<td class="EditButton"><a id="sData"
				class="fm-button ui-state-default ui-corner-all fm-button-icon-left">确认<span
					class="ui-icon ui-icon-disk"></span>
			</a><a id="cData" href="javascript:void(0);"
				class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeXdWin();">取消
				<span class="ui-icon ui-icon-close"></span>
			</a>
			</td>
		</tr>
	</tbody>
</table>

<script type="text/javascript">
$(document).ready(function () {
$('#xdcheckedGrid').jqGrid({
		 url: ctx+'/wmspage/impvouchermanage/rkrucz/xdTaskdata.json',
			datatype: "json",
			 colModel: [
				{ label: '用户工号', name: 'CategoryName' ,editable: false},
				{ label: '用户姓名', name: 'CategoryName' ,editable: false}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
// 	 		onSelectRow: editRow,
			loadonce: true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			multiselect: true,
			useColSpanStyle: true,
// 			caption: "采集人",
			pager: "#xdGridPager",
			pagerpos: 'left'
	 });
	 //删除分页显示中间部分
	$('#xdGridPager_center').remove();
	//显示报表头部信息
	$('#xdcheckedGrid').setGroupHeaders(
      {
          useColSpanStyle: true,
          groupHeaders: [{ "numberOfColumns": 4, "titleText": "采集人", "startColumnName": "rn" }]
      });
   $('#gbox_xdcheckedGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
   var cjrheight = $('#cjr').height()-$('#gview_xdcheckedGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#xdGridPager').height();
   $('#gview_xdcheckedGrid').children('.ui-jqgrid-bdiv').css({"height":(cjrheight-3)+"px"});
  //设置列表的高度
//   $('#gbox_xdcheckedGrid').children('#gview_xdcheckedGrid').children('.ui-jqgrid-bdiv')

	 
	 $('#xdcheckedGrid').navGrid('#xdGridPager',
	           {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	/* 任务分配选择 */
     $( "#remove" ).button({
 		text: false,
 		icons: {
 			primary: "ui-icon-seek-prev"
 		}
 	});
     
     $( "#add" ).button({
 		text: false,
 		icons: {
 			primary: "ui-icon-seek-next"
 		}
 	});
     
   //移到右边
     $('#add').click(function() {
     //获取选中的选项，删除并追加给对方
         $('#select1 option:selected').appendTo('#select2');
     });
     //移到左边
     $('#remove').click(function() {
         $('#select2 option:selected').appendTo('#select1');
     });
     //全部移到右边
// 	    $('#add_all').click(function() {
// 	        获取全部的选项,删除并追加给对方
// 	        $('#select1 option').appendTo('#select2');
// 	    });
     //全部移到左边
// 	    $('#remove_all').click(function() {
// 	        $('#select2 option').appendTo('#select1');
// 	    });
     //双击选项
     $('#select1').dblclick(function(){ //绑定双击事件
         //获取全部的选项,删除并追加给对方
         $("option:selected",this).appendTo('#select2'); //追加给对方
     });
     //双击选项
     $('#select2').dblclick(function(){
        $("option:selected",this).appendTo('#select1');
     });
     $('#rwmx').jqGrid({
		 url: ctx+'/wmspage/impvouchermanage/rkrucz/xdTaskdata.json',
			datatype: "json",
			 colModel: [
				{ label: '物资编码', name: 'CategoryName' ,editable: false},
				{ label: '物资名称', name: 'CategoryName' ,editable: false},
				{ label: '数量', name: 'CategoryName' ,editable: false}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
// 	 		onSelectRow: editRow,
			loadonce: true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			multiselect: true,
			useColSpanStyle: true,
			pager: "#rwmxGridPager",
			pagerpos: 'left'
	 });
   //显示报表头部信息
 	$('#rwmx').setGroupHeaders(
       {
           useColSpanStyle: true,
           groupHeaders: [{ "numberOfColumns": 5, "titleText": "任务明细", "startColumnName": "rn" }]
       });
 	$('#gbox_rwmx').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
   //删除分页显示中间部分
 	$('#rwmxGridPager_center').remove();
 	var taskMxFpeight = $('#taskMxFp').height()-$('#gview_rwmx').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#rwmxGridPager').height();
    $('#gview_rwmx').children('.ui-jqgrid-bdiv').css({"height":(taskMxFpeight-6)+"px"});
   
   
   
     $('#fpqk').jqGrid({
		 url: ctx+'/wmspage/impvouchermanage/rkrucz/xdTaskdata.json',
			datatype: "json",
			 colModel: [
				{ label: '用户姓名', name: 'CategoryName' ,editable: false},
				{ label: '物资编码', name: 'CategoryName' ,editable: false},
				{ label: '物资名称', name: 'CategoryName' ,editable: false},
				{ label: '数量', name: 'CategoryName' ,editable: false}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
// 	 		onSelectRow: editRow,
			loadonce: true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			multiselect: true,
			useColSpanStyle: true,
			pager: "#fpqkGridPager",
	 });
   //显示报表头部信息
  	$('#fpqk').setGroupHeaders(
        {
            useColSpanStyle: true,
            groupHeaders: [{ "numberOfColumns": 6, "titleText": "分配情况", "startColumnName": "rn" }]
        });
  	$('#gbox_fpqk').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
  	
 	var taskMxFpeight = $('#taskMxFp').height()-$('#gview_fpqk').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#fpqkGridPager').height();
    $('#gview_fpqk').children('.ui-jqgrid-bdiv').css({"height":(taskMxFpeight-6)+"px"});
    
  //弹出窗口按钮样式切换
    $('#sData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  //弹出窗口按钮样式切换
    $('#cData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
});

</script>
