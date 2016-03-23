<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<div class="ui-jqdialog-content ui-widget-content" id="bybsmxInfo_top" style="height: 17%;width:100%;">
<fieldset>
			<legend>库存明细</legend>
			<table class="EditTable ui-common-table">
				<tbody>
					<tr rowpos="2" class="FormData">
						<td class="CaptionTD"><label for="ProductName">报溢报损类型<span style="color: red;">*</span>：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" name="type" style="width: 90%;" size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value="ALFKI">ALFKI</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>
						<td class="CaptionTD"><label for="ProductName">库位<span style="color: red;">*</span>：</label></td>
						<td class="DataTD">&nbsp;
							<select role="select" name="type" style="width: 90%;" size="1" class="FormElement ui-widget-content ui-corner-all">
								<option role="option" value="ALFKI">ALFKI</option>
								<option role="option" value="ANATR">ANATR</option>
								<option role="option" value="ANTON">ANTON</option>
								<option role="option" value="AROUT">AROUT</option>
								<option role="option" value="WOLZA">WOLZA</option>
							</select>
						</td>	
						
					</tr>
					<tr rowpos="3" class="FormData">
						<td class="CaptionTD"><label for="ProductName">数量：</label></td>
						<td class="DataTD">&nbsp;<input id="sl" name="value" />
						</td>
						<td class="CaptionTD"><label for="ProductName">备注：</label></td>
						<td class="DataTD">&nbsp;<input type="text" name="ProductName" rowid="_empty" role="textbox" class="FormElement ui-widget-content ui-corner-all"></td>
					</tr>
					
				</tbody>
			</table>
			</fieldset>
</div>
<div id="bybsmxInfo_bottom" style="height:69%;width: 100%;">
<fieldset>
<legend>货物</legend>
<div id="hwfl_bybsLeft" style="float:left; width:30%; height:70%;">
<div class="ui-jqgrid-pager ui-state-default" dir="ltr" style="padding: 0px;border:1px solid #C5D5E0;">
<div class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all" title="添加新记录">
									<div class="ui-pg-div">
										<span>货物分类</span>
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
<div id="hwfl_bybsTree"></div>
</div>
<div id="hwmx_bybsRight" style="float:left;width:69%; height:70%;background: yellow;">
<table id="hwmx_bybsGrid"></table>
<div id="hwmx_bybsGridPager"></div>
</div>
</fieldset>
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
							<a id="saveBybsmx" class="fm-button ui-state-default ui-corner-all fm-button-icon-left">保存<span class="ui-icon ui-icon-disk"></span></a>
							<a id="celBybsmx" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeBybsmx_hwWin();">取消<span class="ui-icon ui-icon-close"></span></a>
						</td>
					</tr>
				</tbody>
		  </table>
<script type="text/javascript">
$(document).ready(function(){
	var aaaa= $( "#sl" ).spinner({
		spin: function( event, ui ) {
			if ( ui.value > 10 ) {
				$( this ).spinner( "value", -10 );
				return false;
			} else if ( ui.value < -10 ) {
				$( this ).spinner( "value", 10 );
				return false;
			}
		}
	});
	$( "#sl" ).attr('style','height: 26px;width: 85%;');
	/* 货物分类树 */
		$('#hwfl_bybsTree').jstree({ 'core' : {
		    'data' : [
			       {'text' : 'Simple root node' ,'type':'leaf'},
			       {
			         'text' : 'Root node 2',
			         'state' : {
			           'opened' : true,
			           'selected' : true
			         },
			         'children' : [
			           { 'text' : 'Child 1' ,'type':'leaf'},
			           { 'text' : 'Child 2' ,'type':'leaf'}
			         ]
			      }
			    ]
		} ,
		 'checkbox' : {
	      'keep_selected_style' : false
	    },
		'types' : {
	      'leaf' : {
	        'icon' : 'jstree-file'
	      }
	    },
	'plugins' : [ 'types' ]
	});
	/* 添加报溢报损明细 Grid*/
		$("#hwmx_bybsGrid").jqGrid({
			url: ctx+'/wmspage/baseinfo/hpgl/data.json',
			datatype: "json",
			 colModel: [
				{ label: '物资编码', name: 'CategoryName', editable: true },
				{ label: '物资名称', name: 'ProductName', editable: true},
				{ label: '规格', name: 'Country' ,editable: true},
				{ label: '单位', name: 'Name', width: 80,editable: true} ,
				{ label: '库存数', name: 'Name', width: 80,editable: true} ,
				{ label: '库位编码', name: 'Name', width: 80,editable: true} ,
				{ label: 'IP', name: 'Name', width: 80,editable: true} 
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			loadonce: true, // this is just for the demo
			pager: "#hwmx_bybsGridPager"
		});
		$('#hwmx_bybsGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 8, "titleText": "报溢报损凭证", "startColumnName": "rn" }]
			      });
		$('#gbox_hwmx_bybsGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
		$('#hwmx_bybsGrid').navGrid('#hwmx_bybsGridPager',
	      {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
		
		/* 添加按钮样式 */
		$('#saveBybsmx').hover(function(){
			$(this).addClass("ui-state-hover");},
			function(){ 
				$(this).removeClass("ui-state-hover");}
			);
	  	$('#celBybsmx').hover(function(){
			$(this).addClass("ui-state-hover");},
			function(){ 
				$(this).removeClass("ui-state-hover");}
			);
});
function closeBybsmx_hwWin(){
	$('#addBybsmxWin_hw').dialog('close');
}
</script>