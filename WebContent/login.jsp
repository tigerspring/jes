<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title>JES WMS Suite</title>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
 request.setAttribute("basePath", basePath);
%>
<style type="text/css">
body {
	padding: 0px;
	margin: 0px;
	background: url('<%=basePath %>/script/jquery/css/redmond/images/backgroundfw.png');
}

#loginWrapper {
	position: absolute;
	top: 50%;
	left: 50%;
	margin-left: -500px;
	margin-top: -220px;
	width: 1000px;
	height: 480px;
	text-align: center;
}

.top {
	font: 30px 'Microsoft YaHei', '微软雅黑';
	color: White;
	font-weight: bold;
	margin: 20px;
}

.copyright {
	font: 14px 'Microsoft YaHei', '微软雅黑';
	color: White;
	margin: 20px;
}

.loginBox {
	text-align: left;
	background-color: #FEFEFE;
	border: 1px solid #BfD6E1;
	border-radius: 5px;
	color: #FF9966;
	font: 14px 'Microsoft YaHei', '微软雅黑';
	margin: 0 auto;
	width: 400px;
}

.loginBox .loginBoxCenter {
	border-bottom: 1px solid #DDE0E8;
	padding: 5px 24px 0px 24px;
}

.loginBox .title {
	border-bottom: 1px solid #DDE0E8;
	padding: 8px 24px 8px 24px;
	font-size: 18px;
	background-color: #F0F4F6;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
}

.loginBox .loginBoxCenter p {
	margin: 3px;
}

.loginBox .loginBoxButtons {
	background-color: #F0F4F6;
	border-top: 1px solid #FFF;
	border-bottom-left-radius: 5px;
	border-bottom-right-radius: 5px;
	line-height: 28px;
	overflow: hidden;
	padding: 10px 24px;
	vertical-align: center;
}

.loginBox .loginInput {
	border: 1px solid #D2D9dC;
	border-radius: 2px;
	color: #FF6666;
	font: 14px 'Microsoft YaHei', '微软雅黑';
	padding: 6px 14px;
	margin-bottom: 8px;
	width: 310px;
}

.loginBox .loginlanguage {
	border: 1px solid #D2D9dC;
	border-radius: 2px;
	color: #FF6666;
	font: 14px 'Microsoft YaHei', '微软雅黑';
	padding: 6px 14px;
	margin-bottom: 8px;
	width: 338px;
}

.loginBox .loginInput:FOCUS {
	border: 1px solid #B7D4EA;
	box-shadow: 0 0 8px #B7D4EA;
}

.loginBox .loginBtn {
	background-image: -moz-linear-gradient(to bottom, #B5DEF2, #85CFEE);
	border: 1px solid #98CCE7;
	border-radius: 20px;
	box-shadow: inset rgba(255, 255, 255, 0.6) 0 1px 1px, rgba(0, 0, 0, 0.1)
		0 1px 1px;
	color: #FF470A;
	cursor: pointer;
	float: right;
	font: bold 14px Arial;
	padding: 7px 20px;
}

</style>
<script src="<%=basePath %>/script/jquery/js/jquery-1.10.2.js"></script>
</head>
<body>
	<form action="login" method="post">
		<div id="loginWrapper">
				<div class="top">
					<span id="labProductName">JES WMS Suite</span>
				</div>
				<div class="loginBox">
					<div class="title">
						<span id="labUserLogin">用户登录</span>
					</div>
					<div class="loginBoxCenter">
						<p>
							<span id="labUser">用户：</span>
						</p>
						<p>
							<input name="username" type="text" id="txtUsername"
								class="loginInput" />
						</p>
						<p>
							<span id="labPassword">密码： </span>
						</p>
						<p>
							<input class="loginInput" name="password" type="password" />
						</p>
						<p>
							<span id="module">模块： </span>
						</p>
						<select class="loginInput" name="model">
						  <option value="scm">供应链</option>
  						  <option value="wms">WMS</option>
						</select>
					</div>
					<div class="loginBoxButtons">
						<input id="chbRember" type="checkbox" name="chbRember" />
						<label id="chbRember">记住密码</label> 
						<input type="submit" name="btnLogin" value="登录" id="btnLogin" class="loginBtn" />
					</div>
				</div>
			</div>
	</form>
</body>
</html>
