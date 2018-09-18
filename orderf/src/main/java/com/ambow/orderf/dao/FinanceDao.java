package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.Food;
import com.ambow.orderf.pojo.Order;

public interface FinanceDao {
	
	 List<Order> findAllexchange(Order order);
}
