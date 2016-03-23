<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 源库位 -->
<div id="ykw" style="float:left;width:30%;height:100%;">
<div id="ykwBar" class="ui-jqgrid-pager ui-state-default" dir="ltr" style="width: 100%;">
<div class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all">
									<div class="ui-pg-div">
 										<span>源库位</span>
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
<!-- 查询条件 -->
<div id="ykwsearch" class="ui-jqgrid-pager ui-state-default" dir="ltr" style="width: 100%;">
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
</div>
<table id="ykwGrid"></table>
<div id="ykwGridPager"></div>
</div>
<!-- 源库位库存明细&目标库位 -->
<div id="mxkw" style="float:right;width:70%;height:100%;">
<!-- 源库位明细 -->
<div id="mxAll" style="float:left;width:58%;height:95%;">
<!--源库位库存明细上  -->
<div id="mxTop">
<table id="mxTopGrid"></table>
<div id="mxTopGridPager"></div>
</div>
<!--源库位库存明细下  -->
<div id="mxBottom"></div>
<table id="mxBottomGrid"></table>
<div id="mxBottomGridPager"></div>
</div>
<!--目标库位  -->
<div id="mbkw" style="float:right;width:42%;height:100%;">
<div id="ykwBar" class="ui-jqgrid-pager ui-state-default" dir="ltr" style="width: 100%;">
<div class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all">
									<div class="ui-pg-div">
 										<span>目标库位</span>
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
<!-- 查询条件 -->
<div  class="ui-jqgrid-pager ui-state-default" dir="ltr" style="width: 100%;">
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
</div>
<table id="mbkwGrid"></table>
<div id="mbkwGridPager"></div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$('#ykwGrid').jqGrid({
			url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
			datatype: "json",
			 colModel: [
				{ label: '库位编码', name: 'CategoryName', editable: true },
				{ label: '是否锁定', name: 'ProductName', editable: true}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			loadonce: true, // this is just for the demo
			pager: "#ykwGridPager",
			pagerpos: 'left'
	});
	$('#ykwGridPager_center').remove();
	$('#ykwGrid').navGrid('#ykwGridPager',{edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	/* 源库位库存明细上Grid */
			$('#mxTopGrid').jqGrid({
				url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
				datatype: "json",
				 colModel: [
					{ label: '库位编码', name: 'CategoryName'},
					{ label: '物资编码', name: 'CategoryName'},
					{ label: '物资名称', name: 'CategoryName' },
					{ label: '库存数', name: 'CategoryName' },
					{ label: '单位', name: 'ProductName'}
				],
				viewrecords: true, // show the current page, data rang and total records on the toolbar
				autowidth: true,
				multiselect:true,  
				altRows :true,
				altclass: 'someClass',
				rownumbers: true,
				rowNum: 20,
				loadonce: true, // this is just for the demo
				pager: "#mxTopGridPager",
			
		});
		$('#mxTopGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 7, "titleText": "源库位库存明细", "startColumnName": "rn" }]
			      });
		$('#gbox_mxTopGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
		
		$('#mxTopGrid').navGrid('#mxTopGridPager',{edit: false,add: true, del: true,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
		
		/* 源库位库存明细下Grid */
		$('#mxBottomGrid').jqGrid({
			url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
			datatype: "json",
			 colModel: [
				{ label: '库位编码', name: 'CategoryName'},
				{ label: '物资编码', name: 'ProductName'},
				{ label: '物资名称', name: 'ProductName'},
				{ label: '库存数', name: 'ProductName'},
				{ label: '单位', name: 'ProductName'},
				{ label: '数量', name: 'ProductName', editable: true},
				{ label: '目标库位编码', name: 'ProductName'},
				{ label: '备注', name: 'ProductName', editable: true}			
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			onSelectRow: editRow,
			loadonce: true, // this is just for the demo
			pager: "#mxBottomGridPager",
			
		});
		$('#mxBottomGrid').setGroupHeaders(
			      {
			          useColSpanStyle: true,
			          groupHeaders: [{ "numberOfColumns": 9, "titleText": "待移库明细", "startColumnName": "rn" }]
			      });
		$('#gbox_mxBottomGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
		$('#mxBottomGrid').navGrid('#mxBottomGridPager',{edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
		/* 修改Grid表格含有editable:true的 */	
		var lastSelection;

	    function editRow(id) {
	        if (id && id !== lastSelection) {
	            var grid = $("#mxBottomGrid");
	            grid.jqGrid('restoreRow',lastSelection);
	            grid.jqGrid('editRow',id, {keys: true} );
	            lastSelection = id;
	        }
	    }
		/* 目标库位 */
		$('#mbkwGrid').jqGrid({
			url: ctx+'/wmspage/ykpzmanage/ykpzgl/ykpzgldata.json',
			datatype: "json",
			 colModel: [
				{ label: '库位编码', name: 'CategoryName', editable: true },
				{ label: '是否锁定', name: 'ProductName', editable: true}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			loadonce: true, // this is just for the demo
			pager: "#mbkwGridPager",
			pagerpos: 'left'
		});
		$('#mbkwGridPager_center').remove();
		$('#mbkwGrid').navGrid('#mbkwGridPager',{edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
		});
</script>