package com.online.restaurant.service;

import java.util.ArrayList;
import java.util.List;

import com.online.restaurant.entity.CartItem;


public interface CartItemService {
	
	public int getItemsCount();
	
	public int addItemToCart(CartItem cartItem);
	
	public List<CartItem> getCartItems();
	
	public void removeItemFromCart(int theId);
	
	public double getCartTotal(List<CartItem> cartItems);
	
	public void removeAllItems();
}
