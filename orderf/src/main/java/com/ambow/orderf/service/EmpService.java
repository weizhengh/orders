package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Emp;

/**
 * 用户管理Service层接口
 * */
public interface EmpService {
	/**
	 * 员工登录
	 * @param emp 存储管理员账号密码的对象.
	 * @return 根据账号密码从数据库中查找出的值.
	 * */
	public Emp loginEmp(Emp emp);
	
	/**
	 * 查询所有员工
	 * @return 封装所有员工信息的集合
	 * */
	public List<Emp> findAllEmp();
	
	/**
	 * 根据员工ID查询员工信息
	 * @param empId 员工ID
	 * @return 根据ID查询出的员工信息
	 * */
	public Emp findById(Integer empId);
	
	/**
	 * 根据员工ID删除员工
	 * @param empId 员工ID
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean deleteById(Integer empId);
	
	/**
	 * 添加员工
	 * @param emp 存放员工信息的对象
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean addEmp(Emp emp);
	
	/**
	 * 修改员工信息
	 * @param emp 存放要修改的员工信息
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean updateEmp(Emp emp);
}
