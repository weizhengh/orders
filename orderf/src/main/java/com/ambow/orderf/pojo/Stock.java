package com.ambow.orderf.pojo;


import java.util.Date;

/**
 * Stock
 */
@SuppressWarnings("serial")
public class Stock implements java.io.Serializable {

	private Integer stock_id;
	private String stock_info;
	private Float stock_price;
	private Date stock_time;
	private Integer stock_type;
	private Emp emp_id;

	public Stock() {
	}
	
	

	public Float getStock_price() {
		return stock_price;
	}



	public void setStock_price(Float stock_price) {
		this.stock_price = stock_price;
	}



	public Integer getStock_type() {
		return stock_type;
	}



	public void setStock_type(Integer stock_type) {
		this.stock_type = stock_type;
	}



	



	public Emp getEmp_id() {
		return emp_id;
	}



	public void setEmp_id(Emp emp_id) {
		this.emp_id = emp_id;
	}



	public Integer getStock_id() {
		return stock_id;
	}

	public void setStock_id(Integer stock_id) {
		this.stock_id = stock_id;
	}

	public String getStock_info() {
		return stock_info;
	}

	public void setStock_info(String stock_info) {
		this.stock_info = stock_info;
	}

	
	public Date getStock_time() {
		return stock_time;
	}

	public void setStock_time(Date stock_time) {
		this.stock_time = stock_time;
	}



	public Stock(Integer stock_id, String stock_info, Float stock_price,
			Date stock_time, Integer stock_type, Emp emp_id) {
		super();
		this.stock_id = stock_id;
		this.stock_info = stock_info;
		this.stock_price = stock_price;
		this.stock_time = stock_time;
		this.stock_type = stock_type;
		this.emp_id = emp_id;
	}



	
	

}
