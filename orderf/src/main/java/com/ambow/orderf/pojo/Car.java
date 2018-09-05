package com.ambow.orderf.pojo;


import java.util.HashSet;
import java.util.Set;

/**
 * @author H
 *
 */
@SuppressWarnings("serial")
public class Car implements java.io.Serializable {

	private Integer car_id; 
	private Float car_price;  
	private Float car_priced;
	private Customer car_cust_id;
	
	public Car() {
	}

	public Integer getCar_id() {
		return car_id;
	}

	public void setCar_id(Integer car_id) {
		this.car_id = car_id;
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

	public Customer getCar_cust_id() {
		return car_cust_id;
	}

	public void setCar_cust_id(Customer car_cust_id) {
		this.car_cust_id = car_cust_id;
	}

	@Override
	public String toString() {
		return "Car [car_id=" + car_id + ", car_price=" + car_price
				+ ", car_priced=" + car_priced + ", car_cust_id=" + car_cust_id
				+ "]";
	}
	
	
}
