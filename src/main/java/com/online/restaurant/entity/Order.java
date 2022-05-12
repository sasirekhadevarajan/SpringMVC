package com.online.restaurant.entity;

import java.time.LocalDate;

import java.util.List;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity
@Table(name="Order")
public class Order {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    
    @Column(name="status")
    private String status;
    
    @Column(name="subtotal")
    private double subTotal;
    
    @Column(name="tax")
    private double tax;
    
    @Column(name="total")
    private double total;
    
    @Column(name="discount")
    private double discount;
    
    @Column(name="grandtotal")
    private double grandTotal;
    
    @Column(name="userid")
    private double userId;
    
    @OneToMany(fetch=FetchType.EAGER)
	@JoinColumn(name="orderid")
	private List<OrderItem> orderItems;

    @Column(name="createdOn")
    private LocalDate createdOn;
    
    @Column(name="updatedOn")
    private LocalDate updatedOn;
    
	public Order() {
		super();
		tax = 2.0;
		createdOn = java.time.LocalDate.now();
		updatedOn = java.time.LocalDate.now();
	}
	
	
	public LocalDate getCreatedOn() {
		return createdOn;
	}


	public void setCreatedOn(LocalDate createdOn) {
		this.createdOn = createdOn;
	}


	public LocalDate getUpdatedOn() {
		return updatedOn;
	}


	public void setUpdatedOn(LocalDate updatedOn) {
		this.updatedOn = updatedOn;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}

	public double getTax() {
		return tax;
	}

	public void setTax(double tax) {
		this.tax = tax;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public double getGrandTotal() {
		return grandTotal;
	}

	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}

	public double getUserId() {
		return userId;
	}

	public void setUserId(double userId) {
		this.userId = userId;
	}

	public List<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
    
    
	
}
