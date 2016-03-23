<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>

<!-- 货品添加明细左边树  style="padding: 0px;border:1px solid #C5D5E0;"-->
<div id="ckhwfl"  style="float:left; width:30%; height:90%;padding: 0px;border:1px solid #C5D5E0;">
<div class="ui-jqgrid-pager ui-state-default" dir="ltr"  style="padding: 0px;border:1px solid #C5D5E0;">
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
<div id="ckhwflTree" ></div>
</div>

<!-- 货品添加明细右边  style="padding: 0px;border:1px solid #C5D5E0;"-->
<div id="ckhwright"  style="float:right; width:69%; height:90%;padding: 0px;border:1px solid #C5D5E0;">
<!-- 查询条件 -->
<div id="ckhwsearchBar" class="ui-jqgrid-pager ui-state-default" dir="ltr" style="width: 100%;">
<div  class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td  align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all"  >
									<div class="ui-pg-div">
 										<span>货号</span>&nbsp;<input type="text" placeholder="货号"/>
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all"  >
									<div class="ui-pg-div">
 										<span>品名</span>&nbsp;<input type="text" placeholder="品名"/>
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all"  >
									<div class="ui-pg-div">
 										<button id="searchckhwBtn">查询</button>
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

<!-- 客户明细表 -->
<div id='ckhwmx'>
<table id="ckhwjqGrid"></table>
<div id="ckhwjqGridPager"></div>
</div>
</div>


<table style="width: 100%;height: auto;" class="EditTable ui-common-table">
<tbody>
	<tr>
		<td colspan="2"><hr class="ui-widget-content" style="margin: 1px"></td>
	</tr>
	<tr align="right">
		<td class="navButton">
			<a class="fm-button ui-state-default ui-corner-all" style="display: none;">
			<span class="ui-icon ui-icon-triangle-1-w"></span>
			</a>
			<a class="fm-button ui-state-default ui-corner-all" style="display: none;">
			<span class="ui-icon ui-icon-triangle-1-e"></span>
			</a>
		</td>
		<td class="EditButton">
			<a id="addCkMxData" class="fm-button ui-state-default ui-corner-all fm-button-icon-left">确认<span class="ui-icon ui-icon-disk"></span></a>
			<a id="celCkMxData" class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeAddCkpzMxWin();">取消<span class="ui-icon ui-icon-close"></span></a>
		</td>
	</tr>
</tbody>
</table>

<script>
	
$(function () { 
	$('#ckhwflTree').jstree({ 'core' : {
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
	
	$( "#searchckhwBtn" ).button({
		icons: {
			primary: "ui-icon-search"
		}
	});
	
	$("#ckhwjqGrid").jqGrid({
		url: ctx+'/wmspage/baseinfo/hpgl/data.json',
		datatype: "json",
		 colModel: [
			{ label: '物品分类代码', name: 'CategoryName', editable: true },
			{ label: '物品分类名称', name: 'ProductName', editable: true},
			{ label: '物品分类描述', name: 'Country' ,editable: true},
			{ label: '打印自豪', name: 'Price', sorttype: 'integer',editable: true},
			// sorttype is used only if the data is loaded locally or loadonce is set to true
			{ label: '几张分类', name: 'Quantity', width: 80, sorttype: 'number',editable: true,edittype: "select",
				editoptions: {
	                value: "USA:USA;UK:UK;Canada:Canada"
	            }
			},
			{ label: '交易类型', name: 'Name', width: 80,editable: true,edittype: "select"} ,
			{ label: '修改时间', name: 'Name', width: 80,editable: true} ,
			{ label: '用户工号', name: 'Name', width: 80,editable: true} ,
			{ label: '用户姓名', name: 'Name', width: 80,editable: true} ,
			{ label: 'IP', name: 'Name', width: 80,editable: true} 
		],
		viewrecords: true, // show the current page, data rang and total records on the toolbar
		autowidth: true,
		altRows :true,
		altclass: 'someClass',
		rownumbers: true,
		rowNum: 20,
		multiselect:true,
		loadonce: true, // this is just for the demo
		pager: "#ckhwjqGridPager"
	});
	
	$('#ckhwjqGrid').navGrid('#ckhwjqGridPager',
      {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});

	$('#addCkMxData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  	$('#celCkMxData').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
	
});
function closeAddCkpzMxWin(){
	$('#addCkpzMxWin').dialog('close');
}
</script>
