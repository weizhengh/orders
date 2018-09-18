package com.ambow.orderf.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.ambow.orderf.pojo.Evalute;
import com.ambow.orderf.pojo.Food;
import com.ambow.orderf.pojo.Order;
import com.ambow.orderf.pojo.OrderItem;
import com.ambow.orderf.service.EvaluteService;
import com.ambow.orderf.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/evalute")
public class EvaluteController {
	@Autowired
	private EvaluteService evaluteService;
	@Autowired
	private OrderService orderService;
	@ResponseBody
	@RequestMapping(value="/inserteva",method={ RequestMethod.POST, RequestMethod.PUT },consumes="multipart/*")
	public JSONObject insert(Evalute evalute,@RequestParam(value="multipartFile",required=true) MultipartFile multipartFile,Integer ass, HttpServletResponse resp,HttpServletRequest request) throws IOException{
		Integer evaluteCount =evaluteService.selectOrderById(evalute.getOrder().getOrder_id());
		JSONObject jobj = new JSONObject();
		String ljPath = "";
		if(evaluteCount==0){
			evalute.setEva_time(new Date());
			String originalFilename = multipartFile.getOriginalFilename();
			String houFilename = originalFilename.substring(originalFilename
					.lastIndexOf("."));
			// 获取不会重复的毫秒数
			long l = System.currentTimeMillis();
			// 新名字
			String newName = l + originalFilename;
			// 图片的输入流名字
			InputStream inputStream = multipartFile.getInputStream();
			// 存在于项目中的路径
			String wlPath = "C:\\Users\\H\\git\\orders\\orderf\\src\\main\\webapp\\upload\\"
					+ newName;
			// 逻辑路径，存到数据库中
			ljPath = "upload/" + newName;
			// 临时路径
			String realPath = request.getSession().getServletContext()
					.getRealPath("/");
			String lsPath = realPath + "//upload//" + newName;

			// 如果没有那个文件夹就创建
			File wlFile = new File(
					"C:\\Users\\H\\git\\orders\\orderf\\src\\main\\webapp\\upload");
			if (!wlFile.exists()) {
				wlFile.mkdir();
			}
			File isFile = new File(realPath + "\\upload\\");
			if (!isFile.exists()) {
				isFile.mkdir();
			}
			// 不为空时
			if (!multipartFile.isEmpty()) {
				// 输出流 写物理路径
				FileOutputStream wlStream = new FileOutputStream(wlPath);
				// 输出流 写临时路径
				FileOutputStream lsStream = new FileOutputStream(lsPath);
				int len = 0;
				while ((len = inputStream.read()) != -1) {
					wlStream.write(len);// 写入
					lsStream.write(len);

				}
				wlStream.flush();
				lsStream.flush();

				wlStream.close();
				lsStream.close();

				inputStream.close();

			}
			evalute.setImg(ljPath);
			resp.setContentType("text/json");
			System.out.println(evalute.toString()+"---");
			evaluteService.insertEvalute(evalute);
			jobj.put("state", "OK");
			return jobj;
		}else{
			jobj.put("state", "FLASE");
			return jobj;
		}
	}
	
	@RequestMapping(value="/selectAll")
	public String selectAll(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Evalute evalute,Model model){
		PageHelper.startPage(pn,5);
		List<Evalute> evaluteList = evaluteService.selectAll(evalute);
		PageInfo<Evalute> pageInfo = new PageInfo<Evalute>(evaluteList,5);
		evaluteService.selectAll(evalute);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/admin-evalute";
	}
	@RequestMapping(value="/evalute")
	public String evalute(Integer order_id,Model model){
		Food food1 = new Food();
		Food food2 = new Food();
		Food food3 = new Food();
		food1.setFood_name("牛排饭");
		food2.setFood_name("鸡柳饭");
		food3.setFood_name("咖喱饭");
		Order order = new Order();
		order.setOrder_id("1");
		Set<OrderItem> items = order.getOrder_items();
		OrderItem orderItem1 = new OrderItem();
		orderItem1.setOrder_item_id(1);
		orderItem1.setFood(food1);
		OrderItem orderItem2 = new OrderItem();
		orderItem2.setOrder_item_id(2);
		orderItem2.setFood(food2);
		OrderItem orderItem3 = new OrderItem();
		orderItem3.setOrder_item_id(3);
		orderItem3.setFood(food3);
		items.add(orderItem1);
		items.add(orderItem2);
		items.add(orderItem3);
		order.setOrder_items(items);
		for (OrderItem orderItem : items) {
			System.out.println(orderItem.toString());
		}
		model.addAttribute("order", order);
		return "order/evalute";
	}
	@RequestMapping(value="/selectAllqian")
	public String selectAllQian(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Model model){
		PageHelper.startPage(pn,5);
		List<Evalute> evaluteList = evaluteService.selectAll(null);
		PageInfo<Evalute> pageInfo = new PageInfo<Evalute>(evaluteList,5);
		for (Evalute evalute : evaluteList) {
			System.out.println(evalute.toString());
		}
		model.addAttribute("pageInfo", pageInfo);
		return "order/showevalute";
	}
	@RequestMapping(value="/selectAllByfood")
	public String selectAllByfood(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Model model){
		PageHelper.startPage(pn,5);
		String eva_content ="咖喱饭";
		Evalute eva = new Evalute();
		eva.setEva_content(eva_content);
		List<Evalute> evaluteList = evaluteService.selectAll(eva);
		for (Evalute evalute : evaluteList) {
			System.out.println(evalute.toString()+"1234-------------");
		}
		PageInfo<Evalute> pageInfo = new PageInfo<Evalute>(evaluteList,5);
		for (Evalute evalute : evaluteList) {
			System.out.println(evalute.toString());
		}
		model.addAttribute("pageInfo", pageInfo);
		return "order/showevalute";
	}
	@ResponseBody
	@RequestMapping(value="/moreevalute")
	public JSONObject MoreEvalute(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Model model){
		PageHelper.startPage(pn,5);
		List<Evalute> evaluteList = evaluteService.selectAll(null);
		PageInfo<Evalute> pageInfo = new PageInfo<Evalute>(evaluteList,5);
		for (Evalute evalute : evaluteList) {
			System.out.println(evalute.toString());
		}
		model.addAttribute("pageInfo", pageInfo);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("pageInfo", pageInfo);
		System.out.println(jsonObject);
		return jsonObject;
	}
	@RequestMapping(value="/delete")
	public String delete(Integer eva_id){
		evaluteService.deleteEvaluteById(eva_id);
		return "redirect:selectAll.action";
	}
}


