package com.ambow.orderf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RediUrl {
	@RequestMapping("/url")
	public String test(String url){
		System.out.println("--------"+url+"----------");
		return url;
		
	}
	
}
