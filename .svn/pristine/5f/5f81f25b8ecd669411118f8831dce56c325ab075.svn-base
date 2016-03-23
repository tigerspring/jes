<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 仓库 -->
<div id="kwbqLeft" style="float: left;width:30%;height: 100%">
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
										<span>仓库</span>
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
<div id="kwbqTree"></div>
</div>
<!-- 库位 -->
<div id="kwbqRight" style="float: right;width:69.9%;height: 100%">
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
 										<span>筛选</span>&nbsp;<input type="text" placeholder="通过规格查询">
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all">
									<div class="ui-pg-div">
 										<label><input name="selectCont" type="radio" value="" />不区分 &nbsp;</label> 
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all">
									<div class="ui-pg-div">
 										<label><input name="selectCont" type="radio" value="" />1结尾&nbsp;</label>
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all">
									<div class="ui-pg-div">
 										<label><input name="selectCont" type="radio" value="" />2结尾&nbsp;</label> 
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
<table id="kwGrid"></table>
<div id="kwGridPager"></div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	/* 仓库树 */
	$('#kwbqTree').jstree({ 'core' : {
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
	/* 库位Grid */
	$('#kwGrid').jqGrid({
		url: ctx+'/wmspage/baseinfo/hpgl/data.json',
		datatype: "json",
		 colModel: [
			{ label: '库位编码', name: 'CategoryName', editable: true },
			{ label: '库位', name: 'ProductName', editable: true},
			{ label: '库位描述', name: 'Country' ,editable: true},
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
		pager: "#kwGridPager"
	});
	$('#kwGrid').setGroupHeaders(
		      {
		          useColSpanStyle: true,
		          groupHeaders: [{ "numberOfColumns": 6, "titleText": "报溢报损凭证", "startColumnName": "rn" }]
		      });
	$('#gbox_kwGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
	$('#kwGrid').navGrid('#kwGridPager',
      {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	
	$('#kwGrid').navButtonAdd('#kwGridPager',
	         {
	        	 id: "pzprintBtn",
	             buttonicon: "ui-icon-print",
	             title: "打印",
	             caption: "打印",
	             position: "last",
	             onClickButton: kwbqPrint
	         });
});
function kwbqPrint()

{  
	var oWin=window.open(ctx+"/wmspage/tmbq/kwbq/printKwbqEWM.jsp","_blank");
    oWin.focus();  
    oWin.document.close();  
}  
</script>