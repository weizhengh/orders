package com.ambow.orderf.dao;


import java.util.List;

import com.ambow.orderf.pojo.Car;
import com.ambow.orderf.pojo.CarItem;

public interface CarDao {
	Integer addCar(Car car);

	Integer addCaritem(CarItem carItem);

	List<CarItem> findByCidOnFood(Integer cust_id);
	
	List<CarItem> findByCidOnDrink(Integer cust_id);

	Integer delById(Integer caritem_id);

	Integer delByOid(Integer car_id);

	Integer delByCid(Integer car_id);
	
	Integer updateByIds(Car car);

	Integer updateById(CarItem carItem);
}
