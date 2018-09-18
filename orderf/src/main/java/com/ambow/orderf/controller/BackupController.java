package com.ambow.orderf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ambow.orderf.quartz.Backup;

@Controller
@RequestMapping("/backup")
public class BackupController {
	@RequestMapping(value="/rebackup" )
	public String rebackup(String fileName) {
		System.out.println(fileName);
		
		Backup backup=new Backup();
		backup.restor(fileName);
		return "admin/admin-index";
		}

}
