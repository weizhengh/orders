package com.ambow.orderf.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ambow.orderf.pojo.Menu;
import com.ambow.orderf.pojo.Power;
import com.ambow.orderf.pojo.Role;
import com.ambow.orderf.service.MenuService;
import com.ambow.orderf.service.PowerService;
import com.ambow.orderf.service.RoleService;

@Controller
public class RoleController {

	@Autowired RoleService roleService;
	@Autowired MenuService menuService;
	@Autowired PowerService powerService;
	
	/**
	 * 查询全部角色
	 * @param model
	 * */
	@RequestMapping(value="/role/findAllRole.action",method=RequestMethod.GET)
	public String findAllRole(Model model){
		
		List<Role> list=roleService.findAllRole();
		model.addAttribute("roleList", list);
		return "admin/admin-role";
	}
	
	/**
	 * 添加角色
	 * @param roleName 角色名称
	 * */
	@RequestMapping(value="/role/addRole.action",method=RequestMethod.POST)
	@ResponseBody
	public String addRole(String roleName){

		if(roleService.addRole(roleName)){
			return "ok";
		}else{
			return "error";
		}
	}
	
	/**
	 * 删除角色
	 * @param roleId 角色ID
	 * */
	@RequestMapping(value="/role/delRole.action",method=RequestMethod.GET)
	@ResponseBody
	public String delRole(Integer roleId){

		if(roleService.delRole(roleId)){
			return "ok";
		}else{
			return "error";
		}
	}
	
	/**
	 * 修改角色信息
	 * @param role 存放角色信息的对象
	 * */
	@RequestMapping(value="/role/updateRole.action",method=RequestMethod.POST)
	public String updateRole(Role role){

		if(roleService.updateRole(role)){
			return "redirect:/role/findAllRole.action";
		}else{
			return "error";
		}
	}
	
	/**
	 * 跳转修改页面
	 * @param role 存放角色信息的对象
	 * */
	@RequestMapping(value="/role/toUpdate.action")
	public String toUpdate(Model model,Role role){
		
		model.addAttribute("role", role);
		return "admin/update-role";
	}
	
	/**
	 * 根据角色ID查找权限
	 * @param roleId 角色ID
	 * @param Model 
	 * */
	@RequestMapping(value="role/findPowerByRole.action")
	public String findPowerByRole(Integer roleId,Model model,HttpSession session){
		
		if(roleId==null){
			roleId=(Integer) session.getAttribute("roleId");
		}
		List<Menu> menu=menuService.findByRoleId(roleId);
		model.addAttribute("menu", menu);
		model.addAttribute("roleId", roleId);
		session.setAttribute("roleId", roleId);
		return "admin/admin-menuhave";
	}
	
	/**
	 * 查看角色未添加的权限
	 * @param roleId 角色ID
	 * @param Model
	 * */
	@RequestMapping(value="/role/findPower.action")
	public String findPower(Model model,Integer roleId,HttpSession session){
		
		List<Menu> menu=menuService.findByRoleId(roleId);
		List<Power> power=powerService.findAll();
		for(int i=0;i<power.size();i++){
			for(int j=0;j<menu.size();j++){
				if(power.get(i).getPower_id()==menu.get(j).getPower().getPower_id()){
					power.remove(i);
				}
			}
		}
		model.addAttribute("powerList", power);
		session.setAttribute("roleId", roleId);
		return "admin/role-addpower";
	}
	
	/**
	 * 为权限添加角色
	 * @param roleId 角色ID
	 * @param powerId 权限ID
	 * */
	@RequestMapping(value="role/addPwerToRole.action",method=RequestMethod.GET)
	public String addPowerToRole(Integer roleId, Integer powerId){

		Menu menu=new Menu();
		Power power=new Power();
		Role role=new Role();
		role.setRole_id(roleId);
		power.setPower_id(powerId);
		menu.setPower(power);
		menu.setRole(role);
		if(menuService.addMenu(menu)){
			return "redirect:findPower.action?roleId="+roleId;
		}else{
			return "error";
		}
		
	}
	
	/**
	 * 移除角色权限
	 * @menuId 菜单表ID
	 * */
	@RequestMapping(value="role/delMenu.action",method=RequestMethod.GET)
	public String delMenu(Integer menuId){
		
		if(menuService.delMenu(menuId)){
			return "redirect:findPowerByRole.action";
		}else{
			
			return "error";
		}
	}
}
