package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;
import com.ambow.orderf.service.DrinkService;
import com.ambow.orderf.service.DrinkSoftService;

@Controller
@RequestMapping("/drink")
public class DrinkController {
	@Autowired
	private DrinkService drinkService;
	@Autowired
	private DrinkSoftService drinkSoftService;

	/**
	 * 全查酒水
	 * 
	 * @return
	 */
	@RequestMapping("/selectAll")
	public String selectAll() {
		List<Drink> list = drinkService.selectAll();
		System.out.println(list.toString());
		return "admin/admin-user";
	}

	/**
	 * 添加酒水
	 * 
	 * @return
	 */
	@RequestMapping("/insertSelective")
	public String insertSelective() {

		DrinkSoft drinkSoft = new DrinkSoft();
		drinkSoft.setDrink_soft_id(4);
		Drink drink = new Drink();
		drink.setDrink_name("AD钙");
		drink.setDrink_price(8f);
		drink.setDrink_soft(drinkSoft);
		drink.setDrink_id(2);
		drinkService.insertSelective(drink);
		return "admin/admin-user";
	}

	/**
	 * 修改酒水
	 * 
	 * @return
	 */

	@RequestMapping("/updateSelective")
	public String updateSelective() {

		Drink drink = new Drink();
		drink.setDrink_id(2);
		drink.setDrink_name("AD钙奶");
		drinkService.updateSelective(drink);
		return "admin/admin-user";
	}

	/**
	 * 删除酒水
	 * 
	 * @return
	 */

	@RequestMapping("/deleteByPrimaryKey")
	public String deleteByPrimaryKey() {

		Drink drink = new Drink();
		drink.setDrink_id(3);
		drinkService.deleteByPrimaryKey(drink.getDrink_id());
		return "admin/admin-user";
	}

	/**
	 * 单查酒水
	 * 
	 * @return
	 */
	@RequestMapping("/selectByPrimaryKey")
	public String selectByPrimaryKey() {

		Drink drink = drinkService.selectByPrimaryKey(2);
		System.out.println(drink.toString());
		return "admin/admin-user";
	}

}
