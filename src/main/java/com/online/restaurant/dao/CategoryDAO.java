package com.online.restaurant.dao;

import java.util.List;

import com.online.restaurant.entity.Category;
import com.online.restaurant.entity.Item;

public interface CategoryDAO {
	 public List <Category> getCategories();
	    
    public void saveCategory(Category theCategory);

    public Category getCategory(int theId);

    public void deleteCategory(int theId);
    
    public List<Item> getCategoryItems(int theId);
    
    public String getCategoryName(int theId);
}
