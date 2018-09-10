package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.EmpRoleMiddle;

public interface EmpRoleMiddleDao {

	/**
	 * 根据员工ID查询角色
	 * @param empId 员工ID
	 * @return 查询到的集合
	 * */
	List<EmpRoleMiddle> findRoleByEmpId(Integer emp_id);

	/**
	 * 根据角色ID查询用户
	 * @param empId 员工ID
	 * @return 查询到的集合
	 * */
	List<EmpRoleMiddle> findEmpByRoleId(Integer role_id);

}
