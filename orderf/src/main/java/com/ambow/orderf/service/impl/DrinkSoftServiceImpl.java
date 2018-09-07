package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ambow.orderf.dao.DrinkDao;
import com.ambow.orderf.dao.DrinkSoftDao;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;
import com.ambow.orderf.service.DrinkSoftService;
@Service("DrinkSoftService")
public class DrinkSoftServiceImpl implements DrinkSoftService {
	@Autowired
	private DrinkSoftDao drinkSoftDao;
	@Autowired
	private DrinkDao drinkDao;

	/**
	 * ȫ���ˮ���
	 */
	public List<DrinkSoft> selectAll() {
	
		return drinkSoftDao.selectAll();
	}

	/**
	 * ��Ӿ�ˮ���
	 */
	public int insertSelective(DrinkSoft drinkSoft) {
	
		return drinkSoftDao.insertSelective(drinkSoft);
	}
	
	/**
	 * �޸ľ�ˮ���
	 */

	public int updateSelective(DrinkSoft drinkSoft) {
		
		return drinkSoftDao.updateSelective(drinkSoft);
	}

	/**
	 * 
	 */
	public DrinkSoft selectByPrimaryKey(Integer drink_soft_id) {
		
		return drinkSoftDao.selectByPrimaryKey(drink_soft_id);
	}

	public int deleteByPrimaryKey(Integer drink_soft_id) {
		
	
		List<Drink> list=drinkDao.selectBySoftId(drink_soft_id);
		System.out.println(list.toString());
		if(list.size()==0){
			drinkSoftDao.deleteByPrimaryKey(drink_soft_id);
		}else{
		return 1;
		}
		return 0;
	}
	
	
	
	
}
