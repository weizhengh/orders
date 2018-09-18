package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Power;

public interface PowerService {

	/**
	 * 查询所有权限
	 * @return 存放所有权限的集合
	 * */
	public List<Power> findAll();
	
	/**
	 * 添加权限
	 * @param power 存放权限信息的集合
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean addPower(Power power);
	
	/**
	 * 修改权限
	 * @param power 存放权限信息的集合
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean updatePower(Power power);
	
	/**
	 * 删除权限
	 * @param powerId 权限ID
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	public boolean delPower(Integer powerId);
	
	/**
	 * 根据ID查找权限信息
	 * @param powerId 权限ID
	 * @return power 查找出的信息
	 * */
	public Power findByPowerId(Integer powerId);
}
