package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.Food;
import com.ambow.orderf.pojo.FoodSoft;

public interface FoodService {
	
	List<Food> findAllfood();
	
	boolean deletefood(Integer fid);
	
	boolean addFood(Food food);
	
	Food findfoodByid(Integer fid);
	
	Integer updatefood(Food food);
	
	List<Food> findmhfood(Food food);
	
	List<Food> selectByfoodId(Integer food_soft_id);
	
	Integer findFoodName(String food_name);

}
