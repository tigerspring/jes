<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="cjTop" style="height: 20%;width: 100%;">
<div id="cjq" style="float:left;width:49.5%;height:99%;border:1px solid #C5D5E0;">
<div class="ui-jqgrid-pager ui-state-default" dir="ltr" style="padding: 0px;border:1px solid #C5D5E0;">
<div class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all" title="添加新记录" id="search_name">
									<div class="ui-pg-div">
										<span>采集区</span>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
</div>
</div>
<form id="cjqForm" class="FormGrid" onsubmit="return false;" style="width: auto; height: auto;">
			<table class="EditTable ui-common-table">
				<tbody>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">采集库位：</label></td>
						<td class="DataTD" colspan="3">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">采集货号：</label></td>
						<td class="DataTD" colspan="3">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;background:#f6f5ec;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all" readonly="readonly" ></td>
					</tr>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="ProductName">采集数量：</label></td>
						<td class="DataTD">&nbsp;
							<input id="cjsl" name="value" disabled="disabled" style="background:#f6f5ec;"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
</div>
<div id="rw" style="float: right;width:50%;height:99%; red;">
<form id="rwForm" class="FormGrid" onsubmit="return false;" style="width: auto; height: auto;">
			<table class="EditTable ui-common-table">
				<tbody>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">任务号：</label></td>
						<td class="DataTD" colspan="3">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;border:none;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all" value="454654654654"></td>
					</tr>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">凭证号：</label></td>
						<td class="DataTD" colspan="3">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;border:none;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all" value="454654654654"></td>
					</tr>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">订单号：</label></td>
						<td class="DataTD" colspan="3">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;border:none;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all" value="454654654654"></td>
					</tr>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">供应商：</label></td>
						<td class="DataTD" colspan="3">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;border:none;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all" value="454654654654"></td>
					</tr>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">仓库名称：</label></td>
						<td class="DataTD" colspan="3">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;border:none;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all" value="454654654654"></td>
					</tr>
				</tbody>
			</table>
		</form>	
</div>
</div>
<div id="cjBottom" style="height: 70%;width: 100%;">
<table id="rkcjsjGrid"></table>
<div id="rkcjsjGridPager"></div>
</div>
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
							<a id="submit_cj" class="fm-button ui-state-default ui-corner-all fm-button-icon-left">提交<span class="ui-icon ui-icon-disk"></span></a>
							<a id="cel_cj" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeCjWin();">取消<span class="ui-icon ui-icon-close"></span></a>
						</td>
					</tr>
				</tbody>
		  </table>
<script type="text/javascript">
$(document).ready(function(){
	/* var manager;
	var aaaa= $( "#cjsl" ).spinner({
		spin: function( event, ui ) {
			if ( ui.value > 10 ) {
				$( this ).spinner( "value", -10 );
				return false;
			} else if ( ui.value < -10 ) {
				$( this ).spinner( "value", 10 );
				return false;
			}
		}
	}) */
	/* 入库采集数据Grid */
	$("#rkcjsjGrid").jqGrid({
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
		pager: "#rkcjsjGridPager"
	});
		// add navigation bar with some built in actions for the grid
        $('#rkcjsjGrid').navGrid('#rkcjsjGridPager',
           {edit: false,add: false, del: true,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	/* 添加按钮 样式*/
        $('#submit_cj').hover(function(){
    		$(this).addClass("ui-state-hover");},
    		function(){ 
    			$(this).removeClass("ui-state-hover");}
    		);
      	$('#cel_cj').hover(function(){
    		$(this).addClass("ui-state-hover");},
    		function(){ 
    			$(this).removeClass("ui-state-hover");}
    		);
});
function closeCjWin(){
	$('#cjWin').dialog('close');
}
</script>