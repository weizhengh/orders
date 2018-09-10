package com.ambow.orderf.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ambow.orderf.pojo.CarItem;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Order;
import com.ambow.orderf.pojo.OrderItem;
import com.ambow.orderf.service.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "addOrder.action")
	public String addOrder( Integer order_pay, Integer order_meth,
			Integer order_state, String order_info, HttpSession session) {
		Customer customer = new Customer();
		customer.setCust_id(1);
		List<CarItem> foodList = (List<CarItem>) session.getAttribute("foodCar");
		List<CarItem> drinkList = (List<CarItem>) session.getAttribute("drinkCar");
		orderService.addOrder(order_pay, order_meth, order_state, order_info, customer,
				foodList, drinkList);
		return "";
	}

	@RequestMapping(value = "updateOrder.action", method = RequestMethod.POST)
	public String updateOrder(Integer order_state, String order_info,String order_id) {
		Integer back = orderService.updateOrder(order_state, order_info,order_id);
		if (back == 0) {
			return "NO";
		} else {
			return "YES";
		}
	}

	@RequestMapping(value = "findOrderByCid.action", method = RequestMethod.POST)
	public String findOrderByCid(Integer cust_id, Model model) {
		List<OrderItem> foodOrder=orderService.findOrderByCidOnFood(cust_id);
		List<OrderItem> drinkOrder=orderService.findOrderByCidOnDrink(cust_id);
		model.addAttribute("foodOrder", foodOrder);
		model.addAttribute("drinkOrder", drinkOrder);
		return "test";
	}

	@RequestMapping(value = "findAllOrder.action")
	public String findAllOrder(Model model) {
		List<OrderItem> foodOrderList = orderService.findAllOrderOnFood();
		List<OrderItem> drinkOrderList = orderService.findAllOrderOnDrink();
		model.addAttribute("foodOrderList", foodOrderList);
		model.addAttribute("drinkOrderList", drinkOrderList);
		return "test";
	}

	@RequestMapping(value = "findOrderByState.action")
	public String findOrderByState(Model model) {
		List<OrderItem> orderStateFoodList = orderService.findOrderByStateOnFood();
		List<OrderItem> orderStateDrinkList = orderService.findOrderByStateOnDrink();
		model.addAttribute("orderStateFoodList", orderStateFoodList);
		model.addAttribute("orderStateDrinkList", orderStateDrinkList);
		return "test";
	}

}
