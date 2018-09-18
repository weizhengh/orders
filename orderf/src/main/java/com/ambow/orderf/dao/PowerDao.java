package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.Power;

public interface PowerDao {

	/**
	 * 查询所有权限
	 * @return 存放所有权限的集合
	 * */
	List<Power> findAll();

	/**
	 * 添加权限
	 * @param power 存放权限信息的集合
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	void addPower(Power power);

	/**
	 * 修改权限
	 * @param power 存放权限信息的集合
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	void updatePower(Power power);

	/**
	 * 删除权限
	 * @param powerId 权限ID
	 * @return 捕捉dao层抛出的异常信息,有返回false,没有返回true
	 * */
	void delPower(Integer powerId);

	/**
	 * 根据ID查询权限信息
	 * @param powerId 权限ID
	 * @return power 存放权限信息的对象
	 * */
	Power findByPowerId(Integer powerId);

}
