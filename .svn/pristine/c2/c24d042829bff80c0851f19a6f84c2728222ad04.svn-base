<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" deferredSyntaxAllowedAsLiteral="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<title>JES WMS Suite</title>
 	<link rel="stylesheet" href="<%=basePath %>/css/main.css">
 	<link rel="stylesheet" href="<%=basePath %>/script/jquery/css/demos.css">
	<link rel="stylesheet" type="text/css" media="screen" href="<%=basePath %>/script/jquery/core/themes/redmond/jquery.ui.all.css" />
	<link rel="stylesheet" type="text/css" media="screen" href="<%=basePath %>/script/Guriddo_jqGrid_JS_5.0.0/css/ui.jqgrid.css" />
	<link rel="stylesheet" href="<%=basePath %>/script/jsTree/themes/default/style.css" />
	<script src="<%=basePath %>/script/jquery/js/jquery-1.10.2.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.core.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.widget.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.mouse.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.draggable.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.position.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.resizable.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.button.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.dialog.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.tabs.js"></script>
	<script src="<%=basePath %>/script/jquery/core/ui/jquery.ui.accordion.js"></script>
	<script src="<%=basePath %>/script/Guriddo_jqGrid_JS_5.0.0/js/i18n/grid.locale-cn.js" type="text/javascript"></script>
	<script src="<%=basePath %>/script/Guriddo_jqGrid_JS_5.0.0/js/jquery.jqGrid.min.js" type="text/javascript"></script>
	
	<script src="<%=basePath %>/script/jsTree/jstree.js"></script>
	<script src="<%=basePath %>/script/jsTree/jstree.types.js"></script>
	<script src="<%=basePath %>/script/jsTree/jstree.checkbox.js"></script>
	
	<script type="text/javascript">
	var ctx = "<%=basePath %>";
		$(function(){
			var style = "width: "+(window.screen.width-40)+"px;height:"+(window.screen.height-140)+"px;margin:0 auto;";
			$('#wrap').attr("style",style);
		});
	</script>
</head>
<body>
  <div id="wrap">  
        <div id="header" ><%@include file="top.jsp" %></div>  
        <div id="container" >  
            <div id="left_side"><%@include file="nav.jsp" %></div>  
            <div id="content"><%@include file="tabs.jsp" %></div>  
        </div>  
    </div> 
</body>
</html>