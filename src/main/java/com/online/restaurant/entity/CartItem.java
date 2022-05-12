package com.online.restaurant.entity;

public class CartItem {

    
    private int id;
    
    private int orderId;
    
    private int itemId;
    
    private String itemName;
    
    private String itemDescription;

    private double price;
    
    private int quantity;

	public CartItem() {
		super();
	}
	
	
	public String getItemName() {
		return itemName;
	}



	public void setItemName(String itemName) {
		this.itemName = itemName;
	}



	public String getItemDescription() {
		return itemDescription;
	}



	public void setItemDescription(String itemDescription) {
		this.itemDescription = itemDescription;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
  
	@Override
	public int hashCode() {
	    int hash = 7;
	    hash = 31 * hash + this.itemId;
	    return hash;
	}
	
	@Override
	public boolean equals(Object object) {
	    if (this == object)
	        return true;
	    if (object == null || getClass() != object.getClass())
	        return false;
	    CartItem cartItem = (CartItem) object;
	    return cartItem.getItemId() == this.getItemId();
	}
}