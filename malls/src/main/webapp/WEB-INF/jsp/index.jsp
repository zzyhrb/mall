<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>微商管理系统</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="icon" href="favicon.ico">
	<link rel="stylesheet" href="${cp}/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="//at.alicdn.com/t/font_tnyc012u2rlwstt9.css" media="all" />
	<link rel="stylesheet" href="${cp}/layui/css/main.css" media="all" />
	<script type="text/javascript" src="${cp}/layui/layui.js"></script>
	<script type="text/javascript" src="${cp}/js/leftNav.js"></script>
	<script type="text/javascript" src="${cp}/js/index.js"></script>
</head>
<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<!-- 顶部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black">
			<div class="user-photo">
				<a class="img" title="我的头像" ><img src="${cp}/images/face.jpg"></a>
				<p>你好！<span class="userName">天空</span>, 欢迎登录</p>
			</div>
			<jsp:include page="left.jsp"></jsp:include>
		</div>
		<!-- 右侧内容 -->
		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">内容主体区域</div>
		</div>
		<!-- 底部 -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	
</body>
</html>
