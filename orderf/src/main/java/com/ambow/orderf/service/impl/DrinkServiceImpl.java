package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ambow.orderf.dao.DrinkDao;
import com.ambow.orderf.dao.DrinkSoftDao;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;
import com.ambow.orderf.service.DrinkService;
import com.ambow.orderf.service.DrinkSoftService;

@Service("DrinkService")
public class DrinkServiceImpl implements DrinkService {
	@Autowired
	private DrinkDao drinkDao;

	/**
	 * 全查酒水
	 */
	public List<Drink> selectAll() {
		
		List<Drink> list = drinkDao.selectAll();

		
		
		return drinkDao.selectAll();
	}

	/**
	 * 添加酒水
	 */
	public int insertSelective(Drink drink) {

		return drinkDao.insertSelective(drink);
	}

	/**
	 * 修改酒水
	 */
	public int updateSelective(Drink drink) {

		return drinkDao.updateSelective(drink);
	}

	/**
	 * 删除酒水
	 */

	public int deleteByPrimaryKey(Integer drink_id) {

		return drinkDao.deleteByPrimaryKey(drink_id);
	}

	/**
	 * 单查酒水
	 */
	public Drink selectByPrimaryKey(Integer drink_id) {

		return drinkDao.selectByPrimaryKey(drink_id);
	}

	/**
	 * 根据酒水类别查询
	 */

	public List<Drink> selectBySoftId(DrinkSoft drinkSoft) {

		return drinkDao.selectBySoftId(drinkSoft);
	}

}
