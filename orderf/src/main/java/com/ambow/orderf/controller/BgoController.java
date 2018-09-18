package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONArray;
import com.ambow.orderf.pojo.Evalute;
import com.ambow.orderf.pojo.Order;
import com.ambow.orderf.pojo.OrderItem;
import com.ambow.orderf.service.OrderService;
import com.ambow.orderf.websocket.WebSocket;
@Controller()
@RequestMapping("bgo")
public class BgoController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/bgostage")
	public void selectAll(Model model){
		List<Evalute> evaluteList = null;
		Order order = new Order();
		order.setOrder_id("12345");
		WebSocket.sendAll("bgo",JSONArray.toJSONString(order));
		//PageInfo<Order> pageInfo = new PageInfo<Order>(evaluteList,5);
		//model.addAttribute("pageInfo", pageInfo);
	}
	@RequestMapping(value="/addorder")
	public void addorder(Model model){
		Order order = new Order();
		order.setOrder_id("12345");
		WebSocket.sendAll("bgo",JSONArray.toJSONString(order));
		//PageInfo<Order> pageInfo = new PageInfo<Order>(evaluteList,5);
		//model.addAttribute("pageInfo", pageInfo);
	}
	@RequestMapping(value="/selectAllOrder")
	public void selectAllOrder(Model model){
		List<OrderItem> orderFoodList = orderService.findOrderByCidOnFood(1);
//		List<OrderItem> orderFoodList = orderService.findOrderByCidOnFood(1);
	}
}
