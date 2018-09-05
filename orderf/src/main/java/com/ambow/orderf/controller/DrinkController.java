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
	 * ȫ���ˮ
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
	 * ��Ӿ�ˮ
	 * 
	 * @return
	 */
	@RequestMapping("/insertSelective")
	public String insertSelective() {

		DrinkSoft drinkSoft = new DrinkSoft();
		drinkSoft.setDrink_soft_id(4);
		Drink drink = new Drink();
		drink.setDrink_name("AD��");
		drink.setDrink_price(8f);
		drink.setDrink_soft(drinkSoft);
		drink.setDrink_id(2);
		drinkService.insertSelective(drink);
		return "admin/admin-user";
	}

	/**
	 * �޸ľ�ˮ
	 * 
	 * @return
	 */

	@RequestMapping("/updateSelective")
	public String updateSelective() {

		Drink drink = new Drink();
		drink.setDrink_id(2);
		drink.setDrink_name("AD����");
		drinkService.updateSelective(drink);
		return "admin/admin-user";
	}

	/**
	 * ɾ����ˮ
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
	 * �����ˮ
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
