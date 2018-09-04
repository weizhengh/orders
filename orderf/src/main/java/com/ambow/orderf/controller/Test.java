package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.service.TestService;

@Controller
@RequestMapping("/test")
public class Test {
	@Autowired private TestService testService;
	@RequestMapping("/test")
	public String test(){
		List<Customer> list = testService.list();
		for (Customer customer : list) {
			System.out.println(customer.toString());
		}
		System.out.println("------------------");
		return null;
		
	}
	
}
