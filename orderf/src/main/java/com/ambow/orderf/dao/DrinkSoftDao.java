package com.ambow.orderf.dao;

import java.util.List;



import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;

public interface DrinkSoftDao {
	List<DrinkSoft> selectAll();// 全查酒水类别

	int insertSelective(DrinkSoft drinkSoft); // 添加酒水类别

	int updateSelective(DrinkSoft drinkSoft); // 修改酒水类别
	
	int deleteByPrimaryKey(Integer drink_soft_id); //删除酒水类别
	
	DrinkSoft selectByPrimaryKey(Integer drink_soft_id); //单查 酒水类别

}
