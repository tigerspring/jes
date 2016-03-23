<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<div class="i_head">
	<h1>JES WMS Suite</h1>
	<div align="left">当前用户：<%=session.getAttribute("username")%> </div>
	<div align="right">
	<input type="button" value="用户注销" onclick="doLogout()">
	</div>
</div><!--end i_head-->
<script type="text/javascript">
	function doLogout() {
		//访问LogoutServlet注销当前登录的用户
		window.location.href = "${pageContext.request.contextPath}/servlet/LogoutServlet";
		//window.parent.document.getElementById("topFrame").removeChild();		
	}
</script>