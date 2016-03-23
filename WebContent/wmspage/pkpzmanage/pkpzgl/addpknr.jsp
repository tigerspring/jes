<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<script type="text/javascript">
	$(document).ready(function () {
	$("#addpknrGrid").jqGrid({
		url: ctx+'/wmspage/pkpzmanage/pkpzgl/pkpzgldata.json',
		datatype: "json",
		 colModel: [
			{ label: '库位编号/货号', name: 'CategoryName', editable: true },
			{ label: '库位/品名', name: 'ProductName', editable: true},
			{ label: '库位/货物描述', name: 'Country' ,editable: true}			
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		multiselect: true,  
		loadonce: true, // this is just for the demo
		pager: "#addpknrGridPager"
	  });
	$('#addpknrGrid').navGrid('#addpknrGridPager',{edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	});
	$('#addPknr').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  	$('#celPknr').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  	function closeAddPknrWin(){
  		$('#addPknrWin').dialog('close');
  	}
</script>
<div id="hwsearchBar" class="ui-jqgrid-pager ui-state-default" dir="ltr" style="width: 100%;">
<div class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all">
									<div class="ui-pg-div">
 										<span>库位编码/货号</span>&nbsp;<input type="text" placeholder="通过规格查询">
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all">
									<div class="ui-pg-div">
 										<span>库位名称/品名</span>&nbsp;<input type="text" placeholder="通过品名查询">
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all">
									<div class="ui-pg-div">
 										<button id="searchBtn" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary" role="button" aria-disabled="false"><span class="ui-button-icon-primary ui-icon ui-icon-search"></span><span class="ui-button-text">查询</span></button>
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
<table id="addpknrGrid"></table>
<div id="addpknrGridPager"></div>
<table style="height: auto;width:100%;" class="EditTable ui-common-table" id="TblGrid_qxgljqGrid_2">
				<tbody>
					<tr>
						<td colspan="2"><hr class="ui-widget-content" style="margin: 1px"></td>
					</tr>
					<tr id="Act_Buttons" align="right">
						<td class="navButton">
							<a id="pData" class="fm-button ui-state-default ui-corner-all" style="display: none;">
							<span class="ui-icon ui-icon-triangle-1-w"></span>
							</a>
							<a id="nData" class="fm-button ui-state-default ui-corner-all" style="display: none;">
							<span class="ui-icon ui-icon-triangle-1-e"></span>
							</a>
						</td>
						<td class="EditButton">
							<a id="addPknr" class="fm-button ui-state-default ui-corner-all fm-button-icon-left">保存<span class="ui-icon ui-icon-disk"></span></a>
							<a id="celPknr" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeAddPknrWin();">取消<span class="ui-icon ui-icon-close"></span></a>
						</td>
					</tr>
				</tbody>
		  </table>