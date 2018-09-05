package com.ambow.orderf.pojo;

/**
 * @author H
 *
 */
@SuppressWarnings("serial")
public class CarItem implements java.io.Serializable {

	private Integer car_item_id; 
	private Car car_id;  
	private Food car_food_id;
	private Drink car_drink_id;
	private Integer num;
	
	public CarItem() {
	}

	public Integer getCar_item_id() {
		return car_item_id;
	}

	public void setCar_item_id(Integer car_item_id) {
		this.car_item_id = car_item_id;
	}

	public Car getCar_id() {
		return car_id;
	}

	public void setCar_id(Car car_id) {
		this.car_id = car_id;
	}

	public Food getCar_food_id() {
		return car_food_id;
	}

	public void setCar_food_id(Food car_food_id) {
		this.car_food_id = car_food_id;
	}

	public Drink getCar_drink_id() {
		return car_drink_id;
	}

	public void setCar_drink_id(Drink car_drink_id) {
		this.car_drink_id = car_drink_id;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	@Override
	public String toString() {
		return "CarItem [car_item_id=" + car_item_id + ", car_id=" + car_id
				+ ", car_food_id=" + car_food_id + ", car_drink_id="
				+ car_drink_id + ", num=" + num + "]";
	}
	
}
