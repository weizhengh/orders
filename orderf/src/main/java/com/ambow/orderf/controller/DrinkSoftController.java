package com.ambow.orderf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;






import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;






import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
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
	
	/**
	 * 查重
	 */
	@RequestMapping(value="/selectByName",method=RequestMethod.POST)
	@ResponseBody
	public JSONObject selectByName(String drink_soft_name,HttpServletResponse resp) throws UnsupportedEncodingException {
		resp.setContentType("json/text");
		
		
		
		System.out.println(drink_soft_name);
		
		
		List<DrinkSoft> list = drinkSoftService.selectByName(drink_soft_name);
		  JSONObject jsonObject = new JSONObject();
		  System.out.println(list.toString());
		if(list.size()!=0){
			jsonObject.put("message", "有");
			}else{
				jsonObject.put("message", "没有");
			}
			return jsonObject;
			
		
	}
	
	
	/**
	 * 到新增页面
	 * @param model
	 * @return
	 */
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
		
		return "admin/admin-adddrinksoft";
	}

	/**
	 * ɾ����ˮ��
	 * 
	 * @return
	 * @throws IOException 
	 */

	
	
	@RequestMapping(value="/deleteByPrimaryKey",method=RequestMethod.POST)
	@ResponseBody
	public JSONObject  deleteByPrimaryKey(Integer drink_soft_id,HttpServletResponse resp) throws IOException {
		resp.setContentType("json/text");
     System.out.println(drink_soft_id+"controller");
     JSONObject jsonObject = new JSONObject();
		int result = drinkSoftService.deleteByPrimaryKey(drink_soft_id);
		System.out.println(result);
		if(result==0){
		jsonObject.put("message", "成功");
		}else{
			jsonObject.put("message", "失败");
		}
		return jsonObject;
		
	}

}
