package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String selectAll(Model mode) {
		List<Drink> list = drinkService.selectAll();
		mode.addAttribute("list", list);
		System.out.println(list.toString());
		return "admin/admin-drink";
	}
	
	
	@RequestMapping(value="/toInsert")
	public String toInsert(Model model) {
		model.addAttribute("status", "insert");
		return "admin/admin-adddrink";
	}
	

	/**
	 * ��Ӿ�ˮ
	 * 
	 * @return
	 */
	@RequestMapping(value="/insertSelective",method=RequestMethod.POST)
	public String insertSelective(Drink drink) {

		drinkService.insertSelective(drink);
		return "redirect:/drink/selectAll.action";
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
		drink.setDrink_name("中");
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
