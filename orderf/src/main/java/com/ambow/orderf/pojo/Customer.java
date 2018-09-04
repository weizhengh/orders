package com.ambow.orderf.pojo;


import java.util.HashSet;
import java.util.Set;

/**
 * Customer
 */
/**
 * @author H
 *
 */
@SuppressWarnings("serial")
public class Customer implements java.io.Serializable {

	private Integer cust_id;
	private String cust_name;
	private String cust_password;
	private String cust_phone;
	private String cust_mail;
	private Double cust_grade;
	private Set<Order> orders = new HashSet<Order>();

	public Customer() {
	}

	public Integer getCust_id() {
		return cust_id;
	}

	public void setCust_id(Integer cust_id) {
		this.cust_id = cust_id;
	}

	public String getCust_name() {
		return cust_name;
	}

	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}

	public String getCust_password() {
		return cust_password;
	}

	public void setCust_password(String cust_password) {
		this.cust_password = cust_password;
	}

	public String getCust_phone() {
		return cust_phone;
	}

	public void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}

	public String getCust_mail() {
		return cust_mail;
	}

	public void setCust_mail(String cust_mail) {
		this.cust_mail = cust_mail;
	}

	public Double getCust_grade() {
		return cust_grade;
	}

	public void setCust_grade(Double cust_grade) {
		this.cust_grade = cust_grade;
	}

	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@Override
	public String toString() {
		return "Customer [cust_id=" + cust_id + ", cust_name=" + cust_name
				+ ", cust_password=" + cust_password + ", cust_phone="
				+ cust_phone + ", cust_mail=" + cust_mail + ", cust_grade="
				+ cust_grade + ", orders=" + orders + "]";
	}

	

}
