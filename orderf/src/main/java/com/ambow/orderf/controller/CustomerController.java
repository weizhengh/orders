package com.ambow.orderf.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.service.CustomerService;

/**
 * 顾客管理controller层
 * */
@Controller
public class CustomerController {

	@Autowired private CustomerService customerService;
	
	/**
	 * 前台顾客登录
	 * @param customer 存储用户手机号和密码的实体
	 * @param session 将用户登录以后的信息存到session中
	 * */
	@RequestMapping(value="/customer/loginCustomer.action",method=RequestMethod.POST)
	public String loginCustomer(Customer customer,HttpSession session){
		
		Customer customerInfo=customerService.loginCustomer(customer);
		
		if(customerInfo==null){
			session.setAttribute("message", "手机号或密码错误");
			return "login";
		}else{
			session.setAttribute("customer", customerInfo);
			return "index";			
		}
	}
	
	/**
	 * 后台管理员查询所有顾客信息
	 * @param model 
	 * */
	@RequestMapping(value="/customer/findAllCustomer.action",method=RequestMethod.GET)
	public String findAllCustomer(Model model){
		
		List<Customer> list=customerService.findAllCustomer();
		model.addAttribute("custlist", list);
		return "findAllCustomer";
	}
	
/* 
 	前台顾客查看自己的信息

	@RequestMapping(value="/customer/findByIdSelf.action",method=RequestMethod.GET)
	public String findByIdSelf(Integer custId,Model model){
		
		Customer customer=customerService.findById(custId);
		model.addAttribute("customer", customer);
		return "findBySelf";
	}
*/
	/**
	 * 后台管理员根据顾客ID查看顾客信息
	 * @param custId 顾客ID
	 * @param model 
	 * */
	@RequestMapping(value="/customer/findById.action",method=RequestMethod.GET)
	public String findById(Integer custId,Model model){
		
		Customer customer=customerService.findById(custId);
		model.addAttribute("customer", customer);
		return "findCustById";
	}
	
	/**
	 * 后台管理员根据顾客ID删除顾客信息
	 * @param custId 顾客ID
	 * */
	@RequestMapping(value="/customer/deleteById.action",method=RequestMethod.GET)
	public String deleteById(Integer custId){
		
		if(customerService.deleteById(custId)){
			
			return "redirect:/customer/findAllCustomer.action";
		}else{
			
			return "error";
		}
	}
	
	/**
	 * 后台管理员添加顾客
	 * @param customer 存放新增顾客信息的实体
	 * */
	@RequestMapping(value="/customer/addCustomer.action",method=RequestMethod.POST)
	public String addCustomer(Customer customer){
		
		if(customerService.addCustomer(customer)){
			
			return "redirect:/customer/findAllCustomer.action";
		}else{
			
			return "error";
		}
	}
	
	/**
	 * 前台顾客注册账号
	 * @param customer 存放用户注册信息的实体
	 * */
	@RequestMapping(value="/customer/registCustomer.action",method=RequestMethod.POST)
	public String registCustomer(Customer customer){
		
		if(customerService.addCustomer(customer)){
			
			return "index";
		}else{
			
			return "error";
		}
	}
	
	/**
	 * 前台顾客修改个人信息
	 * @param custoemr 修改后的顾客信息
	 * */
	@RequestMapping(value="/customer/updateCustomerQt.action",method=RequestMethod.POST)
	public String updateCustomerQt(Customer customer){
		
		if(customerService.updateCustomer(customer)){
			
			return "index";
		}else{
			
			return "error";
		}
	}
	
	/**
	 * 后台管理员修改顾客信息
	 * @param customer 修改后的顾客信息 
	 * */
	@RequestMapping(value="/customer/updateCustomer.action",method=RequestMethod.POST)
	public String updateCustomer(Customer customer){
		
		if(customerService.updateCustomer(customer)){
			
			return "redirect:/customer/findAllCustomer.action";
		}else{
			
			return "error";
		}
	}
	
	/**
	 * 添加订单后自动增加顾客的积分
	 * 增加规则为消费金额的1/10
	 * @param customer 存放顾客ID与新增的积分
	 * */
	@RequestMapping(value="/customer/updateGrade.action",method=RequestMethod.POST)
	public String updateGrade(Customer customer){
		
		if(customerService.updateGrade(customer)){
			
			return "";
		}else{
			
			return "";
		}
	}
}
