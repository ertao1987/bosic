package com.bosic.school.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.bosic.school.service.UserService;
import com.opensymphony.xwork2.Action;

@Controller
@Scope("prototype")
public class UserController {
	// 绑定业务逻辑类，用于业务处理
	//------------------------------
	@Autowired
	private UserService userService;
	//------------------------------
	// 定义模型（model），用于数据传输
	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	// 定义action
	//------------------------------
	// 登录
	public String login() throws Exception {
		// 返回逻辑视图
		return "login";
	}
	// 验证用户是否合法
	public String validate() throws Exception {
		if(userService.login(username, password)){
			return Action.SUCCESS;
		} else {
			return Action.INPUT;
		}
	}
	// 退出
	public String logout() throws Exception {
		return "logout";
	}
}
