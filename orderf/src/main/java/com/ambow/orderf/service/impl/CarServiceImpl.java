package com.ambow.orderf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ambow.orderf.dao.CarDao;
import com.ambow.orderf.pojo.Car;
import com.ambow.orderf.pojo.CarItem;
import com.ambow.orderf.pojo.Customer;
import com.ambow.orderf.pojo.Drink;
import com.ambow.orderf.pojo.Food;
import com.ambow.orderf.service.CarService;

@Service
@Transactional
public class CarServiceImpl implements CarService {
	@Autowired
	private CarDao carDao;

	public Integer addCar(float car_price, float car_priced, Customer customer, Integer food_id, Integer drink_id,
			Integer num) {
		Car car = new Car();
		car.setCar_price(car_price);
		car.setCar_priced(car_priced);
		car.setCustomer(customer);
		carDao.addCar(car);

		CarItem carItem = new CarItem();
		Food food = new Food();
		Drink drink = new Drink();

		food.setFood_id(food_id);
		drink.setDrink_id(drink_id);

		carItem.setCar(car);
		carItem.setFood(food);
		carItem.setDrink(drink);
		carItem.setNum(num);

		return carDao.addCaritem(carItem);
	}

	public List<CarItem> findByCidOnFood(Integer cust_id) {
		return carDao.findByCidOnFood(cust_id);
	}
	
	public List<CarItem> findByCidOnDrink(Integer cust_id) {
		return carDao.findByCidOnDrink(cust_id);
	}

	public Integer delById(Integer caritem_id) {
		return carDao.delById(caritem_id);
	}

	public Integer delByCid(Integer car_id) {
		carDao.delByOid(car_id);
		return carDao.delByCid(car_id);
	}
	
	public Integer updateByIds(Integer car_id,float car_price,float car_priced) {
		Car car= new Car();
		car.setCar_id(car_id);
		car.setCar_price(car_price);
		car.setCar_priced(car_priced);
		return carDao.updateByIds(car);
	}

	public Integer updateById(Integer car_item_id, Integer num) {
		CarItem carItem = new CarItem();
		carItem.setCar_item_id(car_item_id);
		if(num==0) {
			return delById(car_item_id);
		}else {
			carItem.setNum(num);
			return carDao.updateById(carItem);
		}
	}

}
