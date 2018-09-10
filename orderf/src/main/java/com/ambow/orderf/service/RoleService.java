package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Role;

public interface RoleService {

	/**
	 * 查询所有角色
	 * @return 存放所有角色信息的集合
	 * */
	public List<Role> findAllRole();
	
	/**
	 * 添加角色
	 * @param roleName 角色名称
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean addRole(String roleName);
	
	/**
	 * 删除角色
	 * @param roleId 角色ID
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean delRole(Integer roleId);
	
	/**
	 * 修改角色名称
	 * @param role 存放角色信息的对象
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean updateRole(Role role);
}
