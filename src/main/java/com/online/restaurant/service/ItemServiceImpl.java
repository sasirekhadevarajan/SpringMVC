package com.online.restaurant.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.online.restaurant.dao.ItemDAO;
import com.online.restaurant.entity.Item;

@Service
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemDAO itemDAO;

    @Override
    @Transactional
    public List < Item > getItems() {
        return itemDAO.getItems();
    }
    
    @Override
    @Transactional
    public void saveItem(Item theItem) {
    	itemDAO.saveItem(theItem);
    }

    @Override
    @Transactional
    public Item getItem(int theId) {
        return itemDAO.getItem(theId);
    }

    @Override
    @Transactional
    public void deleteItem(int theId) {
    	itemDAO.deleteItem(theId);
    }
}
