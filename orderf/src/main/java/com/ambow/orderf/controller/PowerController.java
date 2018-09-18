package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ambow.orderf.pojo.Power;
import com.ambow.orderf.service.PowerService;

@Controller
public class PowerController {

	@Autowired PowerService powerService;
	
	/**
	 * 查询所有权限信息
	 * @param model
	 * */
	@RequestMapping(value="/power/findAll.action",method=RequestMethod.GET)
	public String findAll(Model model){
		
		List<Power> list=powerService.findAll();
		model.addAttribute("powerList", list);
		return "admin/admin-power";
	}
	
	/**
	 * 添加权限
	 * @param power 存放权限信息的对象
	 * */
	@RequestMapping(value="/power/addPower.action",method=RequestMethod.POST)
	@ResponseBody
	public String addPower(Power power){
		
		if(powerService.addPower(power)){
			return "ok";
		}else{
			return "error";
		}
	}
	
	/**
	 * 修改权限信息
	 * @param power 存放权限信息的对象
	 * */
	@RequestMapping(value="/power/updatePower.action",method=RequestMethod.POST)
	public String updatePower(Power power){
		
		if(powerService.updatePower(power)){
			return "redirect:/power/findAll.action";
		}else{
			return "admin/admin-404";
		}
	}
	
	/**
	 * 根据权限ID删除权限
	 * @param powerId 权限ID
	 * */
	@RequestMapping(value="/power/delPower.action",method=RequestMethod.GET)
	@ResponseBody
	public String delPower(Integer powerId){
		
		if(powerService.delPower(powerId)){
			return "ok";
		}else{
			return "error";
		}
	}
	
	/**
	 * 根据权限ID查询权限信息
	 * @param powerId 权限ID
	 * @param model
	 * */
	@RequestMapping(value="/power/findByPowerId.action",method=RequestMethod.GET)
	public String findByPowerId(Integer powerId,Model model){
		
		Power power=powerService.findByPowerId(powerId);
		model.addAttribute("power", power);
		return "admin/update-power";
	}
	
	/**
	 * 跳转修改权限页面
	 * @param power 存储权限信息的对象
	 * */
	@RequestMapping(value="/power/toUpdate.action")
	public String toUpdate(Power power,Model model){
		
		model.addAttribute("power", power);
		return "admin/update-power";
	}
}
