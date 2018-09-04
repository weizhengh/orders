package com.ambow.orderf.pojo;

// Generated

import java.util.HashSet;
import java.util.Set;

/**
 * FoodSoft
 */
@SuppressWarnings("serial")
public class FoodSoft implements java.io.Serializable {

	private Integer food_soft_id;
	private String food_soft_name;
	private Set<Food> foods = new HashSet<Food>(0);

	public FoodSoft() {
	}

	public Integer getFood_soft_id() {
		return food_soft_id;
	}

	public void setFood_soft_id(Integer food_soft_id) {
		this.food_soft_id = food_soft_id;
	}

	public String getFood_soft_name() {
		return food_soft_name;
	}

	public void setFood_soft_name(String food_soft_name) {
		this.food_soft_name = food_soft_name;
	}

	public Set<Food> getFoods() {
		return foods;
	}

	public void setFoods(Set<Food> foods) {
		this.foods = foods;
	}

	@Override
	public String toString() {
		return "FoodSoft [food_soft_id=" + food_soft_id + ", food_soft_name="
				+ food_soft_name + ", foods=" + foods + "]";
	}

	

}
