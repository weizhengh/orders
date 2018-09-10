package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.Role;

public interface RoleDao {

	/**
	 * 查询所有角色
	 * @return 查询到的所有角色的集合
	 * */
	List<Role> findAllRole();

	/**
	 * 添加角色
	 * @param roleName 角色名称
	 * */
	void addRole(String roleName);

	/**
	 * 删除角色
	 * @param 角色ID
	 * */
	void delRole(Integer roleId);

	/**
	 * 修改角色
	 * @param 存放角色信息的对象
	 * */
	void updateRole(Role role);
}