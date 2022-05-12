package com.online.restaurant.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.online.restaurant.entity.UserLogin; 

@Controller 
public class HomeController { 

	@GetMapping("/")
	public String index(Model theModel, HttpSession session) {
		theModel.addAttribute("page","index");
		theModel.addAttribute("userlogin",new UserLogin());
		if (session.getAttribute("username")!=null) {
			return "index";
		}
		session.setAttribute("userlogin",new UserLogin());
		session.setAttribute("userid","");
		session.setAttribute("username","");
		theModel.addAttribute("error","");
		theModel.addAttribute("result","");
		return "index"; 
	} 
	@GetMapping("/admin") 
	public String admin() { 
		return "redirect:/admin/categoryList"; 
	} 
}
