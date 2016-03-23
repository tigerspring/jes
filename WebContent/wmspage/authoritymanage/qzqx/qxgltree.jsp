<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<div id="qxgjlstree"></div>

<script>
	
$(function () { 
	$('#qxgjlstree').jstree({ 'core' : {
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
	
	$('#add_11Grid').hover(function(){
		$(this).addClass("ui-state-hover");},
		function(){ 
			$(this).removeClass("ui-state-hover");}
		);
	
	var treeHeight = height-$('#qxgltabsBar').height()-$('#qxglGridPager1111').height() ;
	$('#qxgjlstree').attr("style","height:"+treeHeight+"px;");
	
	

});
</script>
<div id="qxglGridPager1111" class="ui-jqgrid-pager ui-state-default ui-corner-bottom" dir="ltr" style="width: 100%;">
<div id="pg_qxglGridPager" class="ui-pager-control" role="group">
	<table class="ui-pg-table ui-common-table ui-pager-table">
		<tbody>
			<tr>
				<td id="qxglGridPager_left" align="left"><table
						class="ui-pg-table navtable ui-common-table">
						<tbody>
							<tr>
								<td class="ui-pg-button ui-corner-all" title="添加新记录"
									id="add_11Grid"><div class="ui-pg-div">
										<a href="javascript:void(0);"  id="xgqxfp" >修改</a></span>
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

<%@include file="qxglqxfp.jsp" %>