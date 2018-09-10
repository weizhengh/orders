package com.ambow.orderf.service;

import java.util.List;

import com.ambow.orderf.pojo.CarItem;
import com.ambow.orderf.pojo.Customer;

public interface CarService {
	Integer addCar(float car_price, float car_priced, Customer customer, Integer food_id, Integer drink_id,
			Integer num);

	List<CarItem> findByCidOnFood(Integer cust_id);

	List<CarItem> findByCidOnDrink(Integer cust_id);

	Integer delById(Integer caritem_id);

	Integer delByCid(Integer car_id);
	
	Integer updateByIds(Integer car_id,float car_price,float car_priced);

	Integer updateById(Integer caritem_id, Integer num);
}
