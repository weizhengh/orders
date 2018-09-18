package com.ambow.orderf.controller;

import java.beans.IntrospectionException;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;






import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ambow.orderf.pojo.Emp;
import com.ambow.orderf.pojo.Order;
import com.ambow.orderf.pojo.Stock;
import com.ambow.orderf.pojo.TotalType;
import com.ambow.orderf.service.FinanceService;
import com.ambow.orderf.service.StockService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.tools.example.debug.expr.ParseException;


@Controller
public class FinanceController {
	
	@Autowired
	private FinanceService financeService;
	@Autowired
	StockService stockService;
	
	@RequestMapping(value="findAllexchange.action",method=RequestMethod.GET)
	public String findAllexchange(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Order order,Model model){
		
		PageHelper.startPage(pn,2);
		List<Order> list=financeService.findAllexchange(order);
		model.addAttribute("finance", list);
		model.addAttribute("financ", order);
		PageInfo<Order> pageInfo = new PageInfo<Order>(list,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/admin-exchange";
		
	}
	
	@RequestMapping(value="findAllexpends.action",method=RequestMethod.GET)
	public String findAllfood(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Stock stock,Model model){
		PageHelper.startPage(pn,5);
		List<Stock> list=stockService.findAllstock(stock);
		model.addAttribute("stock", list);
		model.addAttribute("stoc", stock);
		PageInfo<Stock> pageInfo = new PageInfo<Stock>(list,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/admin-stock";
		
	}
	
	
	@RequestMapping(value="addStock.action",method=RequestMethod.POST)
	public String addStock(Stock stock,HttpServletRequest request){
		
		java.util.Date nowDate=new java.util.Date();
		SimpleDateFormat df=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date=df.format(nowDate);
		
		HttpSession session=request.getSession();
		Emp emp_id = (Emp) session.getAttribute("loginEmp");

		Emp emp=new Emp();
		emp.setEmp_id(1);
		stock.setEmp_id(emp);
		stock.setStock_time(nowDate);
		
		boolean flag=stockService.addStocks(stock);
		if(flag){
			return "redirect:findAllexpends.action";
		}
		
		
		return "error";
					
		
	}
		
	
	@RequestMapping(value="sExchange.action",method=RequestMethod.GET)
	public String sExchange(){
		
		
			return "admin/admin-addstock";
			
		
	}
	
	
	
	
	
	@RequestMapping(value="deletestock.action",method=RequestMethod.GET)
	private String deletestock(Integer sid,HttpServletRequest request,Model model){
		
		
		
		boolean flag=stockService.deletestocks(sid);
		
		if(flag){
			return "redirect:findAllexpends.action";
		}
		
		return "error";
		
	}
	
	
	
	
	@RequestMapping(value="findstockByid.action",method=RequestMethod.GET)
	private String findstockByid(Integer sid,Model model){

		
		Stock stock=stockService.findstocksbyid(sid);
		model.addAttribute("stock", stock);
		return "admin/admin-stockinfo";

}
	
	
	
	@RequestMapping(value="findTotal.action",method=RequestMethod.GET)
	public String findTotal(){
		
		
			return "admin/admin-total";
			
		
	}
	@RequestMapping(value="year.action")
    @ResponseBody
	public String year(){
		String data = "";
		List<TotalType> list = stockService.year();
		List<TotalType> list1 = stockService.yearout();
		for (int i = 0; i < list.size(); i++) {
			if(i==list.size()-1){
				data+=list.get(i).getScount()+"";
			}else{
				
				data+=list.get(i).getScount()+",";
			}
			
		}
		data+="|";
		for (int i = 0; i < list.size(); i++) {
			if(i==list1.size()-1){
				data+=list1.get(i).getScount()+"";
			}else{
				
				data+=list1.get(i).getScount()+",";
			}
			
		}
		System.out.println(data);
		return data;
		
	}
	
	
	
	
	
	
	
	
	
	


}
