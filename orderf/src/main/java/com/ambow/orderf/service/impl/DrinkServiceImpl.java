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
	public List<Drink> selectDrink() {

	

		return drinkDao.selectDrink();
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

		List<Drink> list = drinkDao.selectBySoftId(drink_soft_id);
		
		return list;
	}

	/**
	 * 模糊查询
	 */
	public List<Drink> selectByLike(String blur) {
		
		return drinkDao.selectByLike(blur);
	}
	/**
	 * 查重
	 */

	public List<Drink> selectByDrinkName(String drink_name) {
	
		return drinkDao.selectByDrinkName(drink_name);
	}

}
