package com.zy.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor {
	// 在请求得到处理之前调用
	// 返回true表示放行
	// 返回false表示不放行
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object userId = session.getAttribute("userId");
		if (userId == null || userId.equals("")) {
			// 没有登录
			request.getRequestDispatcher("/loginUI").forward(request, response);
			return false;
		} else {
			return true;
		}
	}
}
