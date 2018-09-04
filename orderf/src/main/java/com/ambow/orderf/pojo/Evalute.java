package com.ambow.orderf.pojo;


/**
 * Evalute
 */
@SuppressWarnings("serial")
public class Evalute implements java.io.Serializable {

	private Integer eva_id;
	private String eva_content;
	private Integer eva_level;
	private Integer cust_id;
	private Integer order_id;

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

	public Integer getCust_id() {
		return cust_id;
	}

	public void setCust_id(Integer cust_id) {
		this.cust_id = cust_id;
	}

	public Integer getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}

	@Override
	public String toString() {
		return "Evalute [eva_id=" + eva_id + ", eva_content=" + eva_content
				+ ", eva_level=" + eva_level + ", cust_id=" + cust_id
				+ ", order_id=" + order_id + "]";
	}



}
