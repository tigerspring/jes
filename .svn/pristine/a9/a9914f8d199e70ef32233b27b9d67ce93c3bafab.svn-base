<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<style type="text/css">
    body {background-color:#dfe8f6}        
</style>
<script> 
$(function(){
	$('#qxgltabs').tabs({
		collapsible: true
	});
	$('#qxgltabs').attr("style","height: "+height+"px;padding: 0px;");
	$("#qxgltabs-1").load(ctx+"/wmspage/authoritymanage/qzqx/qxgltree.jsp");
	$('#qxgltabs-1').attr("style","height: "+height+"px;padding: 0px;");
	
	$("#yonghu").on('click',function(){
		$("#qxgltabs-2").load(ctx+"/wmspage/authoritymanage/qzqx/qxglyhgrid.jsp");
	});
}); 
</script> 
<div id="qxgltabs"  style="width: 100%;height: 100%;border-top: 0px;border-bottom: 0px;">
	<ul id="qxgltabsBar" class="ui-th-column ui-th-ltr ui-state-default" style="padding:0px 2px;border:1px;">
	   <li> <a href="#qxgltabs-1" id="quanxian">权限</a></li>
	   <li> <a href="#qxgltabs-2" id="yonghu">用户</a></li>
	</ul>
	
	
	<div id="qxgltabs-1" style="width: 100%;height: 100%;padding: 0px;">
		<!-- 权限信息 -->
	</div>
	
	
	<div id="qxgltabs-2" style="width: 100%;height: 100%;padding: 0px;">
		<!-- 用户信息 -->
	</div>
</div>
