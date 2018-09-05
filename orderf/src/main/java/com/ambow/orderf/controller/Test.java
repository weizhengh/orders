package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.service.DrinkSoftService;

@Controller
@RequestMapping("/test")
public class Test {
	@Autowired private DrinkSoftService testService;
	@RequestMapping("/test")
	public String test(){
	
	
		return null;
		
	}
	
}
