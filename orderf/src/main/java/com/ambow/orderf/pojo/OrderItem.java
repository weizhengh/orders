package com.ambow.orderf.pojo;

/**
 * OrderItem
 */
@SuppressWarnings("serial")
public class OrderItem implements java.io.Serializable {

	private Integer order_item_id;
	private Drink drink;
	private Order order;
	private Food food;
	private Integer num;

	public OrderItem() {
	}

	public Integer getOrder_item_id() {
		return order_item_id;
	}

	public void setOrder_item_id(Integer order_item_id) {
		this.order_item_id = order_item_id;
	}

	public Drink getDrink() {
		return drink;
	}

	public void setDrink(Drink drink) {
		this.drink = drink;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
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
		return "OrderItem [order_item_id=" + order_item_id + ", drink=" + drink + ", order=" + order + ", food=" + food
				+ ", num=" + num + "]";
	}

}
