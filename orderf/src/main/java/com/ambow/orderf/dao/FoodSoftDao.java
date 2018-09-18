package com.ambow.orderf.dao;

import java.util.List;

import com.ambow.orderf.pojo.FoodSoft;

public interface FoodSoftDao {
	
	//查看所有菜品分类
	List<FoodSoft> findAllfoodsoft();
	
	Integer deletefoodsoft(Integer fsid);
	
	FoodSoft findfoodsoftByid(Integer fsid);
	
	Integer updatefoodsoft(FoodSoft foodsoft);
	
	Integer addfoodsoft(FoodSoft foodsoft);
	
	Integer findFoodsoftName(String food_soft_name);

}
