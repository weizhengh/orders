package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Menu;

public interface MenuService {

	/**
	 * 查询角色所拥有的权限
	 * @param roleId 角色ID
	 * @return 存储menu的集合
	 * */
	public List<Menu> findByRoleId(Integer roleId);
	
	/**
	 * 为角色添加权限
	 * @param menu 存放要添加的对象、
	 * @return 捕捉dao层方法的异常信息，有则返回false，没有返回true
	 * */
	public boolean addMenu(Menu menu);
	
	/**
	 * 移除角色的权限
	 * @param menuId 菜单表ID
	 * @return 捕捉dao层方法的异常信息，有则返回false，没有返回true
	 * */
	public boolean delMenu(Integer menuId);
}
