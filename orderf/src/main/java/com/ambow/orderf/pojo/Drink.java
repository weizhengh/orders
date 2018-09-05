package com.ambow.orderf.pojo;


import java.util.HashSet;
import java.util.Set;

/**
 * Drink
 */
/**
 * @author H
 *
 */
@SuppressWarnings("serial")
public class Drink implements java.io.Serializable {

	private Integer drink_id; //酒水Id
	private DrinkSoft drink_soft;  //所属类型
	private String drink_name;  //酒水名称
	private Float drink_price;  //酒水价格
	
	private Set<OrderItem> order_items = new HashSet<OrderItem>(0);

	
	
	public Drink() {
	}

	public Integer getDrink_id() {
		return drink_id;
	}

	public void setDrink_id(Integer drink_id) {
		this.drink_id = drink_id;
	}

	public DrinkSoft getDrink_soft() {
		return drink_soft;
	}

	public void setDrink_soft(DrinkSoft drink_soft) {
		this.drink_soft = drink_soft;
	}

	public String getDrink_name() {
		return drink_name;
	}

	public void setDrink_name(String drink_name) {
		this.drink_name = drink_name;
	}

	public Float getDrink_price() {
		return drink_price;
	}

	public void setDrink_price(Float drink_price) {
		this.drink_price = drink_price;
	}

	public Set<OrderItem> getOrder_items() {
		return order_items;
	}

	public void setOrder_items(Set<OrderItem> order_items) {
		this.order_items = order_items;
	}

	@Override
	public String toString() {
		return "Drink [drink_id=" + drink_id + ", drink_soft=" + drink_soft
				+ ", drink_name=" + drink_name + ", drink_price=" + drink_price
				+ ", order_items=" + order_items + "]";
	}

	
}
