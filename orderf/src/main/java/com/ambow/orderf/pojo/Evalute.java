package com.ambow.orderf.pojo;


/**
 * Evalute
 */
@SuppressWarnings("serial")
public class Evalute implements java.io.Serializable {

	private Integer eva_id;
	private String eva_content;
	private Integer eva_level;
	private Customer cust;
	private Order order;

	public Evalute() {
	}

	public Integer getEva_id() {
		return eva_id;
	}

	public void setEva_id(Integer eva_id) {
		this.eva_id = eva_id;
	}

	public String getEva_content() {
		return eva_content;
	}

	public void setEva_content(String eva_content) {
		this.eva_content = eva_content;
	}

	public Integer getEva_level() {
		return eva_level;
	}

	public void setEva_level(Integer eva_level) {
		this.eva_level = eva_level;
	}

	public Customer getCust() {
		return cust;
	}

	public void setCust(Customer cust) {
		this.cust = cust;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "Evalute [eva_id=" + eva_id + ", eva_content=" + eva_content
				+ ", eva_level=" + eva_level + ", cust=" + cust + ", order="
				+ order + "]";
	}
	
}
