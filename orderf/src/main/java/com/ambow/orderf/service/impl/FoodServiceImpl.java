package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ambow.orderf.dao.FoodDao;
import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.Food;
import com.ambow.orderf.pojo.FoodSoft;
import com.ambow.orderf.service.FoodService;

@Service("foodService")
public class FoodServiceImpl implements FoodService {

	@Autowired
	private FoodDao foodDao;
	
	
	public List<Food> findAllfood() {
		// TODO Auto-generated method stub
		return foodDao.findAllfood();
	}


	public boolean deletefood(Integer fid) {
		// TODO Auto-generated method stub
		int i=foodDao.deletefood(fid);
		if(i > 0){
			return true;
		}
		return false;
	}


	public boolean addFood(Food food) {
		// TODO Auto-generated method stub
		int i=foodDao.addFood(food);
		if(i > 0){
			return true;
		}
		
		return false;
	}


	public Food findfoodByid(Integer fid) {
		// TODO Auto-generated method stub
		
		Food food=foodDao.findfoodByid(fid);
		
		return food;
	}


	public Integer updatefood(Food food) {
		// TODO Auto-generated method stub
	
		  Integer back=foodDao.updatefood(food);
			
			return back;
	}


	public List<Food> findmhfood(Food food) {
		// TODO Auto-generated method stub
		return foodDao.findmhfood(food);
	}


	public List<Food> selectByfoodId(Integer food_soft_id) {
		// TODO Auto-generated method stub
		List<Food> list= foodDao.selectByfoodId(food_soft_id);
		System.out.println(list.toString());
		return list;
	}


	public Integer findFoodName(String food_name) {
		// TODO Auto-generated method stub
		return foodDao.findFoodName(food_name);
	}


	

	
	}


