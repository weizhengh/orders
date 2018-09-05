package com.ambow.orderf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ambow.orderf.service.TestService;

@Controller
public class RediUrl {
	@Autowired private TestService testService;
	@RequestMapping("/url")
	public String test(String url){
		System.out.println("--------"+url+"----------");
		return url;
		
	}
	
}
