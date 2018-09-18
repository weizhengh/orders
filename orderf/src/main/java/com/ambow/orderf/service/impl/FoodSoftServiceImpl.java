package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ambow.orderf.dao.FoodSoftDao;
import com.ambow.orderf.pojo.FoodSoft;
import com.ambow.orderf.service.FoodSoftService;

@Service("foodSoftService")
public class FoodSoftServiceImpl implements FoodSoftService {
	
	@Autowired
	private FoodSoftDao foodSoftDao;

	public List<FoodSoft> findAllfoodsoft() {
		// TODO Auto-generated method stub
		return foodSoftDao.findAllfoodsoft();
	}

	public boolean deletefoodsoft(Integer fsid) {
		// TODO Auto-generated method stub
		int i=foodSoftDao.deletefoodsoft(fsid);
		if(i > 0){
			return true;
		}
		return false;
	}

	public FoodSoft findfoodsoftByid(Integer fsid) {
		// TODO Auto-generated method stub
		
		FoodSoft foodsoft=foodSoftDao.findfoodsoftByid(fsid);
		return foodsoft;
	}

	public Integer updatefoodsoft(Integer food_soft_id, String food_soft_name) {
		// TODO Auto-generated method stub
	   FoodSoft foodsoft = new FoodSoft();
	   foodsoft.setFood_soft_id(food_soft_id);
	   foodsoft.setFood_soft_name(food_soft_name);
	   
	  Integer back=foodSoftDao.updatefoodsoft(foodsoft);
		
		return back;
	}

	public boolean addfoodsoft(FoodSoft foodsoft) {
		// TODO Auto-generated method stub
		int i=foodSoftDao.addfoodsoft(foodsoft);
		if(i > 0){
			return true;
		}
		
		return false;
	}

	public Integer findFoodsoftName(String food_soft_name) {
		// TODO Auto-generated method stub
		return foodSoftDao.findFoodsoftName(food_soft_name);
	}

	

}
