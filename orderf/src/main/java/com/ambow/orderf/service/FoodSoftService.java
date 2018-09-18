package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.FoodSoft;

public interface FoodSoftService {

	List<FoodSoft> findAllfoodsoft();
	
	boolean deletefoodsoft(Integer fsid);
	
	FoodSoft findfoodsoftByid(Integer fsid);
	
	Integer updatefoodsoft(Integer food_soft_id, String food_soft_name);
	
	boolean addfoodsoft(FoodSoft foodsoft);
	
	Integer findFoodsoftName(String food_soft_name);
	
}
