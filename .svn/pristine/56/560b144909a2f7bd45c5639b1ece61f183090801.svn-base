<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" %>
<script type="text/javascript">
$(document).ready(function(){
	$('#updateykpzGrid').jqGrid({
		url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
		datatype: "json",
		 colModel: [
			{ label: '物资编码', name: 'CategoryName' },
			{ label: '物资名称', name: 'CategoryName' },
			{ label: '规格', name: 'CategoryName' },
			{ label: '数量', name: 'CategoryName' ,editable : true},
			{ label: '完成数', name: 'CategoryName' },
			{ label: '单位', name: 'CategoryName' },
			{ label: '单价', name: 'CategoryName' ,editable : true},
			{ label: '总价', name: 'CategoryName' ,editable : true},
			{ label: '状态', name: 'ProductName' },
			{ label: '备注', name: 'CategoryName' ,editable : true},
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: false,
		width:$('#updateykpzInfo').width()*0.965,
		height:$('#updateykpzInfo').height()*0.5,
		shrinkToFit: true, 
		altRows :true,
		altclass: 'someClass',
		onSelectRow: editRow,
		rownumbers: true,
		rowNum: 20,
		pager: "#updateykpzGridPager"
	})
	$('#updateykpzGrid').navGrid('#updateykpzGridPager',
	          {edit: false,add: true, del: true,search: false,refresh: false,view: false, position: "left",cloneToTop: false},
	          // options for the Edit Dialog
	             {
	                 width: 620,
	                 editCaption: "The Edit Dialog",
	                 recreateForm: true,
	                 closeAfterEdit: true,
	                 errorTextFormat: function (data) {
	                     return 'Error: ' + data.responseText
	                 }
	            });
	     	var lastSelection;

	       function editRow(id) {
	           if (id && id !== lastSelection) {
	               var grid = $("#updateykpzGrid");
	               grid.jqGrid('restoreRow',lastSelection);
	               grid.jqGrid('editRow',id, {keys: true} );
	               lastSelection = id;
	           }
	       }	 
	     /* 增加保存和取消按钮样式 */
	    $('#update_addYkData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  		$('#update_celYkData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
	     	//注销jgrid自带方法
	     	$('#add_ykmxjqGrid').unbind('click');
	     	
});
function closeUpdateYkpzWin(){
	$('#updateYkWin').dialog('close');
}
</script>
<div class="ui-jqdialog-content ui-widget-content" id="updateykpzInfo" style="height: 98%;">
<form class="FormGrid" onsubmit="return false;" style="width: auto; height: auto;">
			<fieldset>
			<legend>移库凭证信息</legend>
			<table id="update_ykpzInfo" class="EditTable ui-common-table" >
				<tbody>
					<tr rowpos="1" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">移库单号：</label></td>
						<td class="DataTD">&nbsp;<input type="text"
							name="CategoryName" rowid="_empty"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="ProductName">创建日期<span style="color: red;">*</span>：</label></td>
						<td class="DataTD">&nbsp;
							<input type="text" id="createYkpzDate" name="createYkpzDate" role="textbox" class="FormElement ui-widget-content ui-corner-all">
						</td>
						<td class="CaptionTD"><label for="ProductName">创建人：</label></td>
						<td class="DataTD">&nbsp;<input type="text"
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="ProductName">状态：</label></td>
						<td class="DataTD">&nbsp;<input type="text"  value="新建"
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>	
					</tr>
					<tr rowpos="2" class="FormData">
						<td class="CaptionTD"><label for="ProductName">仓库<span style="color: red;">*</span>：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" name="type" style="width: 90%; background:#f6f5ec;" 
								size="1" class="FormElement ui-widget-content ui-corner-all" disabled="disabled"> 
								<option role="option" value="ALFKI">ALFKI</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
							
						<td class="CaptionTD" ><label for="ProductName">办理人<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="3">&nbsp;
							<select role="select" name="storage" style="width: 90%;"
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value="ALFKI">ALFKI</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
							
						<td class="CaptionTD"><label for="ProductName">凭证号：</label></td>
						<td class="DataTD">&nbsp;<input type="text" 
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="Country">备注：</label></td>
						<td class="DataTD" colspan="7">&nbsp;<input type="text" style="width: 98%;"
							name="Country" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					
				</tbody>
			</table>
			</fieldset>
			<fieldset>
			<legend>移库明细</legend>
			<table id="updateykpzGrid"></table>
			<div id="updateykpzGridPager"></div>
			</fieldset>
			
			<table style="height: auto" class="EditTable ui-common-table">
				<tbody>
					<tr>
						<td colspan="2"><hr class="ui-widget-content"
								style="margin: 1px"></td>
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
						<td class="EditButton">
							<a id="update_addYkData" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" >保存<span class="ui-icon ui-icon-disk"></span></a>
							<a id="update_celYkData" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeUpdateYkpzWin();">取消<span class="ui-icon ui-icon-close"></span></a>
						</td>
					</tr>
				</tbody>
		  </table>
		</form>
</div>