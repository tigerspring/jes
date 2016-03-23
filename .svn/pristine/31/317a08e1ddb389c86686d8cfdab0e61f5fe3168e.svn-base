<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<script src="<%=basePath %>/script/jquery/js/jquery-1.10.2.js"></script>
<script src="<%=basePath %>/script/jquery-barcode-2.0.3/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="<%=basePath %>/script/jquery-barcode-2.0.3/jquery-barcode.js" type="text/javascript"></script>
<style type="text/css" media="print">
.noprint{display : none }
</style>
<div style="width: 100%;" align="center" id="wb">
<table style="font-size:14px;height: 200px;" cellspacing="2px;" cellpadding="2px;" width="330">
<tbody>
	<tr height="20px;">
		<td><button type="button" onclick="javascript:printpreview()">打印预览</button></td>
		<td><button type="button" onclick="printsetup()">打印设置</button></td>
		<td><button type="button" onclick="print();">直接打印</button></td>
		<td><button type="button" >新窗口打开</button></td>
	</tr>
	<tr>
	   <th>编码:</th>
	</tr>
	<tr>
	   <th>名称:</th>
	</tr>
	<tr>
	   <th>规格:</th>
	</tr>
</tbody>
</table>
<div id="wlbqTXBar"></div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$('#wlbqTXBar').barcode("1234567890000000", "code11");
});
</script>