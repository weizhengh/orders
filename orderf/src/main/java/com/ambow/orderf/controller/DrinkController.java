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
	
		return "admin/admin-drink";
	}

	@RequestMapping(value = "/toInsert")
	public String toInsert(Model model) {
		List<DrinkSoft> drinkSoftList=drinkSoftService.selectAll();
		model.addAttribute("drinksoft", drinkSoftList);
		model.addAttribute("status", "insert");
		return "admin/admin-adddrink";
	}

	/**
	 * ��Ӿ�ˮ
	 * 
	 * @return
	 */
	@RequestMapping(value = "/insertSelective", method = RequestMethod.POST)
	public String insertSelective(Drink drink) {
	System.out.println(drink.getDrink_picture());
		drinkService.insertSelective(drink);
		return "redirect:/drink/selectAll.action";
	}

	/**
	 * �޸ľ�ˮ
	 * 
	 * @return
	 */

	@RequestMapping(value="/updateSelective", method = RequestMethod.POST)
	public String updateSelective(Drink drink) {

		System.out.println(drink.toString());
		drinkService.updateSelective(drink);
		return "redirect:/drink/selectAll.action";
	}

	/**
	 * ɾ����ˮ
	 * 
	 * @return
	 */

	@RequestMapping("/deleteByPrimaryKey")
	public String deleteByPrimaryKey(Integer drink_id) {

		drinkService.deleteByPrimaryKey(drink_id);
		return "redirect:/drink/selectAll.action";
	}

	/**
	 * �����ˮ
	 * 
	 * @return
	 */
	@RequestMapping("/selectByPrimaryKey")
	public String selectByPrimaryKey(Model model,Integer drink_id) {

		Drink drink = drinkService.selectByPrimaryKey(drink_id);
		
		List<DrinkSoft> drinkSofts=drinkSoftService.selectAll();
		model.addAttribute("drinksoft", drinkSofts);
		model.addAttribute("drink", drink);
		model.addAttribute("status", "update");
		
		return "admin/admin-adddrink";
	}

}
