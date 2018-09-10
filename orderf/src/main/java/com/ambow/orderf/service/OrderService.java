package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.CarItem;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Order;
import com.ambow.orderf.pojo.OrderItem;

public interface OrderService {
	void addOrder(Integer order_pay, Integer order_meth, Integer order_state, String order_info, Customer customer,
			List<CarItem> foodList, List<CarItem> drinkList);

	Integer updateOrder(Integer order_state, String order_info, String order_id);

	List<OrderItem> findOrderByCidOnFood(Integer cust_id);

	List<OrderItem> findOrderByCidOnDrink(Integer cust_id);

	List<OrderItem> findAllOrderOnFood();

	List<OrderItem> findAllOrderOnDrink();

	List<OrderItem> findOrderByStateOnFood();

	List<OrderItem> findOrderByStateOnDrink();
}
