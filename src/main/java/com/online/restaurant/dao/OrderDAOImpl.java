package com.online.restaurant.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.restaurant.entity.Order;

@Repository
public class OrderDAOImpl implements OrderDAO {
   
	@Autowired
    private SessionFactory sessionFactory;
   

    @Override
    public void saveOrder(Order theOrder) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theOrder);
    }
}
