<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<div class="ui-jqdialog-content ui-widget-content" id="rkpxDiv" style="height: 98%;">
		<form class="FormGrid" onsubmit="return false;" style="width: auto; height: auto;">
			<fieldset>
			<legend>入库凭证信息</legend>
			<table id="rkpzInfo" class="EditTable ui-common-table" >
				<tbody>
					<tr rowpos="1" class="FormData" id="tr_CategoryName">
						<td class="CaptionTD"><label for="CategoryName">凭证号：</label></td>
						<td class="DataTD">&nbsp;<input type="text"
							id="CategoryName" name="CategoryName" rowid="_empty"
							role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="ProductName">凭证创建日期<span style="color: red;">*</span>：</label></td>
						<td class="DataTD">&nbsp;
							<input type="text" id="createDate" name="createDate" role="textbox" class="FormElement ui-widget-content ui-corner-all">
						</td>
						<td class="CaptionTD"><label for="ProductName">创建人：</label></td>
						<td class="DataTD">&nbsp;<input type="text" id="ProductName"
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="ProductName">状态：</label></td>
						<td class="DataTD">&nbsp;<input type="text" id="ProductName" value="新建"
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>	
					</tr>
					<tr rowpos="2" class="FormData" id="tr_ProductName">
						<td class="CaptionTD"><label for="ProductName">类型：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" id="type" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value="ALFKI">ALFKI</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
							
						<td class="CaptionTD" ><label for="ProductName">库房<span style="color: red;">*</span>：</label></td>
						<td class="DataTD" colspan="3">&nbsp;
							<select role="select" id="storage" name="storage" style="width: 90%;"
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value="ALFKI">ALFKI</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
							
						<td class="CaptionTD"><label for="ProductName">订单号：</label></td>
						<td class="DataTD">&nbsp;<input type="text" id="ProductName"
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					<tr rowpos="3" class="FormData" id="tr_Country">
						<td class="CaptionTD"><label for="Country">供应商：</label></td>
						<td class="DataTD">&nbsp;<input type="text" id="Country"
							name="Country" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
						<td class="CaptionTD"><label for="Country">凭证备注：</label></td>
						<td class="DataTD">&nbsp;<input type="text" id="Country"
							name="Country" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					
				</tbody>
			</table>
			</fieldset>
			<fieldset>
			<legend>凭证明细</legend>
			<table id="pzmxjqGrid"></table>
			<div id="pzmxGridPager"></div>
			</fieldset>
			
			<table style="height: auto" class="EditTable ui-common-table" id="TblGrid_qxgljqGrid_2">
				<tbody>
					<tr>
						<td colspan="2"><hr class="ui-widget-content"
								style="margin: 1px"></td>
					</tr>
					<tr id="Act_Buttons">
						<td class="navButton">
							<a id="pData" class="fm-button ui-state-default ui-corner-all" style="display: none;">
							<span class="ui-icon ui-icon-triangle-1-w"></span>
							</a>
							<a id="nData" class="fm-button ui-state-default ui-corner-all" style="display: none;">
							<span class="ui-icon ui-icon-triangle-1-e"></span>
							</a>
						</td>
						<td class="EditButton">
							<a id="addData" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" >保存<span class="ui-icon ui-icon-disk"></span></a>
							<a id="celData" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeWin();">取消<span class="ui-icon ui-icon-close"></span></a>
						</td>
					</tr>
				</tbody>
		  </table>
		</form>
		
</div>

<div id="addpzDetailWin"></div>

<script type="text/javascript">
$(function(){
	$( "#createDate" ).datepicker({
		showOn: "focus",
		dateFormat:"yy-mm-dd"
	});
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
  $('#pzmxjqGrid').jqGrid({
		url: '',
		datatype: "json",
		 colModel: [
			{ label: '物资编码', name: 'CategoryName' },
			{ label: '物资名称', name: 'CategoryName' },
			{ label: '规格', name: 'CategoryName' },
			{ label: '数量', name: 'CategoryName' },
			{ label: '完成数', name: 'CategoryName' },
			{ label: '单位', name: 'CategoryName' },
			{ label: '单价', name: 'CategoryName' },
			{ label: '总价', name: 'CategoryName' },
			{ label: '状态', name: 'ProductName' },
			{ label: '备注', name: 'CategoryName' },
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: false,
		width:$('#rkpzInfo').width()*0.999,
		height:$('#rkpxDiv').height()*0.5,
		shrinkToFit: true, 
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		pager: "#pzmxGridPager"
	});
  	$('#pzmxjqGrid').navGrid('#pzmxGridPager',
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
  	//注销jgrid自带方法
  	$('#add_pzmxjqGrid').unbind('click');
  	
  	$( "#addpzDetailWin" ).dialog({
		autoOpen: false,
		height: 700,
		width: 1000,
		title:"添加",
		modal: true,
		resizable:false
	});
  	//弹出添加物资明细窗口
  	$('#add_pzmxjqGrid').on('click',function(){
  		$( "#addpzDetailWin" ).dialog('open');
  		$( "#addpzDetailWin" ).parent().prev('.ui-widget-overlay').attr('style','z-index:1100');
		var parentStyle = $( "#addpzDetailWin" ).parent().attr('style');
		parentStyle += 'z-index:1101;';
		$( "#addpzDetailWin" ).parent().attr('style',parentStyle);
    	$('#addpzDetailWin').load(ctx+'/wmspage/impvouchermanage/rkpzgl/addpzDetail.jsp');
  	});
  	
  	$('#addData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  	$('#celData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
});
function delWin(){
	$('#addpzDetailWin').dialog('close');
}
</script>






