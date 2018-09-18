package com.ambow.orderf.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;



import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ambow.orderf.pojo.Evalute;
import com.ambow.orderf.pojo.FoodSoft;
import com.ambow.orderf.service.FoodSoftService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
public class FoodSoftController {
	
	
	@Autowired 
	private FoodSoftService foodSoftService;
	
	@RequestMapping(value="findAllfoodsoft.action",method=RequestMethod.GET)
	private String findAllfoodsoft(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,FoodSoft foodsoft,Model model){
		PageHelper.startPage(pn,5);
		List<FoodSoft> lists=foodSoftService.findAllfoodsoft();
		PageInfo<FoodSoft> pageInfo = new PageInfo<FoodSoft>(lists,5);
		model.addAttribute("pageInfo", pageInfo);
		
		return "admin/admin-foodsoft";
		
	}
	
	
		
	@RequestMapping(value="deletefoodsoft.action",method=RequestMethod.GET)
	private String deletefoodsoft(Integer fsid,HttpServletRequest request,Model model){
		
		
		
		boolean flag=foodSoftService.deletefoodsoft(fsid);
		
		if(flag){
			return "redirect:/findAllfoodsoft.action";
		}
		
		return "error";
		
	}
	
	
	@RequestMapping(value="findfoodsoftByid.action",method=RequestMethod.GET)
	private String findfoodsoftByid(Integer fsid,Model model){

		FoodSoft foodsoft=foodSoftService.findfoodsoftByid(fsid);
		model.addAttribute("softfood", foodsoft);
		
		return "admin/admin-updatefoodsoft";

}
	
	@RequestMapping(value = "updatefoodsoft.action", method = RequestMethod.POST)
	public String updatefoodsoft(Integer food_soft_id, String food_soft_name) throws IllegalStateException, IOException {
		
		Integer back=foodSoftService.updatefoodsoft(food_soft_id, food_soft_name);
		System.out.println(back);
		if (back > 0) {
			return "redirect:findAllfoodsoft.action";
		} else {
			return "error";

		}
	}
	
	
	
	/*新增菜品分类*/
	@RequestMapping(value="addfoodsoft.action",method=RequestMethod.POST)
	public String addfoodsoft(String food_soft_name,HttpServletRequest request){
		
		FoodSoft foodsoft=new FoodSoft();
		foodsoft.setFood_soft_name(food_soft_name);
		
		boolean flag=foodSoftService.addfoodsoft(foodsoft);
		if(flag){
			return "redirect:findAllfoodsoft.action";
		}
		
		
		return "error";
		
		
		
		
	}
	
	
	@RequestMapping(value="addfsoft.action",method=RequestMethod.GET)
	public String addfsoft(){
		
		
			return "admin/admin-addfoodsoft";
	
		
		
		
	}
	
	
	@RequestMapping(value="findAllfsoft.action",method=RequestMethod.GET)
	private String findAllfsoft(FoodSoft foodsoft,Model model){
		
		List<FoodSoft> list=foodSoftService.findAllfoodsoft();
		model.addAttribute("foodsoft", list);
		
		return "admin/admin-addfood";
		
	}
	
	
	@RequestMapping(value="findFoodsoftName.action",method=RequestMethod.GET)
	@ResponseBody
	private String findFoodsoftName(String food_soft_name,Model model){
		System.out.println("food_soft_name="+food_soft_name);
		//foodsoft.setFood_soft_name(food_soft_name);
		Integer foodsoft=foodSoftService.findFoodsoftName(food_soft_name);
		
		if(foodsoft!=null){
			
			return "error";
		}else{
			
			return "OK";
		}
		
		
		
	}
	
}
