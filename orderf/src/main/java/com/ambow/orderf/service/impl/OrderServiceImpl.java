package com.ambow.orderf.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ambow.orderf.dao.OrderDao;
import com.ambow.orderf.pojo.CarItem;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Order;
import com.ambow.orderf.pojo.OrderItem;
import com.ambow.orderf.service.OrderService;
import com.ambow.orderf.utils.GetOrderCode;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDao orderDao;
	Order order = new Order();
	OrderItem orderItem = new OrderItem();
	Integer back;

	public void addOrder(Integer order_pay, Integer order_meth, Integer order_state, String order_info,
			Customer customer, List<CarItem> foodList, List<CarItem> drinkList) {
		Date date = new Date();
		String oid = GetOrderCode.numCode();

		CarItem carItem = foodList.get(0);

		order.setOrder_id(oid);
		order.setCustomer(customer);
		order.setOrder_info(order_info);
		order.setOrder_meth(order_meth);
		order.setOrder_pay(order_pay);
		order.setOrder_price(carItem.getCar().getCar_price());
		order.setOrder_priced(carItem.getCar().getCar_priced());
		order.setOrder_state(order_state);
		order.setOrder_time(date);
		orderDao.addOrder(order);

		orderItem.setOrder(order);
		if (foodList != null) {
			for (CarItem carItems : foodList) {
				orderItem.setDrink(null);
				orderItem.setFood(carItems.getFood());
				orderItem.setNum(carItems.getNum());
				orderDao.addOrderitem(orderItem);
			}
		}
		if (drinkList != null) {
			for (CarItem carItems : drinkList) {
				orderItem.setFood(null);
				orderItem.setDrink(carItems.getDrink());
				orderItem.setNum(carItems.getNum());
				orderDao.addOrderitem(orderItem);
			}
		}
	}

	public Integer updateOrder(Integer order_state, String order_info, String order_id) {
		order.setOrder_state(order_state);
		order.setOrder_info(order_info);
		order.setOrder_id(order_id);
		back = orderDao.updateOrder(order);
		return back;
	}

	public List<OrderItem> findAllOrderOnFood() {
		return orderDao.findAllOrderOnFood();
	}

	public List<OrderItem> findAllOrderOnDrink() {
		return orderDao.findAllOrderOnFood();
	}

	public List<OrderItem> findOrderByStateOnFood() {
		return orderDao.findAllOrderOnFood();
	}

	public List<OrderItem> findOrderByStateOnDrink() {
		return orderDao.findAllOrderOnDrink();
	}

	public List<OrderItem> findOrderByCidOnFood(Integer cust_id) {
		return orderDao.findOrderByCidOnFood(cust_id);
	}

	public List<OrderItem> findOrderByCidOnDrink(Integer cust_id) {
		return orderDao.findOrderByCidOnDrink(cust_id);
	}

}
