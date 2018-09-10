package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.CarItem;
import com.ambow.orderf.pojo.Order;
import com.ambow.orderf.pojo.OrderItem;

public interface OrderDao {
	Integer addOrder(Order order);

	Integer addOrderitem(OrderItem orderItem);

	Integer updateOrder(Order order);

	List<OrderItem> findOrderByCidOnFood(Integer cust_id);

	List<OrderItem> findOrderByCidOnDrink(Integer cust_id);

	/* OrderItem findOrderitemByOid(Integer oid); */
	List<OrderItem> findAllOrderOnFood();
	
	List<OrderItem> findAllOrderOnDrink();

	List<OrderItem> findOrderByStateOnFood();
	
	List<OrderItem> findOrderByStateOnDrink();
}
