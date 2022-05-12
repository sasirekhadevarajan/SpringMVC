package com.online.restaurant.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.online.restaurant.dao.CategoryDAO;
import com.online.restaurant.entity.Category;
import com.online.restaurant.entity.Item;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    @Transactional
    public List<Category> getCategories() {
        return categoryDAO.getCategories();
    }
    
    @Override
    @Transactional
    public List<Item> getCategoryItems(int theId){
    	return categoryDAO.getCategoryItems(theId);
    }
    
    @Override
    @Transactional
    public void saveCategory(Category theCategory) {
    	categoryDAO.saveCategory(theCategory);
    }

    @Override
    @Transactional
    public Category getCategory(int theId) {
        return categoryDAO.getCategory(theId);
    }

    @Override
    @Transactional
    public void deleteCategory(int theId) {
    	categoryDAO.deleteCategory(theId);
    }
    
    @Override
    @Transactional
    public String getCategoryName(int theId) {
    	
    	return categoryDAO.getCategoryName(theId); 
    }
}
