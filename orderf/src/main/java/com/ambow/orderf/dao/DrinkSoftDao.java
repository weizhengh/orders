package com.ambow.orderf.dao;

import java.util.List;



import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;

public interface DrinkSoftDao {
	List<DrinkSoft> selectAll(); 

	int insertSelective(DrinkSoft drinkSoft);  

	int updateSelective(DrinkSoft drinkSoft);  
	
	int deleteByPrimaryKey(Integer drink_soft_id); 
	DrinkSoft selectByPrimaryKey(Integer drink_soft_id); 
	List<DrinkSoft> selectByName(String drink_soft_name);//查重
	

}
