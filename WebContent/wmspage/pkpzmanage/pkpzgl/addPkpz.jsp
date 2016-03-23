<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
$(document).ready(function () {
		/* 盘库内容Grid */
		$("#pknrGrid").jqGrid({
			url: ctx+'/wmspage/pkpzmanage/pkpzgl/pkpzgldata.json',
			datatype: "json",
			 colModel: [
				{ label: '库位编号/货号', name: 'CategoryName', editable: true },
				{ label: '库位/品名', name: 'ProductName', editable: true},
				{ label: '库位/货物描述', name: 'Country' ,editable: true},
				{ label: '备注', name: 'Country' ,editable: true}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			loadonce: true, // this is just for the demo
			pager: "#pknrGridPager"
		});
		$('#pknrGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 5, "titleText": "盘库内容", "startColumnName": "rn" }]
			      });
		$('#gbox_pknrGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
		// add navigation bar with some built in actions for the grid
	    $('#pknrGrid').navGrid('#pknrGridPager',{edit: false,add: true, del: true,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
		/* 添加盘库内容 */
		 $('#add_pknrGrid').unbind('click');
        $('#add_pknrGrid').on('click',function(){
        	/* 添加窗口 */
            $( "#addPknrWin" ).dialog({
        		autoOpen: false,
        		height: 750,
        		width: 950,
        		modal: true,
        		title:"新增",
        		resizable:false
        	});
        	$( "#addPknrWin" ).dialog('open');
        	$('.ui-widget-overlay').attr('style','z-index:949');
    		$( "#addPknrWin" ).parent().css({'z-index':'950'});
        	$('#addPknrWin').load(ctx+'/wmspage/pkpzmanage/pkpzgl/addpknr.jsp');
        });
        
		/* 盘库指令Grid */
	    $("#addpkzlGrid").jqGrid({
			url: ctx+'/wmspage/pkpzmanage/pkpzgl/pkpzgldata.json',
			datatype: "json",
			 colModel: [
				{ label: '库位编号', name: 'CategoryName', editable: true },
				{ label: '物资编码', name: 'ProductName', editable: true},
				{ label: '物资名称', name: 'Country' ,editable: true},
				{ label: '批号', name: 'Country' ,editable: true},
				{ label: '数量', name: 'Country' ,editable: true},
				{ label: '盘库数量', name: 'Country' ,editable: true},
				{ label: '亏盈', name: 'Country' ,editable: true}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			loadonce: true, // this is just for the demo
			pager: "#addpkzlGridPager"
		});
		 $('#addpkzlGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 8, "titleText": "盘库指令", "startColumnName": "rn" }]
			      });
		$('#gbox_addpkzlGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'}); 
		// add navigation bar with some built in actions for the grid
	    $('#addpkzlGrid').navGrid('#addpkzlGridPager',{edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	});
			$('#addPkpz').hover(function(){
			$(this).addClass("ui-state-hover");},
			function(){ 
				$(this).removeClass("ui-state-hover");}
			);
			$('#celPkpz').hover(function(){
			$(this).addClass("ui-state-hover");},
			function(){ 
				$(this).removeClass("ui-state-hover");}
			);
			function closeAddPkpz(){
				$('#addPkpzWin').dialog('close');
			}
</script>
<!-- 新增盘库明细上 -->
<div id="addPkpztop" style="width:100%;height:35%;">
<!-- 凭证明细 -->
<div id="addPkpztop_left" class="ui-jqdialog-content ui-widget-content" style="float:left;width:49%;height:100%;padding: 0px;border:1px solid #C5D5E0;">
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
										<span>凭证信息</span>
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
		<form id="pzmxForm" class="FormGrid" onsubmit="return false;" style="width: auto; height: auto;">
			<table class="EditTable ui-common-table">
				<tbody>
					<tr rowpos="1" class="FormData" id="tr_CategoryName">
						<td class="CaptionTD"><label for="CategoryName">凭证号：</label></td>
						<td class="DataTD" colspan="1">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="ProductName">创建人：</label></td>
						<td class="DataTD" colspan="1">&nbsp;<input type="text" id="ProductName" style="width: 90%;"
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					<tr rowpos="2" class="FormData" id="tr_ProductName">
						<td class="CaptionTD"><label for="CategoryName">创建日期<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="1">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="CategoryName">状态<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="1">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					<tr rowpos="3" class="FormData" id="tr_Country">
						<td class="CaptionTD"><label for="ProductName">仓库：</label></td>
						<td class="DataTD" colspan="3">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value="ALFKI" selected="selected">10101-工字钢</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
					</tr>
					<tr>
						<td class="CaptionTD"><label for="ProductName">盘库类型<span style="color: red;">*</span>：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value=""></option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
						<td class="CaptionTD"><label for="ProductName">盘库方式：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value=""></option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
					</tr>
					<tr>
					<td class="CaptionTD"><label for="CategoryName">备注<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="3">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty" style="width: 90%;"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
				</tbody>
			</table>
		</form>		
</div>
<!-- 盘库内容 -->
<div id="addPkpztop_right" style="float:right; width:50%; height:100%;padding: 0px;border:1px solid #C5D5E0;">
<table id="pknrGrid" ></table>
<div id="pknrGridPager"></div>
</div>
</div>
<!-- 新增盘库明细下 ——盘库指令-->
<div id="addPkpzbottom" style="width:100%;height:50%;padding: 0px;border:1px solid #C5D5E0;margin-top: 0.7%;">
<table id="addpkzlGrid"></table>
<div id="addpkzlGridPager"></div>
</div>
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
			<a id="addPkpz" class="fm-button ui-state-default ui-corner-all fm-button-icon-left">保存<span class="ui-icon ui-icon-disk"></span></a>
			<a id="celPkpz" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeAddPkpz();">取消<span class="ui-icon ui-icon-close"></span></a>
		</td>
	</tr>
</tbody>
</table>

<!-- 添加窗口 -->
<div id="addPknrWin"></div>
