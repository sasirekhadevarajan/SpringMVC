package com.online.restaurant.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.online.restaurant.entity.CartItem;
import com.online.restaurant.entity.Category;
import com.online.restaurant.entity.User;
import com.online.restaurant.entity.UserLogin;
import com.online.restaurant.service.CategoryService;
import com.online.restaurant.service.UserService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired 
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value = "/validateLogin", method = RequestMethod.POST)
    public String validateLogin(@ModelAttribute("userlogin") UserLogin theUserLogin, Model theModel, HttpSession session) {
	   
       int theId = userService.verifyUser(theUserLogin.getEmail(),theUserLogin.getPassword());
       if (theId != 0) {
    	   
    	   //get the user details based on the user id and set them in session
	       User theUser = userService.getUser(theId);
	       session.setAttribute("userlogin",theUserLogin);
	       session.setAttribute("userid",theId);
	       session.setAttribute("username", theUser.getFirstName());
	       
	       //set the attributes in the model for valid login
	       theModel.addAttribute("error","");
	       theModel.addAttribute("result","success");
	       if (theUserLogin.getPage().equals("order-online")) 
	    	   return "redirect:/category/order-list";
	       return theUserLogin.getPage();
	       
       }
       //set the attributes in the model to for invalid login
       theModel.addAttribute("result", "fail");
       theModel.addAttribute("error","Login failed. Invalid credentials.");
       if (theUserLogin.getPage().equals("order-online"))
    	   return "redirect:/category/order-list";
       return theUserLogin.getPage();
   }
	
	@RequestMapping(value = "/category/order-list", method = RequestMethod.GET)
    public String listCategoriesForOrder(Model theModel, HttpSession session) {
	   theModel.addAttribute("userlogin",new UserLogin());
	   System.out.println(session.getAttribute("username"));
	   if (session.getAttribute("username") == "") {   
		   session.setAttribute("username","");
		   session.setAttribute("userid","");
		   theModel.addAttribute("error","");
		   theModel.addAttribute("result","");
	   }
	   session.setAttribute("page","order-online");
       List <Category> theCategories = categoryService.getCategories();
       CartItem cartItem = new CartItem();
       theModel.addAttribute("cartitem",cartItem);
       theModel.addAttribute("categories", theCategories);
       return "order-online";
   }
	
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
    public String showContactUs(Model theModel, HttpSession session) {
	   theModel.addAttribute("userlogin",new UserLogin());
	   System.out.println(session.getAttribute("username"));
	   if (session.getAttribute("username") == "") {   
		   session.setAttribute("username","");
		   session.setAttribute("userid","");
		   theModel.addAttribute("error","");
		   theModel.addAttribute("result","");
	   }
	   session.setAttribute("page","contactus");
       return "contactus";
   }
	
	
	@RequestMapping(value = "/aboutus", method = RequestMethod.GET)
    public String showAboutUs(Model theModel, HttpSession session) {
	   theModel.addAttribute("userlogin",new UserLogin());
	   System.out.println(session.getAttribute("username"));
	   if (session.getAttribute("username") == "") {   
		   session.setAttribute("username","");
		   session.setAttribute("userid","");
		   theModel.addAttribute("error","");
		   theModel.addAttribute("result","");
	   }
	   session.setAttribute("page","aboutus");
       return "aboutus";
   }
	
	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
    public String showGallery(Model theModel, HttpSession session) {
	   theModel.addAttribute("userlogin",new UserLogin());
	   System.out.println(session.getAttribute("username"));
	   if (session.getAttribute("username") == "") {   
		   session.setAttribute("username","");
		   session.setAttribute("userid","");
		   theModel.addAttribute("error","");
		   theModel.addAttribute("result","");
	   }
	   session.setAttribute("page","gallery");
       return "gallery";
   }
	
	@RequestMapping(value = "/usersignup", method = RequestMethod.GET)
    public String showSignup(Model theModel, HttpSession session) {
		User theUser = new User();
        theModel.addAttribute("user", theUser);
       
       return "signup";
   }
	
	@RequestMapping(value = "/showUser", method = RequestMethod.GET)
    public String showUserForUpdate(@RequestParam("userId") int theId, Model theModel) {
		User theUser = userService.getUser(theId);
        theModel.addAttribute("user", theUser);
       
       return "updateuser";
   }
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public String updateUser(@Valid @ModelAttribute("user") User theUser,
    		BindingResult result, Model theModel) {
		
		if ((result.hasErrors())) {
    		return "updateuser";
    	}
		
		userService.saveUser(theUser);
        return "updateusersuccess";
		
   }
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String saveUser(@Valid @ModelAttribute("user") User theUser,
    		BindingResult result, Model theModel) {
		
		if ((result.hasErrors())) {
    		return "signup";
    	}
		
		//if user email do not exists
		if (userService.getUserByEmail(theUser.getEmail())==null) {
			theUser.setPassword(passwordEncoder.encode(theUser.getPassword()));
			userService.saveUser(theUser);
	        return "signupsuccess";
		} else {
			theModel.addAttribute("duplicateemail","Email already exits!");
        	return "signup";
        }
   }
	
	@RequestMapping(value="/userlogout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        HttpSession httpSession = request.getSession();
        httpSession.invalidate();
        return "redirect:/";
    }

}
