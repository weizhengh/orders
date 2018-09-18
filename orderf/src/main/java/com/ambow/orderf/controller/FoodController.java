package com.ambow.orderf.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ambow.orderf.pojo.Food;
import com.ambow.orderf.pojo.FoodSoft;
import com.ambow.orderf.service.FoodService;
import com.ambow.orderf.service.FoodSoftService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@RequestMapping("")
@Controller
public class FoodController {
	
	@Autowired
	private FoodService foodService;
	@Autowired 
	private FoodSoftService foodSoftService;
	
	
	@RequestMapping(value="findAllfood.action",method=RequestMethod.GET)
	public String findAllfood(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Food food,Model model){
		PageHelper.startPage(pn,5);
		List<Food> list=foodService.findAllfood();
		
		
		List<FoodSoft> lista=foodSoftService.findAllfoodsoft();
		model.addAttribute("foodsoft", lista);
		PageInfo<Food> pageInfo = new PageInfo<Food>(list,5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/admin-food";
		
	}
	
	
	@RequestMapping(value="deletefood.action",method=RequestMethod.GET)
	private String deletefood(Integer fid,HttpServletRequest request,Model model){
		
		
		
		boolean flag=foodService.deletefood(fid);
		
		if(flag){
			return "redirect:/findAllfood.action";
		}
		
		return "error";
		
	}
	
	
	/*新增菜品*/
	@RequestMapping(value="addFood.action",method=RequestMethod.POST)
	public String addFood(Food food,HttpServletRequest request,MultipartFile multipartFile)throws IOException{
		
		
		String originalFilename = multipartFile.getOriginalFilename();
        System.out.println(originalFilename + "++++++++++++++++++++");
        
        String houFilename = originalFilename.substring(originalFilename.lastIndexOf(".")); 
        		//getOriginalFilename();
        
       
        System.out.println(originalFilename + "++++++++++++++++++++");
        System.out.println(houFilename + "++-------********************");
        //获取不会重复的毫秒数
        long l = System.currentTimeMillis();
        //新名字
        String newName = l +originalFilename;
        System.out.println(newName + "----------++++++");
        //图片的输入流名字
        InputStream inputStream = multipartFile.getInputStream();
        //存在于项目中的路径
        //String wlPath = "F:\\cc\\orders\\orderf\\src\\main\\webapp\\upload\\" + newName;
        //逻辑路径，存到数据库中
        String ljPath = "upload/" + newName;
        //临时路径
        String realPath = request.getSession().getServletContext().getRealPath("/");
        String lsPath = realPath + "//upload//" + newName;

        //如果没有那个文件夹就创建
        /*File wlFile = new File("D:\\cc\\orders\\orderf\\src\\main\\webapp\\upload");
        if (!wlFile.exists()) {
            wlFile.mkdir();
        }*/
        File isFile = new File(realPath + "\\upload\\");
        if (!isFile.exists()) {
            isFile.mkdir();
        }
        //不为空时
        if (!multipartFile.isEmpty()) {
            //输出流 写物理路径
            //FileOutputStream wlStream = new FileOutputStream(wlPath);
            //输出流 写临时路径
            FileOutputStream lsStream = new FileOutputStream(lsPath);
            int len = 0;
            while ((len = inputStream.read()) != -1) {
               // wlStream.write(len);//写入
                lsStream.write(len);

            }
           // wlStream.flush();
            lsStream.flush();

            //wlStream.close();
            lsStream.close();

            inputStream.close();

        }
        //System.out.println(wlPath);
        System.out.println(ljPath);
        System.out.println(lsPath);
        
       food.setFood_picture(ljPath);;
		
		
		
		
		
//		Food food=new Food();
		//System.out.println(food.toString());
		boolean flag=foodService.addFood(food);
		//System.out.println(request.getParameter("food_name"));
		if(flag){
			
			return "redirect:findAllfood.action";
		}
		
		
		return "error";
		
		
		
		
	}
	
	
	@RequestMapping(value="findfoodByid.action",method=RequestMethod.GET)
	private String findfoodByid(Integer fid,Model model){

		Food food=foodService.findfoodByid(fid);
		System.out.println(food.toString());
		model.addAttribute("foods", food);
		List<FoodSoft> list=foodSoftService.findAllfoodsoft();
		model.addAttribute("foodsoft", list);
		
		return "admin/admin-updatefood";

}
	
	
	@RequestMapping(value = "updateFood.action", method = RequestMethod.POST)
	public String updatefood(Food food,MultipartFile multipartFile,HttpServletRequest request) throws IOException {
		

		
		String originalFilename = multipartFile.getOriginalFilename();
        System.out.println(originalFilename + "++++++++++++++++++++");
        
        String houFilename = originalFilename.substring(originalFilename.lastIndexOf(".")); 
        		//getOriginalFilename();
        
       
        System.out.println(originalFilename + "++++++++++++++++++++");
        System.out.println(houFilename + "++-------********************");
        //获取不会重复的毫秒数
        long l = System.currentTimeMillis();
        //新名字
        String newName = l +houFilename;
        System.out.println(newName + "----------++++++");
        //图片的输入流名字
        InputStream inputStream = multipartFile.getInputStream();
        //存在于项目中的路径
       // String wlPath = "F:\\cc\\orders\\orderf\\src\\main\\webapp\\upload\\" + newName;
        //逻辑路径，存到数据库中
        String ljPath = "upload/" + newName;
        //临时路径
        String realPath = request.getSession().getServletContext().getRealPath("/");
        String lsPath = realPath + "//upload//" + newName;

        //如果没有那个文件夹就创建
       /* File wlFile = new File("F:\\cc\\orders\\orderf\\src\\main\\webapp\\upload");
        if (!wlFile.exists()) {
            wlFile.mkdir();
        }*/
        File isFile = new File(realPath + "\\upload\\");
        if (!isFile.exists()) {
            isFile.mkdir();
        }
        //不为空时
        if (!multipartFile.isEmpty()) {
            //输出流 写物理路径
           // FileOutputStream wlStream = new FileOutputStream(wlPath);
            //输出流 写临时路径
            FileOutputStream lsStream = new FileOutputStream(lsPath);
            int len = 0;
            while ((len = inputStream.read()) != -1) {
                //wlStream.write(len);//写入
                lsStream.write(len);

            }
            //wlStream.flush();
            lsStream.flush();

            //wlStream.close();
            lsStream.close();

            inputStream.close();

        }
        //System.out.println(wlPath);
        System.out.println(ljPath);
        System.out.println(lsPath);
        
        food.setFood_picture(ljPath);
		
		

		Integer back=foodService.updatefood(food);
		System.out.println(back);
		if (back > 0) {
			return "redirect:findAllfood.action";
		} else {
			return "error";

		}
	}
	
	
	@RequestMapping(value="findmhfood.action",method=RequestMethod.GET)
	public String findmhfood(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Food food,Model model){
		System.out.println("foodname="+food.getFood_name());
		PageHelper.startPage(pn,2);
		List<Food> lists=foodService.findmhfood(food);
		model.addAttribute("food", lists);
		PageInfo<Food> pageInfo = new PageInfo<Food>(lists,5);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("foodInfo", food);
		List<FoodSoft> lista=foodSoftService.findAllfoodsoft();
		model.addAttribute("foodsoft", lista);
		
		System.out.println("-----------"+lists);
		return "admin/admin-mhfood";
		
	}
	
	@RequestMapping(value="selectByfoodId")
	public String selectByfoodId(@RequestParam(required = false,defaultValue = "1",value = "pn")Integer pn,Model mode, Integer food_soft_id,Food food) {
		PageHelper.startPage(pn,5);
		List<Food> list = foodService.selectByfoodId(food_soft_id);
		PageInfo<Food> pageInfo = new PageInfo<Food>(list,5);
		mode.addAttribute("pageInfo", pageInfo);
		List<FoodSoft> foodSofts = foodSoftService.findAllfoodsoft();
		System.out.println(list.toString());
		mode.addAttribute("foodsoft", foodSofts);
		mode.addAttribute("food", list);
		mode.addAttribute("food_soft_id", food_soft_id);

		return "admin/admin-foodbyId";
	}
	
	@RequestMapping(value="findFoodName.action",method=RequestMethod.GET)
	@ResponseBody
	private String findFoodName(String food_name,Model model){
		
		
		Integer food=foodService.findFoodName(food_name);
		System.out.println(food);
		if(food!=null){
			
			return "error";
		}else{
			
			return "OK";
		}
		
		
		
	}
	
	

}
