package com.online.restaurant.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.online.restaurant.entity.UserLogin;
import com.online.restaurant.service.CartItemService;
import com.online.restaurant.service.OrderService;

@Controller 
public class OrderController { 
	
	@Autowired
	private OrderService orderService;

	@Autowired
	private CartItemService cartItemService;
	
	@RequestMapping("/saveOrder")
	public String saveOrder(Model theModel, HttpSession session) {
//		int userId;
//		if (session.getAttribute("userid") != null) {
//			 userId = Integer.parseInt(session.getAttribute("userid").toString());
//			 //orderService.saveOrder(userId);
//		
//		}
		cartItemService.removeAllItems();
		session.setAttribute("cartitems", "");
		session.setAttribute("itemcount", "");
		return "ordersuccess"; 
	} 
	
}
