package com.ambow.orderf.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Car
 */
/**
 * @author H
 *
 */
@SuppressWarnings("serial")
public class Car implements java.io.Serializable {

	private Integer car_id;
	private Customer customer;
	private Float car_price;
	private Float car_priced;
	private Set<CarItem> car_items = new HashSet<CarItem>(0);

	public Integer getCar_id() {
		return car_id;
	}

	public void setCar_id(Integer car_id) {
		this.car_id = car_id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Float getCar_price() {
		return car_price;
	}

	public void setCar_price(Float car_price) {
		this.car_price = car_price;
	}

	public Float getCar_priced() {
		return car_priced;
	}

	public void setCar_priced(Float car_priced) {
		this.car_priced = car_priced;
	}

	public Set<CarItem> getCar_items() {
		return car_items;
	}

	public void setCar_items(Set<CarItem> car_items) {
		this.car_items = car_items;
	}

	@Override
	public String toString() {
		return "Car [car_id=" + car_id + ", customer=" + customer + ", car_price=" + car_price + ", car_priced="
				+ car_priced + ", car_items=" + car_items + "]";
	}

}
