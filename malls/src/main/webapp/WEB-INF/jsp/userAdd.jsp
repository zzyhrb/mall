<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userAdd</title>
<link rel="stylesheet" href="${cp}/layui/css/layui.css">
<script src="${cp}/layui/layui.js"></script>
<script type="text/javascript" src="${cp}/js/jquery-3.5.1.min.js"></script>
<script>
	//一般直接写在一个js文件中
	//加载form模块，加载完成后，调用回调函数
	layui.use([ 'form', 'laydate' ], function() {
		var form = layui.form();
		

		//监听提交，一旦提交表单，会调用回调函数
		form.on('submit(formDemo)', function(data) {
			//layer.msg(JSON.stringify(data.field));//data.field代表全部表单字段，名值对形式：{name: value}
			$.post("${cp}/user/add", data.field, function(d) {
				alert("4")
				if (d == true) {
					//弹出消息3秒以后，会执行回调函数
					layer.msg("添加成功", function() {
						window.location.href = "${cp}/user/selectUI";
					});
				} else {
					layer.msg("添加失败");
				}
			}, "json");
			return false;//阻止表单跳转。如果需要表单跳转，去掉这段即可。
		});
	});
</script>
</head>
<body class="layui-layout-body">
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
			<div style="padding: 15px;">
				<form class="layui-form" action="">
					<div class="layui-form-item">
						<label class="layui-form-label">用户名</label>
						<div class="layui-input-inline">
							<input type="text" name="name" required lay-verify="required"
								placeholder="请输入用户名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-mid layui-word-aux">用户名不能为空</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">年龄</label>
						<div class="layui-input-inline">
							<input type="text" name="age" required lay-verify="required"
								placeholder="请输入年龄" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-mid layui-word-aux">年龄不能为空</div>
					</div>
					
				
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- 底部 -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	


	
</body>
</html>