package com.ambow.orderf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ambow.orderf.service.TestService;

@Controller
@RequestMapping("/test")
public class Test {
	@Autowired private TestService testService;
	@RequestMapping("/test")
	public String test(String url){
		/*List<Customer> list = testService.list();
		for (Customer customer : list) {
			System.out.println(customer.toString());
		}*/
		System.out.println("--------"+url+"----------");
		return url;
		
	}
	
}
