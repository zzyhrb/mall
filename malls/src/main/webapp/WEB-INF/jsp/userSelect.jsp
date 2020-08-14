<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userList</title>
<link rel="stylesheet" href="${cp}/layui/css/layui.css">
<script src="${cp}/layui/layui.js"></script>
<script type="text/javascript" src="${cp}/js/jquery-3.5.1.min.js"></script>
<script>
	layui.use('table', function() {
		var table = layui.table();

		//渲染表格
		table.render({
			elem : '#userSelect',
			url : '${cp}/user/select' //数据接口
			,
			page : true //开启分页
			,
			cols : [ [ //表头
			{
				field : 'id',
				title : 'ID',
				fixed : 'left'
			}, {
				field : 'name',
				title : '用户名'
			}, {
				field : 'age',
				title : '年龄'
			}, {
				field : 'gender',
				title : '性别'
			}, {
				field : 'birthday',
				title : '生日'
			}, {
				fixed : 'right',
				width : 178,
				align : 'center',
				toolbar : '#barDemo'
			} ] ]
		});
         
		//监听工具条，当点击工具条时，会调用回调函数
		table.on('tool(test)', function(obj) {
			var data = obj.data;//代表一行的数据，一个json对象
			if (obj.event === 'detail') {//如果事件是detail                                                                   
				layer.msg('ID：' + data.id + ' 的查看操作');
			} else if (obj.event === 'del') {
				layer.confirm('真的删除行么', function(index) {
					//obj.del();//从表格中删除，而不是从数据库删除
					layer.close(index);//关闭询问框

					$.get("${cp}/user/delete", {
						"id" : data.id
					}, function(d) {
						if (d == true) {
							//删掉了
							layer.msg("删除成功", function() {
								window.location.href = "${cp}/user/selectUI";
							});
						} else {
							//没删掉
							layer.msg("删除失败");
						}
					}, "json");

				});
			} else if (obj.event === 'edit') {
				window.location.href = "${cp}/user/updateUI?id=" + data.id;
			}
		});

	});
</script>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		

		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
				<table id="userSelect" lay-filter="test"></table>
				<script type="text/html" id="barDemo">
    	<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
    	<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    	<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
			</div>
		</div>
	</div>
</body>
</html>