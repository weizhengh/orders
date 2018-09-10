package com.ambow.orderf.pojo;

/**
 * CarItem
 */
@SuppressWarnings("serial")
public class CarItem implements java.io.Serializable {

	private Integer car_item_id;
	private Drink drink;
	private Car car;
	private Food food;
	private Integer num;

	public Integer getCar_item_id() {
		return car_item_id;
	}

	public void setCar_item_id(Integer car_item_id) {
		this.car_item_id = car_item_id;
	}

	public Drink getDrink() {
		return drink;
	}

	public void setDrink(Drink drink) {
		this.drink = drink;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	@Override
	public String toString() {
		return "CarItem [car_item_id=" + car_item_id + ", drink=" + drink + ", car=" + car + ", food=" + food + ", num="
				+ num + "]";
	}

}
