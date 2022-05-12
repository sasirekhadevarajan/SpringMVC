package com.online.restaurant.dao;

import com.online.restaurant.entity.User;


public interface UserDAO {
	
    public void saveUser(User theUser);

    public User getUser(int theId);
    
    public User getUserByEmail(String email);
   
}
