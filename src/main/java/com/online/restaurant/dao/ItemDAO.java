package com.online.restaurant.dao;


import java.util.List;

import com.online.restaurant.entity.Item;

public interface ItemDAO {

    public List <Item> getItems();
    
    public void saveItem(Item theItem);

    public Item getItem(int theId);

    public void deleteItem(int theId);
}