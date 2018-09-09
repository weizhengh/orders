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
import org.springframework.web.multipart.MultipartFile;

import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;
import com.ambow.orderf.service.DrinkService;
import com.ambow.orderf.service.DrinkSoftService;

@Controller
@RequestMapping("/drink")
public class DrinkController {
	@Autowired
	private DrinkService drinkService;
	@Autowired
	private DrinkSoftService drinkSoftService;

	/**
	 * 全查酒水
	 * 
	 * @return
	 */
	@RequestMapping("/selectAll")
	public String selectAll(Model mode) {
		List<Drink> list = drinkService.selectAll();
		List<DrinkSoft> drinkSofts = drinkSoftService.selectAll();
		mode.addAttribute("drinkSoft", drinkSofts);
		mode.addAttribute("list", list);

		return "admin/admin-drink";
	}

	/**
	 * 添加酒水
	 * 
	 * @param drink
	 * @param multipartFile
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/insertSelective", method = RequestMethod.POST)
	public String addDrink(Drink drink, MultipartFile multipartFile,
			HttpServletRequest request) throws IOException {
		System.out.println(drink.toString());

		System.out.println(multipartFile + "-------------------------------");
		// 获取文件名字

		String originalFilename = multipartFile.getOriginalFilename();
		System.out.println(originalFilename + "++++++++++++++++++++");

		String houFilename = originalFilename.substring(originalFilename
				.lastIndexOf("."));
		// getOriginalFilename();

		System.out.println(originalFilename + "++++++++++++++++++++");
		System.out.println(houFilename + "++-------********************");
		// 获取不会重复的毫秒数
		long l = System.currentTimeMillis();
		// 新名字
		String newName = l + originalFilename;
		System.out.println(newName + "----------++++++");
		// 图片的输入流名字
		InputStream inputStream = multipartFile.getInputStream();
		// 存在于项目中的路径
		String wlPath = "F:\\cc\\orders\\orderf\\src\\main\\webapp\\upload\\"
				+ newName;
		// 逻辑路径，存到数据库中
		String ljPath = "upload/" + newName;
		// 临时路径
		String realPath = request.getSession().getServletContext()
				.getRealPath("/");
		String lsPath = realPath + "//upload//" + newName;

		// 如果没有那个文件夹就创建
		File wlFile = new File(
				"F:\\cc\\orders\\orderf\\src\\main\\webapp\\upload");
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
		System.out.println(wlPath);
		System.out.println(ljPath);
		System.out.println(lsPath);

		drink.setDrink_picture(ljPath);
		drinkService.insertSelective(drink);

		return "redirect:/drink/selectAll.action";

	}

	/**
	 * 分类查询
	 * 
	 * @param mode
	 * @param drink_soft_id
	 * @return
	 */
	@RequestMapping("/selectBySoftId")
	public String selectBySoftId(Model mode, Integer drink_soft_id) {
		
		List<Drink> list = drinkService.selectBySoftId(drink_soft_id);
		List<DrinkSoft> drinkSofts = drinkSoftService.selectAll();
		System.out.println(list.toString());
		mode.addAttribute("drinkSoft", drinkSofts);
		mode.addAttribute("list", list);

		return "admin/admin-drink";
	}

	/**
	 * 到新增页面
	 * 
	 * @param model
	 * @return
	 */

	@RequestMapping(value = "/toInsert")
	public String toInsert(Model model) {
		List<DrinkSoft> drinkSoftList = drinkSoftService.selectAll();
		model.addAttribute("drinksoft", drinkSoftList);
		model.addAttribute("status", "insert");
		return "admin/admin-adddrink";
	}

	/**
	 * 酒水修改
	 * 
	 * @return
	 */

	@RequestMapping(value = "/updateSelective", method = RequestMethod.POST)
	public String updateDrink(Drink drink, MultipartFile multipartFile,
			HttpServletRequest request) throws IOException {
		System.out.println(drink.getDrink_picture()+"aaaaaaaaaaaaaaa");
		System.out.println(multipartFile.getOriginalFilename()+1211);
		if(multipartFile.getOriginalFilename()!=""){
		
		System.out.println(multipartFile + "-------------------------------");
		// 获取文件名字

		String originalFilename = multipartFile.getOriginalFilename();
		System.out.println(originalFilename + "++++++++++++++++++++");

		String houFilename = originalFilename.substring(originalFilename
				.lastIndexOf("."));
		// getOriginalFilename();

		System.out.println(originalFilename + "++++++++++++++++++++");
		System.out.println(houFilename + "++-------********************");
		// 获取不会重复的毫秒数
		long l = System.currentTimeMillis();
		// 新名字
		String newName = l + houFilename;
		System.out.println(newName + "----------++++++");
		// 图片的输入流名字
		InputStream inputStream = multipartFile.getInputStream();
		// 存在于项目中的路径
		String wlPath = "F:\\cc\\orders\\orderf\\src\\main\\webapp\\upload\\"
				+ newName;
		// 逻辑路径，存到数据库中
		String ljPath = "upload/" + newName;
		// 临时路径
		String realPath = request.getSession().getServletContext()
				.getRealPath("/");
		String lsPath = realPath + "//upload//" + newName;

		// 如果没有那个文件夹就创建
		File wlFile = new File(
				"F:\\cc\\orders\\orderf\\src\\main\\webapp\\upload");
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
		System.out.println(wlPath);
		System.out.println(ljPath);
		System.out.println(lsPath);

		drink.setDrink_picture(ljPath);
		
	}
		drinkService.updateSelective(drink);

		return "redirect:/drink/selectAll.action";

	}

	/**
	 * 删除酒水
	 * 
	 * @return
	 */

	@RequestMapping("/deleteByPrimaryKey")
	public String deleteByPrimaryKey(Integer drink_id) {

		drinkService.deleteByPrimaryKey(drink_id);
		return "redirect:/drink/selectAll.action";
	}

	/**
	 * 查询根据酒水ID酒水
	 * 
	 * @return
	 */
	@RequestMapping("/selectByPrimaryKey")
	public String selectByPrimaryKey(Model model, Integer drink_id) {

		Drink drink = drinkService.selectByPrimaryKey(drink_id);

		List<DrinkSoft> drinkSofts = drinkSoftService.selectAll();
		model.addAttribute("drinksoft", drinkSofts);
		model.addAttribute("drink", drink);
		model.addAttribute("status", "update");

		return "admin/admin-adddrink";
	}
	/**
	 * 模糊查询
	 * @param model
	 * @param drink_id
	 * @return
	 */
	@RequestMapping("/selectByLike")
	public String selectByLike(Model model, String blur) {
System.out.println(blur);
		List<Drink> list=drinkService.selectByLike(blur);
		List<DrinkSoft> drinkSofts = drinkSoftService.selectAll();
		System.out.println(list.toString());
		model.addAttribute("list", list);
		model.addAttribute("drinksoft", drinkSofts);

		return "admin/admin-drink";
	}

}
