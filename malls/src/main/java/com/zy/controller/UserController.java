package com.zy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zy.pojo.User;
import com.zy.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	// 先从子容器中寻找UserService，如果找不到就去父容器中找
	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/get")
	public String get(int id, Model model) {
		User user = userService.get(id);
		model.addAttribute("user", user);
		return "userDetail";
	}

	
	@GetMapping("/addUI")
	public String addUser(){
		return "userAdd";
	}
	@PostMapping("/add")
	public @ResponseBody boolean add(User user) {
		return userService.add(user);
	}
	
	//返回用户列表页面
	
	@GetMapping("/selectUI")
	public String selectUI(){
		
		return "userSelect";
	}
	
	
	
	//返回用户列表
	@GetMapping("/select")
	public @ResponseBody Map<String,Object> select(int page,int limit){
		Map<String,Object> param = new HashMap<String,Object>();
		param.put("start", (page-1)*limit);//从第几条开始
		param.put("limit",limit); //显示几条数据
		
		List<User> userList =userService.select(param);
		int count = userService.getCount();
		Map<String,Object> result = new HashMap<String,Object>();
		result.put("code", 0);
		result.put("msg", "");
		result.put("count",count);
		result.put("data",userList);
		return result;
		
		
	}
	
	
}
