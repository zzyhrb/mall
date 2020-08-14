package com.zy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zy.pojo.User;
import com.zy.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@GetMapping("/loginUI")
	public String loginUI(){
		
		return "login/login";
	}
	@PostMapping("/login")
	public @ResponseBody boolean login(String userName,String password,HttpSession session){
		
		User user = userService.getByNameAndPassword(userName,password);
		System.out.println(user+"======");
		if(user ==null){
			return false;
		}else{
			session.setAttribute("userId",user.getId());
			session.setAttribute("userName",user.getName());
			return true;
		}
	}
	
}
