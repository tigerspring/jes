<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>

<!-- 货品添加明细左边树  style="padding: 0px;border:1px solid #C5D5E0;"-->
<div id="hpfl"  style="padding: 0px;border:1px solid #C5D5E0;">
<div class="ui-jqgrid-pager ui-state-default" dir="ltr"  style="padding: 0px;border:1px solid #C5D5E0;">
<div class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all" title="添加新记录" id="search_name">
									<div class="ui-pg-div">
										<span>货品分类</span>
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
<div id="hpflTree" ></div>
</div>

<!-- 货品添加明细右边  style="padding: 0px;border:1px solid #C5D5E0;"-->
<div id="hwright"  style="padding: 0px;border:1px solid #C5D5E0;">
<div id="hw" style="height: 50%;">
<div id="hwtitleBar" class="ui-jqgrid-pager ui-state-default" dir="ltr" style="width: 100%;">
<div  class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td  align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all"  >
									<div class="ui-pg-div">
 										<span>货物</span>
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
<!-- 查询条件 -->
<div id="hwsearchBar" class="ui-jqgrid-pager ui-state-default" dir="ltr" style="width: 100%;">
<div  class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td  align="left"><table class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all"  >
									<div class="ui-pg-div">
 										<span>规格</span>&nbsp;<input type="text" placeholder="通过规格查询"/>
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all"  >
									<div class="ui-pg-div">
 										<span>品名</span>&nbsp;<input type="text" placeholder="通过品名查询"/>
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all"  >
									<div class="ui-pg-div">
 										<span>货号</span>&nbsp;<input type="text" placeholder="通过货号查询"/>
									</div>
								</td>
								<td class="ui-pg-button ui-corner-all"  >
									<div class="ui-pg-div">
 										<button id="searchBtn">查询</button>
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

<!-- 货物表格 -->
<div id='hwGrid'></div>


</div>
<!-- <div id="xz" style="height: 50%;"> -->

<div id="hwtabs" style="width: 100%;padding: 0px;margin-top: 5px;">
	<ul id="hwtabsBar" class="ui-th-column ui-th-ltr ui-state-default" style="padding:0px 0px;border:1px;">
	   <li> <a href="#hwtabs-1">已选择</a></li>
	   <li> <a href="#hwtabs-2">库存明细</a></li>
	</ul>
	
	
	<div id="hwtabs-1" style="padding: 0px;">
		<table id="checkedHw" ></table>
		<div id="checkedHwPager"></div>
		
	</div>
	
	
	<div id="hwtabs-2" style="padding: 0px;">
		<table id="checkedHw1" ></table>
		<div id="checkedHwPager1"></div>
	</div>
</div>


</div>
<!--  </div> -->



<script>
	
$(function () { 
	$('#hpflTree').jstree({ 'core' : {
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
	
	$( "#searchBtn" ).button({
		icons: {
			primary: "ui-icon-search"
		}
	});
	
	$('#hwGrid').load(ctx+'/wmspage/impvouchermanage/rkpzgl/hwGrid.jsp');
	 
	 //tab初始化
	 $('#hwtabs').tabs({
			collapsible: true
		});
	 
	 //设置tabs高度
// 	 $('#hwtabs').height();
	 
	 $('#checkedHw').jqGrid({
		 url: '',
			datatype: "json",
			 colModel: [
				{ label: '物资编码', name: 'CategoryName' ,editable: false},
				{ label: '物资名称', name: 'CategoryName' ,editable: false},
				{ label: '规格', name: 'CategoryName' ,editable: false},
				{ label: '存放数', name: 'CategoryName' ,editable: false},
				{ label: '单位', name: 'CategoryName' ,editable: false},
				{ label: '物资分类代码', name: 'CategoryName' ,editable: false},
				{ label: '数量', name: 'CategoryName' ,editable: true},
				{ label: '物资分类名称', name: 'CategoryName' ,editable: false},
				{ label: '单价', name: 'CategoryName' ,editable: false}
			],
			viewrecords: true, // show the current page, data rang and total records on the toolbar
			autowidth: true,
			altRows :true,
// 	 		onSelectRow: editRow,
			loadonce: true,
			altclass: 'someClass',
			rownumbers: true,
			rowNum: 20,
			pager: "#checkedHwPager"
	 });
	 
	 $('#checkedHw').navGrid('#checkedHwPager',
	           {edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
	 $('#checkedHw').navButtonAdd('#checkedHwPager',
	         {
         buttonicon: "ui-icon-disk",
         title: "保存",
         caption: "保存",
         position: "last",
         onClickButton: customButtonClicked
     });
	 $('#checkedHw').navButtonAdd('#checkedHwPager',
	         {
         buttonicon: "ui-icon-trash",
         title: "删除已选择",
         caption: "删除已选择",
         position: "last",
         onClickButton: customButtonClicked
     });
	//重新调整宽度
	 $('#gbox_checkedHw').css('border-left','0px').css('border-right','0px');
	 //设置已选择列表高度
	 var checkedHwHeight = $('#hwright').height()-$('#hw').height()- $('#checkedHwPager').height()-$('#hwtabsBar').height()-$('#gview_checkedHw').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height();
	 $('#checkedHw').setGridHeight(checkedHwHeight - 6);
	 
	 var lastSelection;

     function editRow(id) {
         if (id && id !== lastSelection) {
             var grid = $("#checkedHw");
             grid.jqGrid('restoreRow',lastSelection);
             grid.jqGrid('editRow',id, {keys: true} );
             lastSelection = id;
         }
     }	 
     
});
</script>
