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
import com.online.restaurant.entity.Item;
import com.online.restaurant.service.CategoryService;
import com.online.restaurant.service.ItemService;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private CategoryService categoryService;
   
    @Autowired
    private ItemService itemService;
    
    @RequestMapping(value = "/categoryList", method = RequestMethod.GET)//"/category/list"
     public String listCategories(Model theModel) {
        List <Category> theCategories = categoryService.getCategories();
        theModel.addAttribute("categories", theCategories);
        return "list-categories";
    }
    
    @RequestMapping(value = "/categoryItemList", method = RequestMethod.GET)
    public String listCategoryItems(@RequestParam("categoryId") int theId,
            Model theModel) {
    	List <Item> theItems = categoryService.getCategoryItems(theId);
    	theModel.addAttribute("categoryname",categoryService.getCategoryName(theId));
    	theModel.addAttribute("categoryId",theId);
        theModel.addAttribute("items", theItems);
        return "list-items";
   }
    
    @RequestMapping(value = "/showCategoryForm", method = RequestMethod.GET)///category/showForm
    public String showFormForAdd(Model theModel) {
        Category theCategory = new Category();
        theModel.addAttribute("category", theCategory);
        return "category-form";
    }

    @RequestMapping(value = "/updateCategory", method = RequestMethod.GET)///category/updateForm
    public String showFormForUpdate(@RequestParam("categoryId") int theId,
        Model theModel) {
        Category theCategory = categoryService.getCategory(theId);
        theModel.addAttribute("category", theCategory);
        return "category-form";
    }

    @RequestMapping(value = "/deleteCategory", method = RequestMethod.GET)///category/delete
    public String deleteCategory(@RequestParam("categoryId") int theId) {
    	categoryService.deleteCategory(theId);
        return "redirect:/admin/categoryList";
    }
    
      
    @RequestMapping(value = "/itemList", method = RequestMethod.GET) ///item/list
     public String listItems(Model theModel) {
        List <Item> theItems = itemService.getItems();
        if (theItems.size()>0) {
        	theModel.addAttribute("categoryId",theItems.get(0).getCategoryId());
        }
        theModel.addAttribute("items", theItems);
        return "list-items";
    }

    @RequestMapping(value = "/showItemForm", method = RequestMethod.GET)
    public String showFormForAdd(@RequestParam("categoryId") int categoryId,
            Model theModel) {
        Item theItem = new Item();
        theItem.setCategoryId(categoryId);
        theModel.addAttribute("item", theItem);
        return "item-form";
    }
    
    @RequestMapping(value = "/saveCategory", method = RequestMethod.POST)///category/saveCategory
    public String saveCategory(@Valid @ModelAttribute("category") Category theCategory,
    		BindingResult result) {
    	if ((result.hasErrors())) {
    		return "category-form";
    	}
    	categoryService.saveCategory(theCategory);
        return "redirect:/admin/categoryList";
    }
    
    @RequestMapping(value = "/saveItem", method = RequestMethod.POST)
    public String saveItem(@Valid @ModelAttribute("item") Item theItem, 
    		BindingResult result, @RequestParam("categoryId") int categoryId) {
    	
    	if (result.hasErrors()) {
    		
    		return "item-form";
    	} 
    	theItem.setCategoryId(categoryId);
    	itemService.saveItem(theItem);
        return "redirect:/admin/categoryItemList?categoryId="+categoryId;
    }

    @RequestMapping(value = "/updateItem", method = RequestMethod.GET)
    public String showFormForUpdate(@RequestParam("itemId") int theId, @RequestParam("categoryId") int categoryId,
        Model theModel) {
        Item theItem = itemService.getItem(theId);
        theModel.addAttribute("categoryId",categoryId);
        theModel.addAttribute("item", theItem);
        return "item-form";
    }

    @RequestMapping(value = "/deleteItem", method = RequestMethod.GET)
    public String deleteItem(@RequestParam("itemId") int theId, @RequestParam("categoryId") int categoryId) {
    	itemService.deleteItem(theId);
        return "redirect:/admin/categoryItemList?categoryId="+categoryId;
    }
    
    @RequestMapping(value="/logout",method = RequestMethod.GET)
    public String logout(HttpServletRequest request){
        HttpSession httpSession = request.getSession();
        httpSession.invalidate();
        return "redirect:/";
    }

}