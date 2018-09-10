package com.ambow.orderf.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ambow.orderf.pojo.CarItem;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.service.CarService;

@Controller
public class CarController {
	@Autowired
	private CarService carService;
	Integer back;
	Integer num;

	@RequestMapping(value = "addCar.action")
	public String addCar(float car_price, float car_priced, Integer food_id, Integer drink_id, Integer num,
			HttpSession session) {
		/* Customer customer = (Customer) session.getAttribute("customer"); */
		Customer customer = new Customer();
		customer.setCust_id(1);
		carService.addCar(car_price, car_priced, customer, food_id, drink_id, num);
		return "";
	}

	@RequestMapping(value = "findByCid.action")
	public String findByCid(Integer cust_id,HttpSession session) {
		List<CarItem> foodCar = carService.findByCidOnFood(cust_id);
		List<CarItem> drinkCar = carService.findByCidOnDrink(cust_id);
		session.setAttribute("foodCar", foodCar);
		session.setAttribute("drinkCar", drinkCar);
		return "test";
	}

	@RequestMapping(value = "delById.action", method = RequestMethod.POST)
	public String delById(Integer caritem_id) {
		back = carService.delById(caritem_id);
		if (back == 0) {
			return "test";
		} else {
			return "redirect:findByCid.action";
		}
	}

	@RequestMapping(value = "delByCid.action", method = RequestMethod.POST)
	public String delByCid(Integer car_id) {
		back = carService.delByCid(car_id);
		if (back == 0) {
			return "NO";
		} else {
			return "redirect:findByCid.action";
		}
	}

	@RequestMapping(value = "updateById.action", method = RequestMethod.POST)
	public String updateById(Integer car_item_id, Integer foodnum, Integer drinknum, Integer car_id, float car_price, float car_priced) {
		
		if(foodnum!=null) {
			num=foodnum;
		}else {
			num=drinknum;
		}
		back = carService.updateById(car_item_id, num);
		if (back == 0) {
			return "NO";
		} else {
			int backs = carService.updateByIds(car_id, car_price, car_priced);
			if (backs == 0) {
				return "NO";
			} else {
				return "redirect:findByCid.action";
			}
		}
	}
}
