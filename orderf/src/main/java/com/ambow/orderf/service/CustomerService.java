package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Customer;

/**
 * 顾客管理service层接口
 * */
public interface CustomerService {

	/**
	 * 顾客登录
	 * @param customer 存储顾客账号密码的对象.
	 * @return 根据账号密码从数据库中查找出的值.
	 * */
	public Customer loginCustomer(Customer customer);
	
	/**
	 * 查询所有顾客
	 * @param cust_name 用户名
	 * @return 封装所有顾客信息的集合
	 * */
	public List<Customer> findAllCustomer(String cust_name);
	
	/**
	 * 根据顾客ID查询顾客信息
	 * @param customerId 顾客ID
	 * @return 根据ID查询出的顾客信息
	 * */
	public Customer findById(Integer customerId);
	
	/**
	 * 根据顾客ID删除顾客
	 * @param customerId 顾客ID
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean deleteById(Integer cusromerId);
	
	/**
	 * 添加顾客
	 * @param customer 存放顾客信息的对象
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean addCustomer(Customer customer);
	
	/**
	 * 修改顾客信息
	 * @param customer 存放要修改的顾客信息
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean updateCustomer(Customer customer);
	
	/**
	 * 下单后修改顾客积分
	 * @param customer 存放要修改的顾客信息，为ID与要添加的积分
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean updateGrade(Customer customer);
}
