package com.ambow.orderf.pojo;


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Order
 */
/**
 * @author H
 *
 */
@SuppressWarnings("serial")
public class Order implements java.io.Serializable {

	private String order_id;
	private Customer customer;
	private Date order_time;
	private Float order_price;
	private Float order_priced;
	private Integer order_pay;
	private Integer order_meth;
	private Integer order_state;
	private String order_info;
	private Set<OrderItem> order_items = new HashSet<OrderItem>(0);

	public Order() {
	}


	public String getOrder_id() {
		return order_id;
	}


	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}


	public Customer getCustomer() {
		return customer;
	}


	public void setCustomer(Customer customer) {
		this.customer = customer;
	}


	public Date getOrder_time() {
		return order_time;
	}


	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}


	public Float getOrder_price() {
		return order_price;
	}


	public void setOrder_price(Float order_price) {
		this.order_price = order_price;
	}


	public Float getOrder_priced() {
		return order_priced;
	}


	public void setOrder_priced(Float order_priced) {
		this.order_priced = order_priced;
	}


	public Integer getOrder_pay() {
		return order_pay;
	}


	public void setOrder_pay(Integer order_pay) {
		this.order_pay = order_pay;
	}


	public Integer getOrder_meth() {
		return order_meth;
	}


	public void setOrder_meth(Integer order_meth) {
		this.order_meth = order_meth;
	}


	public Integer getOrder_state() {
		return order_state;
	}


	public void setOrder_state(Integer order_state) {
		this.order_state = order_state;
	}


	public String getOrder_info() {
		return order_info;
	}


	public void setOrder_info(String order_info) {
		this.order_info = order_info;
	}


	public Set<OrderItem> getOrder_items() {
		return order_items;
	}


	public void setOrder_items(Set<OrderItem> order_items) {
		this.order_items = order_items;
	}


	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", customer=" + customer
				+ ", order_time=" + order_time + ", order_price=" + order_price
				+ ", order_priced=" + order_priced + ", order_pay=" + order_pay
				+ ", order_meth=" + order_meth + ", order_state=" + order_state
				+ ", order_info=" + order_info + ", order_items=" + order_items
				+ "]";
	}


}
