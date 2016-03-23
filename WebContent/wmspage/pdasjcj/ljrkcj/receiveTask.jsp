<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table id="receiveTaskGrid"></table>
<div id="receiveTaskGridPager"></div>
<table style="height: auto;width:100%;" class="EditTable ui-common-table">
				<tbody>
					<tr>
						<td colspan="2"><hr class="ui-widget-content" style="margin: 1px"></td>
					</tr>
					<tr>
						<td class="navButton">
							<a class="fm-button ui-state-default ui-corner-all" style="display: none;">
							<span class="ui-icon ui-icon-triangle-1-w"></span>
							</a>
							<a class="fm-button ui-state-default ui-corner-all" style="display: none;">
							<span class="ui-icon ui-icon-triangle-1-e"></span>
							</a>
						</td>
						<td class="EditButton" align="right">
							<a id="receiveTaskBut" class="fm-button ui-state-default ui-corner-all fm-button-icon-left">接受<span class="ui-icon ui-icon-disk"></span></a>
							<a id="cel_receive" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeReceiveWin();">取消<span class="ui-icon ui-icon-close"></span></a>
						</td>
					</tr>
				</tbody>
		  </table>
<script type="text/javascript">
$(document).ready(function(){
	$('#receiveTaskGrid').jqGrid({
		url: ctx+'/wmspage/baseinfo/hpgl/data.json',
		datatype: "json",
		 colModel: [
			{ label: '任务号', name: 'CategoryName', editable: true },
			{ label: '任务状态', name: 'ProductName', editable: true},
			{ label: '采集类型', name: 'Country' ,editable: true},
			{ label: '任务来源', name: 'Name', width: 80,editable: true},
			{ label: '凭证号', name: 'Name', width: 80,editable: true},
			{ label: '创建日期', name: 'Name', width: 80,editable: true},
			{ label: '仓库代码', name: 'Name', width: 80,editable: true},
			{ label: '仓库名称', name: 'Name', width: 80,editable: true}
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		multiselect:true,
		loadonce: true, // this is just for the demo
		pager: "#receiveTaskGridPager"
	});
	$('#receiveTaskGrid').navGrid('#ljrkTopGridPager',
      {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	/* 自定义按钮样式 */
	$('#receiveTaskBut').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  	$('#cel_receive').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
})
function closeReceiveWin(){
	$('#receiveTaskWin').dialog('close');
}
</script>