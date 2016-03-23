<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="dialog-form" class="ui-jqdialog" title="修改" >

<!-- 功能    	左边	 -->
<div id="qxglgn" style="padding: 0px;border:1px solid #C5D5E0;" >
<ul class="ui-th-column ui-th-ltr ui-state-default ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" >
<li><span style="font-size: 1.3em;">功能</span></li>
</ul>
<div id="qxglgntree"></div>
</div>


<!-- 权限   		右边 -->
<div id="qxglqx" style="padding: 0px;border:1px solid #C5D5E0;">

<div id="loadQxgrid">
</div>
</div>
<table style="height: auto;width: 100%;" class="EditTable ui-common-table">
	<tbody>
		<tr>
			<td colspan="2"><hr class="ui-widget-content"
					style="margin: 1px">
			</td>
		</tr>
		<tr align="right">
			<td class="EditButton"><a id="qxxgSubmit"
				class="fm-button ui-state-default ui-corner-all fm-button-icon-left">提交<span
					class="ui-icon ui-icon-disk"></span>
			</a><a id="qxxgCancle" href="javascript:void(0);"
				class="fm-button ui-state-default ui-corner-all fm-button-icon-left" onclick="closeWin();">取消<span
					class="ui-icon ui-icon-close"></span>
			</a>
			</td>
		</tr>
	</tbody>
</table>
</div>



<script>
	
$(function () { 
	
	
	$('#xgqxfp').on('click',function(){
		$( "#dialog-form" ).dialog({
			autoOpen: false,
			height: 600,
			width: 900,
			modal: true
		}).dialog('open');
		$('.ui-widget-overlay').attr('style','z-index:949');
		var parentStyle = $( "#dialog-form" ).parent().attr('style');
		parentStyle += 'z-index:950;';
		$( "#dialog-form" ).parent().attr('style',parentStyle);
		$("#loadQxgrid").load(ctx+"/wmspage/authoritymanage/qzqx/qxgrid.jsp");
	});
	
	//弹出窗口按钮样式切换
    $('#qxxgSubmit').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
  //弹出窗口按钮样式切换
    $('#qxxgCancle').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);

	$('#qxglgntree').jstree({ 'core' : {
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
						'plugins' : [ 'types','checkbox' ]
					});

});
function closeWin(){
	$('#dialog-form').dialog( 'close' );
}
</script>