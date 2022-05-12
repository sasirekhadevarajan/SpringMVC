package com.online.restaurant.service;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.online.restaurant.entity.CartItem;
import com.online.restaurant.entity.Item;
import com.online.restaurant.entity.OrderItem;

@Service
public class CartItemServiceImpl implements CartItemService {
	
	private List<CartItem> cartItems = new ArrayList<CartItem>();
	
	private double cartTotal = 0.0;
	
	@Override
    @Transactional
	public int getItemsCount() {
		int itemCount = 0;
		for (CartItem oi:cartItems) {
			itemCount+=oi.getQuantity();
		}
		return itemCount;
	}
	
	@Override
    @Transactional
	public int addItemToCart(CartItem cartItem) {
		for (CartItem cartItemTemp:cartItems) {
			if (cartItem.equals(cartItemTemp)) {
				cartItemTemp.setQuantity(cartItem.getQuantity()+cartItemTemp.getQuantity());
				return getItemsCount(); 
			}
		}
		cartItems.add(cartItem);
		return getItemsCount();   
	}
	
	@Override
    @Transactional
	public void removeItemFromCart(int theId) {
		for (int i=0;i<cartItems.size();i++) {
			System.out.println(cartItems.get(i).getId()+" "+theId);
			if (cartItems.get(i).getItemId()==theId) {
				System.out.println(cartItems.get(i).getId());
				cartItems.remove(i); 
			}
		}
	}
	
	@Override
    @Transactional
	public List<CartItem> getCartItems(){
		return cartItems;
	}
	
	@Override
    @Transactional
	public double getCartTotal(List<CartItem> cartItems){
		cartTotal = 0.0;
		cartItems.forEach((item)-> {
			cartTotal+=item.getQuantity()*item.getPrice();
		});
		System.out.println("Total"+cartTotal);
		return cartTotal;
	}
	
	@Override
    @Transactional
	public void removeAllItems() {
		cartItems.clear();
	}
	
}
