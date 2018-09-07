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
	 * ȫ���ˮ
	 */
	public List<Drink> selectAll() {
		
		List<Drink> list = drinkDao.selectAll();

		return drinkDao.selectAll();
	}

	/**
	 * ��Ӿ�ˮ
	 */
	public int insertSelective(Drink drink) {

		return drinkDao.insertSelective(drink);
	}

	/**
	 * �޸ľ�ˮ
	 */
	public int updateSelective(Drink drink) {

		return drinkDao.updateSelective(drink);
	}

	/**
	 * ɾ����ˮ
	 */

	public int deleteByPrimaryKey(Integer drink_id) {

		return drinkDao.deleteByPrimaryKey(drink_id);
	}

	/**
	 * �����ˮ
	 */
	public Drink selectByPrimaryKey(Integer drink_id) {

		return drinkDao.selectByPrimaryKey(drink_id);
	}

	/**
	 * ���ݾ�ˮ����ѯ
	 */

	public List<Drink> selectBySoftId(Integer drink_soft_id) {

		List<Drink> list= drinkDao.selectBySoftId(drink_soft_id);
		System.out.println(list.toString());
		return list;
	}

}
