package com.ambow.orderf.pojo;


import java.util.HashSet;
import java.util.Set;

/**
 * Food
 */
@SuppressWarnings("serial")
public class Food implements java.io.Serializable {

	private Integer food_id;
	private FoodSoft food_soft;
	private String food_picture;
	private String food_note;
	private String food_name;
	private Float food_pirce;
	private String food_img;
	private Set<OrderItem> order_items = new HashSet<OrderItem>(0);

	public Food() {
	}

	
	public String getFood_picture() {
		return food_picture;
	}


	public void setFood_picture(String food_picture) {
		this.food_picture = food_picture;
	}


	public String getFood_note() {
		return food_note;
	}


	public void setFood_note(String food_note) {
		this.food_note = food_note;
	}


	public Integer getFood_id() {
		return food_id;
	}

	public void setFood_id(Integer food_id) {
		this.food_id = food_id;
	}

	public FoodSoft getFood_soft() {
		return food_soft;
	}

	public void setFood_soft(FoodSoft food_soft) {
		this.food_soft = food_soft;
	}

	public String getFood_name() {
		return food_name;
	}

	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}

	public Float getFood_pirce() {
		return food_pirce;
	}

	public void setFood_pirce(Float food_pirce) {
		this.food_pirce = food_pirce;
	}

	public String getFood_img() {
		return food_img;
	}

	public void setFood_img(String food_img) {
		this.food_img = food_img;
	}

	public Set<OrderItem> getOrder_items() {
		return order_items;
	}

	public void setOrder_items(Set<OrderItem> order_items) {
		this.order_items = order_items;
	}

	@Override
	public String toString() {
		return "Food [food_id=" + food_id + ", food_soft=" + food_soft
				+ ", food_name=" + food_name + ", food_pirce=" + food_pirce
				+ ", food_img=" + food_img + ", order_items=" + order_items
				+ "]";
	}

	public Food(Integer food_id, FoodSoft food_soft, String food_name,
			Float food_pirce, String food_img, Set<OrderItem> order_items) {
		super();
		this.food_id = food_id;
		this.food_soft = food_soft;
		this.food_name = food_name;
		this.food_pirce = food_pirce;
		this.food_img = food_img;
		this.order_items = order_items;
	}

	

}
