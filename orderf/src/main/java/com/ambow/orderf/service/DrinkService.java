package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;

/**
 * @author H
 *
 */
public interface DrinkService {

	List<Drink> selectAll();// 全查酒水

	int insertSelective(Drink drink); // 添加酒水

	int updateSelective(Drink drink); // 修改酒水

	int deleteByPrimaryKey(Integer drink_id); // 删除酒水
	
	Drink selectByPrimaryKey(Integer drink_id); //单查 酒水
	
	List<Drink> selectBySoftId(DrinkSoft drinkSoft); //根据酒水类别查询
}
