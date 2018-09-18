package com.ambow.orderf.dao;

import java.util.List;




import org.apache.ibatis.annotations.Param;

import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.DrinkSoft;


public interface DrinkDao {
	List<Drink> selectDrink();

	int insertSelective(Drink drink); 

	int updateSelective(Drink drink); 
	
	int deleteByPrimaryKey(Integer drink_id); 
	
	List<Drink> selectBySoftId(Integer drink_soft_id); 
	
	Drink selectByPrimaryKey(Integer drink_id); 
	List<Drink> selectByDrinkName(String drink_name); //查重
	
	List<Drink> selectByLike( @Param("blur") String blur);//模糊查询

}
