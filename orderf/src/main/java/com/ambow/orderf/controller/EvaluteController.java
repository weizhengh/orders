package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ambow.orderf.pojo.Evalute;
import com.ambow.orderf.service.EvaluteService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/evalute")
public class EvaluteController {
	@Autowired
	private EvaluteService evaluteService;
	@RequestMapping(value="/selectAll")
	public String selectAll(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Model model){
		PageHelper.startPage(pn,2);
		List<Evalute> evaluteList = evaluteService.selectAll();
		PageInfo<Evalute> pageInfo = new PageInfo<Evalute>(evaluteList,5);
		for (Evalute evalute : evaluteList) {
			System.out.println(evalute.toString());
		}
		model.addAttribute("pageInfo", pageInfo);
		return "admin/admin-evalute";
	}
	@RequestMapping(value="/delete")
	public String delete(Integer eva_id){
		evaluteService.deleteEvaluteById(eva_id);
		return "redirect:selectAll.action";
	}
}


