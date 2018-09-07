package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.Emp;

/**
 * 员工管理dao层接口
 * */
public interface EmpDao {

	/**
	 * 员工登录
	 * @param emp 存放员工账号和密码的实体
	 * @return 根据员工账户密码查询出的信息
	 * */
	Emp loginEmp(Emp emp);

	/**
	 * 查询所有员工
	 * @return 查询出的所有员工的信息
	 * */
	List<Emp> findAllEmp();

	/**
	 * 根据员工ID查询员工信息
	 * @param empId 员工ID
	 * @return 根据员工ID查询出的信息
	 * */
	Emp findById(Integer empId);

	/**
	 * 根据员工ID删除员工
	 * @param empId 员工ID
	 * */
	void deleteById(Integer empId);

	/**
	 * 添加员工
	 * @param emp 存放新增员工信息的实体
	 * */
	void addEmp(Emp emp);

	/**
	 * 修改员工信息
	 * @param emp 存放要修改的员工信息的实体
	 * */
	void updateEmp(Emp emp);

}
