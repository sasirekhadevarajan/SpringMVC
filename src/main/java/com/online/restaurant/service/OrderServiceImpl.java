package com.online.restaurant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.online.restaurant.dao.OrderDAO;
import com.online.restaurant.entity.Order;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderDAO;
	
	@Override
    @Transactional
    public void saveOrder(Order theOrder) {
    	orderDAO.saveOrder(theOrder);
    }
}
