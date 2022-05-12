package com.online.restaurant.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.online.restaurant.entity.CartItem;
import com.online.restaurant.entity.Category;
import com.online.restaurant.entity.Item;
import com.online.restaurant.service.CartItemService;
import com.online.restaurant.service.CategoryService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
    private CartItemService cartItemService;
	
	@Autowired
    private CategoryService categoryService;
	
	@RequestMapping(value = "/additem", method = RequestMethod.POST)
    public String addItemToCart(@ModelAttribute("cartitem") CartItem theItem, Model theModel,HttpSession session) {
		
    	session.setAttribute("itemcount",cartItemService.addItemToCart(theItem));
    	List <Category> theCategories = categoryService.getCategories();
    	theModel.addAttribute("categories",theCategories);
        return "redirect:/category/order-list";
   }
	
	@GetMapping("/showForm")
    public String showOrderItems(Model theModel, HttpSession session) {
		List<CartItem> cartItems = cartItemService.getCartItems();
		session.setAttribute("itemcount", cartItemService.getItemsCount());
	       
    	theModel.addAttribute("cartitems",cartItems);
    	double total = cartItemService.getCartTotal(cartItems);
    	theModel.addAttribute("total",total);
    	 return "cart-form";
   }
	
	@RequestMapping(value = "/removeCartItem", method = RequestMethod.GET)
    public String removeItemFromCart(Model theModel,@RequestParam("itemId") int theId, HttpSession session) {
		cartItemService.removeItemFromCart(theId);
		
		List<CartItem> cartItems = cartItemService.getCartItems();
		session.setAttribute("itemcount", cartItemService.getItemsCount());

		theModel.addAttribute("cartitems",cartItems);
    	double total = cartItemService.getCartTotal(cartItems);
    	theModel.addAttribute("total",total);
    	return "cart-form";
   }
	
}

