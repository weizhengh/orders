package com.ambow.orderf.pojo;


import java.util.HashSet;
import java.util.Set;

/**
 * DrinkSoft
 */
@SuppressWarnings("serial")
public class DrinkSoft implements java.io.Serializable {

	private Integer drink_soft_id; //酒水分类Id
	private String drink_soft_name;  //酒水类型名称
	private Set<Drink> drinks = new HashSet<Drink>(0);

	public DrinkSoft() {
	}

	public Integer getDrink_soft_id() {
		return drink_soft_id;
	}

	public void setDrink_soft_id(Integer drink_soft_id) {
		this.drink_soft_id = drink_soft_id;
	}

	public String getDrink_soft_name() {
		return drink_soft_name;
	}

	public void setDrink_soft_name(String drink_soft_name) {
		this.drink_soft_name = drink_soft_name;
	}

	public Set<Drink> getDrinks() {
		return drinks;
	}

	public void setDrinks(Set<Drink> drinks) {
		this.drinks = drinks;
	}

	@Override
	public String toString() {
		return "DrinkSoft [drink_soft_id=" + drink_soft_id
				+ ", drink_soft_name=" + drink_soft_name + ", drinks=" + drinks
				+ "]";
	}
	
}
