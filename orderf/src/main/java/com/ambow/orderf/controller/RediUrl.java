package com.ambow.orderf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ambow.orderf.pojo.Role;

@Controller
public class RediUrl {
	@RequestMapping("/url")
	public String test(String url,Model model){
		System.out.println("--------"+url+"----------");
		return url;
		
	}
	
}
