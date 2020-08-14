<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>微商--后台管理系统</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${cp}/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="${cp}/layui/css/login.css" media="all" />
	<script type="text/javascript" src="${cp}/js/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div class="login">
	    <h1>微商后台-管理登录</h1>
	   <form class="layui-form">
	    	<div class="layui-form-item">
				<input class="layui-input" name="userName" placeholder="用户名" lay-verify="required" type="text" autocomplete="off">
		    </div>
		    <div class="layui-form-item">
				<input class="layui-input" name="password" placeholder="密码" lay-verify="required" type="password" autocomplete="off">
		    </div>
		    
			<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
		</form>
	</div>
	<script type="text/javascript" src="${cp}/layui/layui.js"></script>
	<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form;

		//监听提交，一旦提交表单，会调用回调函数
		form.on('submit(formDemo)', function(data) {
			$.post("${cp}/login", data.field, function(d) {
				if (d == true) {
					layer.alert("登录成功",function(index){
						layer.close(index);
						window.location.href="${cp}/index";//转到系统首页
					});
				} else {
					layer.alert("登录失败");
				}
			}, "json");
			return false;//阻止表单跳转。如果需要表单跳转，去掉这段即可。
		});
	});
	
	</script>
</body>
</html>