package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;
import com.ambow.orderf.service.DrinkSoftService;

@Controller
@RequestMapping("/drinkSoft")
public class DrinkSoftController {
	@Autowired
	private DrinkSoftService drinkSoftService;

	/**
	 * 全查酒水类别
	 * @return
	 */
	@RequestMapping("/selectAll")
	public String selectAll(Model model) {
		List<DrinkSoft> list = drinkSoftService.selectAll();
		model.addAttribute("list", list);
		System.out.println(list.toString());
		return "admin/admin-drinksoft";
	}
	

	/**
	 * 添加酒水类别
	 * @return
	 */
	@RequestMapping("/insertSelective")
	public String insertSelective() {
		DrinkSoft drinkSoft = new DrinkSoft();
		drinkSoft.setDrink_soft_name("啤酒");
		drinkSoftService.insertSelective(drinkSoft);
		return "admin/admin-user";
	}
	/**
	 * 修改酒水类别
	 * @return
	 */
	
	@RequestMapping("/updateSelective")
	public String updateSelective() {
		DrinkSoft drinkSoft = new DrinkSoft();
		drinkSoft.setDrink_soft_id(1);
		drinkSoft.setDrink_soft_name("白酒");
		drinkSoftService.updateSelective(drinkSoft);
		return "admin/admin-user";
	}
	/**
	 * 单查酒水类别
	 * @return
	 */
	
	@RequestMapping("/selectByPrimaryKey")
	public String selectByPrimaryKey() {

		
		DrinkSoft drinkSoft=drinkSoftService.selectByPrimaryKey(3);
		System.out.println(drinkSoft.toString());
		return "admin/admin-user";
	}
	
	/**
	 * 删除酒水类
	 * @return
	 */
	
	@RequestMapping("/deleteByPrimaryKey")
	public String deleteByPrimaryKey() {

		int result=drinkSoftService.deleteByPrimaryKey(1);
		if(result==0){
			System.out.println("删除");
		}else{
			System.out.println("本类下有信息");
		}
		return "admin/admin-user";
	}

}
