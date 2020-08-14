<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="layui-header header">
			<div class="layui-main">
				<a href="#" class="logo">微商管理系统</a>
				<!-- 显示/隐藏菜单 -->
				<a href="javascript:;" class="iconfont hideMenu icon-menu1"></a>
			    <!-- 顶部右侧菜单 -->
			    <ul class="layui-nav top_menu">
			    	<li class="layui-nav-item showNotice" id="showNotice" pc>
						<a href="javascript:;"><i class="iconfont icon-gonggao"></i><cite>系统公告</cite></a>
					</li>
			    	<li class="layui-nav-item" mobile>
			    		<a href="javascript:;" class="mobileAddTab" data-url="jsp/user/changePwd.jsp"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>设置</cite></a>
			    	</li>
			    	<li class="layui-nav-item" mobile>
			    		<a href="${cp}/jsp/login/login.jsp" class="signOut"><i class="iconfont icon-loginout"></i> 退出</a>
			    	</li>
					<li class="layui-nav-item lockcms" pc>
						<a href="javascript:;"><i class="iconfont icon-lock1"></i><cite>锁屏</cite></a>
					</li>
					<li class="layui-nav-item" pc>
						<a href="javascript:;">
							<img src="${cp}/images/face.jpg" class="layui-circle" width="35" height="35">
							
							<cite>天空</cite>
						</a>
						<dl class="layui-nav-child">
							<dd><a href="javascript:;" data-url="${cp}/jsp/user/userInfo.jsp"><i class="iconfont icon-zhanghu" data-icon="icon-zhanghu"></i><cite>个人资料</cite></a></dd>
							<dd><a href="javascript:;" data-url="${cp}/jsp/user/changePwd.jsp"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a></dd>
							<dd><a href="javascript:;" class="changeSkin"><i class="iconfont icon-huanfu"></i><cite>更换皮肤</cite></a></dd>
							<dd><a href="${cp}/jsp/login/login.jsp" class="signOut"><i class="iconfont icon-loginout"></i><cite>退出</cite></a></dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>