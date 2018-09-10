package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.EmpRoleMiddle;

public interface EmpRoleMiddleService {
	
	/**
	 * 根据员工ID查询角色
	 * @param empId 员工ID
	 * @return 查询到的集合
	 * */
	public List<EmpRoleMiddle> findRoleByEmpId(Integer empId);
	
	/**
	 * 根据角色ID查询用户
	 * @param empId 员工ID
	 * @return 查询到的集合
	 * */
	public List<EmpRoleMiddle> findEmpByRoleId(Integer roleId);


}
