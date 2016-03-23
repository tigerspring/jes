<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<div class="ui-jqdialog-content ui-widget-content" id="bybsmxInfo" style="height: 98%;">
		<form class="FormGrid" onsubmit="return false;" style="width: auto; height: auto;">
			<fieldset>
			<legend>报溢报损凭证</legend>
			<table class="EditTable ui-common-table" >
				<tbody>
					<tr rowpos="1" class="FormData">
						<td class="CaptionTD"><label for="CategoryName">报溢报损凭证号：</label></td>
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
							<select role="select" name="type" style="width: 90%;" 
								size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value="ALFKI">ALFKI</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
							
						<td class="CaptionTD"><label for="ProductName">盘库凭证号：</label></td>
						<td class="DataTD">&nbsp;<input type="text" 
							name="ProductName" rowid="_empty" role="textbox"
							class="FormElement ui-widget-content ui-corner-all"></td>
							<td class="CaptionTD"><label for="ProductName">状态：</label></td>
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
			<legend>报溢报损明细</legend>
			<table id="bybsmxGrid" ></table>
			<div id="bybsmxGridPager"></div>
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
							<a id="addBybsmxData" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" >保存<span class="ui-icon ui-icon-disk"></span></a>
							<a id="celBybsmxData" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closedBybsmxWin();">取消<span class="ui-icon ui-icon-close"></span></a>
						</td>
					</tr>
				</tbody>
		  </table>
		</form>
</div>
<div id="addBybsmxWin_hw"></div>
<script type="text/javascript">
$(function(){
	//日期控件初始化
	$( "#createYkpzDate" ).datepicker({
		showOn: "focus",
		dateFormat:"yy-mm-dd"
	});
  $('#bybsmxGrid').jqGrid({
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
		width:$('#bybsmxInfo').width()*0.999,
		height:$('#bybsmxInfo').height()*0.5,
		shrinkToFit: true, 
		altRows :true,
		altclass: 'someClass',
		onSelectRow: editRow,
		rownumbers: true,
		rowNum: 20,
		pager: "#bybsmxGridPager"
	});
  	$('#bybsmxGrid').navGrid('#bybsmxGridPager',
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
            var grid = $("#bybsmxGrid");
            grid.jqGrid('restoreRow',lastSelection);
            grid.jqGrid('editRow',id, {keys: true} );
            lastSelection = id;
        }
    }	 
  	
  	//注销jgrid自带方法
  	$('#add_bybsmxGrid').unbind('click');
  	
  	$( "#addBybsmxWin_hw" ).dialog({
		autoOpen: false,
		height: 700,
		width: 950,
		title:"添加",
		modal: true,
		resizable:false
	});
  	//弹出新增移库明细窗口
  	$('#add_bybsmxGrid').on('click',function(){
  		$( "#addBybsmxWin_hw" ).dialog('open');
  		$( "#addBybsmxWin_hw" ).parent().prev('.ui-widget-overlay').css({'z-index':'950'});
		$( "#addBybsmxWin_hw" ).parent().css({'z-index':'951'});
    	$('#addBybsmxWin_hw').load(ctx+'/wmspage/yspzmanage/yspzgl/addysmx.jsp');
  	});
  	  	
  	$('#addBybsmxData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  	$('#celBybsmxData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
});
function closedBybsmxWin(){
	$('#addBybsmxdWin').dialog('close');
}
</script>






