<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
$(document).ready(function(){
		$('#pkxdcjrGrid').jqGrid({
			 url: ctx+'/wmspage/pkpzmanage/pkrwcz/pkczxd.json',
				datatype: "json",
				 colModel: [
					{ label: '用户工号', name: 'CategoryName' ,editable: false},
					{ label: '用户姓名', name: 'CategoryName' ,editable: false}
				],
				viewrecords: true, // show the current page, data rang and total records on the toolbar
				autowidth: true,
				altRows :true,
	//	 		onSelectRow: editRow,
				loadonce: true,
				altclass: 'someClass',
				rownumbers: true,
				rowNum: 20,
				multiselect: true,
				useColSpanStyle: true,
	//			caption: "采集人",
				pager: "#pkxdcjrGridPager",
				pagerpos: 'left'
		});
		//删除分页显示中间部分
		$('#pkxdcjrGridPager_center').remove();
		//显示报表头部信息
		$('#pkxdcjrGrid').setGroupHeaders(
	      {
	          useColSpanStyle: true,
	          groupHeaders: [{ "numberOfColumns": 4, "titleText": "采集人", "startColumnName": "rn" }]
	      });
	   $('#gbox_pkxdcjrGrid').find('.ui-state-default.ui-th-column-header.ui-th-ltr').css({'text-align':'left'});
	   var cjrheight = $('#cjr').height()-$('#gview_pkxdcjrGrid').children('.ui-jqgrid-hdiv.ui-state-default.ui-corner-top').height()-$('#pkxdcjrGridPager').height();
	   $('#gview_pkxdcjrGrid').children('.ui-jqgrid-bdiv').css({"height":(cjrheight-3)+"px"}); 
	   $('#pkxdcjrGrid').navGrid('#pkxdcjrGridPager',{edit: false,add: false, del: false,search: false,refresh: false,view: false, position: "left",cloneToTop: false});
});
</script>
<!-- 盘库操作下达指派-采集人 -->
<div id="pkxd_cjr" style="border:1px solid #C5D5E0;">
<table id="pkxdcjrGrid"></table>
<div id="pkxdcjrGridPager"></div>
</div>