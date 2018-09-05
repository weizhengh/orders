package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.Customer;

/**
 * 顾客管理dao层接口
 * */
public interface CustomerDao {

	/**
	 * 顾客登录
	 * @param customer 存储顾客账号密码的对象.
	 * @return 根据账号密码从数据库中查找出的值.
	 * */
	Customer loginCustomer(Customer customer);

	/**
	 * 查询所有顾客
	 * @return 封装所有顾客信息的集合
	 * */
	List<Customer> findAllCustomer();

	/**
	 * 根据顾客ID查询顾客信息
	 * @param customerId 顾客ID
	 * @return 根据ID查询出的顾客信息
	 * */
	Customer findById(Integer customerId);

	/**
	 * 根据顾客ID删除顾客
	 * @param customerId 顾客ID
	 **
	 *				
	 */
	void deleteById(Integer cusromerId);

	/**
	 * 添加顾客
	 * @param customer 存放顾客信息的对象
	 * */
	void addCustomer(Customer customer);

	/**
	 * 修改顾客信息
	 * @param customer 存放要修改的顾客信息
	 * */
	void updateCustomer(Customer customer);

	/**
	 * 修改顾客积分
	 * @param customer 存放要修改的顾客信息，为ID与要添加的积分
	 * */
	void updateGrade(Customer customer);

}
