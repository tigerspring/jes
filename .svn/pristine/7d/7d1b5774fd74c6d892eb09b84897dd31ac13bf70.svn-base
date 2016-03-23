<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
 %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
<head>

<title>JES WMS Suite</title>
<link rel="stylesheet" type="text/css" media="screen" href="<%=basePath%>/jquery/css/redmond/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="<%=basePath%>/jquery/css/ui.jqgrid.css" />
<!-- 引入jQuery -->
<script type="text/javascript" src="<%=basePath%>/jquery/js/jquery-1.10.2.js"></script>
<script src="<%=basePath%>/jquery/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
<script src="<%=basePath%>/jquery/js/i18n/grid.locale-en.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery.jgrid.no_legacy_api = true;
</script>
<script src="<%=basePath%>/jquery/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script>
$(function(){
		$("#gridTable").jqGrid({
			url:"<%=basePath%>/servlet/SystemRoleServlet",
			datatype:"json",
			mtype: "GET",
			colNames:['id','groupCode','groupName','groupDes','changeDate','changerCode','changerName'],
			colModel:[
                      {name:'id',index:'id',sorttype:"int"},
			          {name:'groupCode',index:'groupCode'},
			          {name:'groupName',index:'groupName'},
			          {name:'groupDes',index:'groupDes'},
			          {name:'changeDate',index:'changeDate',sorttype:'date'},
			          {name:'changerCode',index:'changerCode'},
			          {name:'changerName',index:'changerName'}
			          ],
			sortname:'id',
			sortorer: 'asc',
			viewrecords: true,
			rowNum:10,
			rowList:[10,20,30],
			jsonReader:{
				page: "page",
				total:"total",
				records: "records",				
				id: "0",
				repeatitems:false
			},
			loadComplete: function () {
				if(window.parent!=window)
					window.parent.iframeCall();//为所有数据行，具体取决于reader配置的root或者服务器返回的内容
	         },
			pager:"#gridPager",
			imgpath:"<%=basePath%>/jquery/core/themes/redmond/images",
			caption:"清单",
			prmNames : { 
				page:"page",
			    rows:"rows"
			}
		});
		$('#gridTable').navGrid('gridPager',{
			refresh:true,
			edit:true,
			add:true,
			del:true,
			search:true,
			refreshtitle:"刷新",
			edittitle:"修改",
			addtitle:"添加",
			deltitle:"删除",
			searchtitle:"搜索"
			});
		var mydata ="[{groupCode:'groupCode1',groupName:'groupName1',groupDes:'groupDes1',changeDate:'2015-9-19 12:24:11',changerCode:'admin',changerName:'admin'}]";
		for(var i=0;i<=mydata.length;i++)
            $("#gridTable").jqGrid('addRowData',i+1,mydata[i]);
	});

</script>

</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<table id="gridTable">
</table>
<div id="gridPager"></div>

</body>
</html>