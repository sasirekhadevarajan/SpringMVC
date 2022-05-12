package com.online.restaurant.dao;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.online.restaurant.entity.Category;
import com.online.restaurant.entity.Item;
import com.online.restaurant.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public void saveUser(User theUser) {
		Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theUser);
	}
	
	@Override
    public User getUser(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
        User user = currentSession.get(User.class, theId);
        return user;
	}
	
	@Override
	public User getUserByEmail(String email) {
		
		Session currentSession = sessionFactory.getCurrentSession();
        
        String query = "SELECT u FROM User u where email = '"+email+"'";
		
		TypedQuery<User> tq = currentSession.createQuery(query,User.class);
		
		if (tq.getResultList().size() != 0) {
			return tq.getResultList().get(0);
		}
		return null;
	}
}
