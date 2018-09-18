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

	List<Drink> selectDrink();

	int insertSelective(Drink drink);  

	int updateSelective(Drink drink); 

	int deleteByPrimaryKey(Integer drink_id); 

	Drink selectByPrimaryKey(Integer drink_id); 

	List<Drink> selectBySoftId(Integer drink_soft_id); // 根据分类查询

	List<Drink> selectByDrinkName(String drink_name); // 查重

	List<Drink> selectByLike(String blur);// 模糊查询
}
