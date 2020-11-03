package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.java.po.Users;
import com.java.service.UsersService;

@Controller
@RequestMapping("/LoginController")
public class LoginController {
	
	@Autowired
	private UsersService usersService;

	@RequestMapping("/login.action")
	public ModelAndView login(Users user) {
		System.out.print("11111111111111111111");
		ModelAndView modelAndView = new ModelAndView();
		
		if(usersService.selectAdmin(user)) {
			modelAndView.addObject("user",user);
			modelAndView.setViewName("shoplist");
		};
		
		return modelAndView;
	}
}
