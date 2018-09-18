package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.Menu;

public interface MenuDao {

	/**
	 * 查询角色所拥有的权限
	 * @param roleId 角色ID
	 * @return 角色所拥有权限的集合
	 * */
	List<Menu> findByRoleId(Integer roleId);

	
	/**
	 * 为角色添加新的权限
	 * @param menu 将要添加的信息
	 * */
	void addMenu(Menu menu);

	/**
	 * 移除角色权限
	 * @param menuId 菜单ID
	 * */
	void delMenu(Integer menuId);

}
