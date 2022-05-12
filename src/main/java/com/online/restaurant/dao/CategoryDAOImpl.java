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

import com.online.restaurant.entity.Category;
import com.online.restaurant.entity.Item;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List <Category> getCategories() {
    	Session session = sessionFactory.getCurrentSession();
		
		
		TypedQuery<Category> tq = session.createQuery("from Category",Category.class);
		
		return tq.getResultList();
    }
    
    @Override
    public List<Item> getCategoryItems(int theId) {
    	Session currentSession = sessionFactory.getCurrentSession();
        Category category = currentSession.get(Category.class, theId);
//        String query = "SELECT i FROM Item i where categoryId = "+category.getId();
//		
//		TypedQuery<Item> tq = currentSession.createQuery(query,Item.class);
//		
//		return tq.getResultList();
        return category.getItems();
    }
    
    @Override
    public void deleteCategory(int id) {
        Session session = sessionFactory.getCurrentSession();
        Category category = session.byId(Category.class).load(id);
        session.delete(category);
    }

    @Override
    public void saveCategory(Category theCategory) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theCategory);
    }

    @Override
    public Category getCategory(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Category category = currentSession.get(Category.class, theId);
        return category;
    }
    
    @Override
    public String getCategoryName(int theId) {
    	Session currentSession = sessionFactory.getCurrentSession();
        Category category = currentSession.get(Category.class, theId);
        return category.getName();
    }
}

