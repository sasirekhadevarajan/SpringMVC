package com.online.restaurant.service;

import com.online.restaurant.entity.User;

public interface UserService {
	
	public void saveUser(User theUser);

    public User getUser(int theId);
    
    public int verifyUser(String email, String password);
    
    public User getUserByEmail(String email);
}
