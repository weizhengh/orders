package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	 * ȫ���ˮ���
	 * 
	 * @return
	 */
	@RequestMapping("/selectAll" )
	public String selectAll(Model model) {
		List<DrinkSoft> list = drinkSoftService.selectAll();
		
		model.addAttribute("list", list);
		
		return "admin/admin-drinksoft";
	}
	@RequestMapping(value="/toInsert")
	public String toInsert(Model model) {
		model.addAttribute("status", "insert");
		return "admin/admin-adddrinksoft";
	}
	

	/**
	 * ��Ӿ�ˮ���
	 * 
	 * @return
	 */
	@RequestMapping(value="/insertSelective",method=RequestMethod.POST)
	public String insertSelective(DrinkSoft drinkSoft) {
		drinkSoftService.insertSelective(drinkSoft);
		return "redirect:/drinkSoft/selectAll.action";
	}

	/**
	 * �޸ľ�ˮ���
	 * 
	 * @return
	 */

	@RequestMapping(value="/updateSelective",method=RequestMethod.POST)
	public String updateSelective(Model model,DrinkSoft drinkSoft) {
		System.out.println(drinkSoft.toString());
		
		drinkSoftService.updateSelective(drinkSoft);
		
		return "redirect:/drinkSoft/selectAll.action";
	}

	/**
	 * �����ˮ���
	 * 
	 * @return
	 */

	@RequestMapping("/selectByPrimaryKey" )
	public String selectByPrimaryKey(Model model,Integer drink_soft_id) {

		DrinkSoft drinkSoft = drinkSoftService.selectByPrimaryKey(drink_soft_id);
		model.addAttribute("drinkSoft", drinkSoft);
		model.addAttribute("status", "update");
		System.out.println(drinkSoft.toString());
		return "admin/admin-adddrinksoft";
	}

	/**
	 * ɾ����ˮ��
	 * 
	 * @return
	 */

	@RequestMapping("/deleteByPrimaryKey")
	public String deleteByPrimaryKey(Model model,Integer drink_soft_id) {

		int result = drinkSoftService.deleteByPrimaryKey(drink_soft_id);
		if(result==0){
			
		}else{
		model.addAttribute("str", "本酒水类下有酒水，不能删除");
		}
		return "redirect:/drinkSoft/selectAll.action";
	}

}
