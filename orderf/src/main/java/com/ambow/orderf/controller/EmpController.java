package com.ambow.orderf.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ambow.orderf.pojo.Emp;
import com.ambow.orderf.service.EmpService;

/**
 * 员工管理的controller层
 * */
@Controller
public class EmpController {

	@Autowired EmpService empService;
	
	/**
	 * 管理员后台登录
	 * @param emp 存放员工账号密码的实体
	 * @param session 员工登录以后把信息存到session中
	 * */
	@RequestMapping(value="/emp/login.action",method=RequestMethod.POST)
	public String loginEmp(Emp emp,HttpSession session){
		Emp empInfo=empService.loginEmp(emp);
		if(empInfo==null){
			session.setAttribute("message", "用户名或密码错误");
			return "login";
		}else{
			session.setAttribute("loginEmp", empInfo);
			return "admin/admin-index";			
		}
	}
	
	/**
	 * 查询所有员工信息
	 * @param model 
	 * */
	@RequestMapping(value="/emp/findAll.action",method=RequestMethod.GET)
	public String findAllEmp(Model model){
		List<Emp> list=empService.findAllEmp();
		model.addAttribute("empList", list);
		return "emp";
	}
	
	/**
	 * 根据员工ID查询员工信息
	 * @param empId 员工ID
	 * @param model 
	 * */
	@RequestMapping(value="/emp/findById.action",method=RequestMethod.GET)
	public String findById(Integer empId,Model model){
		Emp emp=empService.findById(empId);
		if(emp==null){
			return "error";
		}else{
			model.addAttribute("empInfo", emp);
			return "findById";			
		}
	}
	
	/**
	 * 根据员工ID删除员工
	 * @param empId 员工ID
	 * */
	@RequestMapping(value="/emp/deleteById.action",method=RequestMethod.GET)
	public String deleteById(Integer empId){
		
		if(empService.deleteById(empId)){
			return "error";
		}else{
			return "redirect:emp/findAll";			
		}
	}
	
	/**
	 * 管理员添加新员工
	 * @param emp 存放新员工信息的实体
	 * */
	@RequestMapping(value="/emp/addEmp.action",method=RequestMethod.POST)
	public String addEmp(Emp emp){
		
		if(empService.addEmp(emp)){
			return "error";
		}else{
			return "redirect:/emp/findAll";			
		}
	}
	
	/**
	 * 员工修改自己信息
	 * @param emp 存放员工个人信息的实体
	 * */
	@RequestMapping(value="/emp/updateEmp.action",method=RequestMethod.POST)
	public String empupdateSelf(Emp emp){
		
		if(empService.updateEmp(emp)){
			return "error";
		}else{
			return "redirect:listSelf";			
		}
	}
	
	/**
	 * 管理员修改员工信息
	 * @param emp 存放员工个人信息的实体
	 * */
	@RequestMapping(value="/emp/updateEmp.action",method=RequestMethod.GET)
	public String updateEmp(Emp emp){
		
		if(empService.updateEmp(emp)){
			return "error";
		}else{
			return "redirect:/emp/findAll";			
		}
	}
}
