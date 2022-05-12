package com.online.restaurant.test;

import static org.junit.Assert.assertEquals;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.online.restaurant.dao.ItemDAO;
import com.online.restaurant.entity.Item;

public class TestItemDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private ItemDAO itemDAO;
	
	@Test
    public void saveItemTest() {
		Item theItem = new Item(100000,"TestItem","TestItem",8.99,true,1);
		Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theItem);
        Item theItemTest = itemDAO.getItem(100000);
		assertEquals(theItem.getName(),theItemTest.getName());
	}
	
	@Test
    public void deleteItemTest() {
		Item theItem = new Item(100001,"TestItem","TestItem",8.99,true,1);
		Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theItem);
        itemDAO.deleteItem(100001);
        Item theItemTest = itemDAO.getItem(100001);
		assertEquals(null,theItemTest);
	}
}
