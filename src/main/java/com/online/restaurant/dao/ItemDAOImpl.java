package com.online.restaurant.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.restaurant.entity.Item;

@Repository
public class ItemDAOImpl implements ItemDAO {

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List <Item> getItems() {
    	Session session = sessionFactory.getCurrentSession();
		TypedQuery<Item> tq = session.createQuery("from Item",Item.class);
		return tq.getResultList();
    }

    @Override
    public void deleteItem(int id) {
        Session session = sessionFactory.getCurrentSession();
        Item item = session.byId(Item.class).load(id);
        session.delete(item);
    }

    @Override
    public void saveItem(Item theItem) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theItem);
    }

    @Override
    public Item getItem(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Item item = currentSession.get(Item.class, theId);
        return item;
    }
}

