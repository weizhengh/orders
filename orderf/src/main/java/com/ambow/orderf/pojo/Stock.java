package com.ambow.orderf.pojo;


import java.util.Date;

/**
 * Stock
 */
@SuppressWarnings("serial")
public class Stock implements java.io.Serializable {

	private Integer stock_id;
	private String stock_info;
	private Float stock_peice;
	private Date stock_time;

	public Stock() {
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

	public Float getStock_peice() {
		return stock_peice;
	}

	public void setStock_peice(Float stock_peice) {
		this.stock_peice = stock_peice;
	}

	public Date getStock_time() {
		return stock_time;
	}

	public void setStock_time(Date stock_time) {
		this.stock_time = stock_time;
	}

	@Override
	public String toString() {
		return "Stock [stock_id=" + stock_id + ", stock_info=" + stock_info
				+ ", stock_peice=" + stock_peice + ", stock_time=" + stock_time
				+ "]";
	}


}
