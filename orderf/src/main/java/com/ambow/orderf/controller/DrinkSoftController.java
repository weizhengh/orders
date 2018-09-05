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
	 * ȫ���ˮ���
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
	 * ��Ӿ�ˮ���
	 * @return
	 */
	@RequestMapping("/insertSelective")
	public String insertSelective() {
		DrinkSoft drinkSoft = new DrinkSoft();
		drinkSoft.setDrink_soft_name("ơ��");
		drinkSoftService.insertSelective(drinkSoft);
		return "admin/admin-user";
	}
	/**
	 * �޸ľ�ˮ���
	 * @return
	 */
	
	@RequestMapping("/updateSelective")
	public String updateSelective() {
		DrinkSoft drinkSoft = new DrinkSoft();
		drinkSoft.setDrink_soft_id(1);
		drinkSoft.setDrink_soft_name("�׾�");
		drinkSoftService.updateSelective(drinkSoft);
		return "admin/admin-user";
	}
	/**
	 * �����ˮ���
	 * @return
	 */
	
	@RequestMapping("/selectByPrimaryKey")
	public String selectByPrimaryKey() {

		
		DrinkSoft drinkSoft=drinkSoftService.selectByPrimaryKey(3);
		System.out.println(drinkSoft.toString());
		return "admin/admin-user";
	}
	
	/**
	 * ɾ����ˮ��
	 * @return
	 */
	
	@RequestMapping("/deleteByPrimaryKey")
	public String deleteByPrimaryKey() {

		int result=drinkSoftService.deleteByPrimaryKey(1);
		if(result==0){
			System.out.println("ɾ��");
		}else{
			System.out.println("����������Ϣ");
		}
		return "admin/admin-user";
	}

}
