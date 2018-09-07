package com.ambow.orderf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ambow.orderf.pojo.Evalute;
import com.ambow.orderf.service.EvaluteService;

@Controller
@RequestMapping("/evalute")
public class EvaluteController {
	@Autowired
	private EvaluteService evaluteService;
	@RequestMapping(value="/selectAll")
	public String selectAll(Model model){
		List<Evalute> evaluteList = evaluteService.selectAll();
		for (Evalute evalute : evaluteList) {
			System.out.println(evalute.toString());
		}
		model.addAttribute("evaluteList", evaluteList);
		return "admin/admin-evalute";
	}
	@RequestMapping(value="/delete")
	public String delete(Integer eva_id){
		evaluteService.deleteEvaluteById(eva_id);
		return "redirect:/selectAll.action";
	}
	@RequestMapping(value="/get")
	public String getById(Model model){
		List<Evalute> evaluteList = evaluteService.selectAll();
		for (Evalute evalute : evaluteList) {
			System.out.println(evalute.toString());
		}
		model.addAttribute("evaluteList", evaluteList);
		return "admin/admin-evalute";
	}
	@RequestMapping(value="/update")
	public String updateById(Model model){
		List<Evalute> evaluteList = evaluteService.selectAll();
		for (Evalute evalute : evaluteList) {
			System.out.println(evalute.toString());
		}
		model.addAttribute("evaluteList", evaluteList);
		return "admin/admin-evalute";
	}
}


