package com.online.restaurant.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.online.restaurant.dao.UserDAO;
import com.online.restaurant.entity.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
    private UserDAO userDAO;
	
	@Autowired 
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	@Transactional
	public void saveUser(User theUser) {
		userDAO.saveUser(theUser);
	}
	
	@Override
	@Transactional
    public User getUser(int theId) {
    	return userDAO.getUser(theId);
    }
    
	@Override
	@Transactional
    public int verifyUser(String email, String password) {
    	
    	User user = userDAO.getUserByEmail(email); 
    	
    	boolean pwdMatch = passwordEncoder.matches(password, user.getPassword());
    	if (user != null && pwdMatch) {
    		return user.getId();
    	}
    	return 0;
    }
	
	
	@Override
	@Transactional
    public User getUserByEmail(String email) {
    	return userDAO.getUserByEmail(email); 
    }
}
