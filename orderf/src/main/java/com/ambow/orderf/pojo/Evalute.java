package com.ambow.orderf.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


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
	private Date eva_time;
	private Integer level_type;
	private String img;
	private Integer ass;
	private List<String> imgpath = new ArrayList<String>();
	
	public List<String> getImgpath() {
		return imgpath;
	}

	public void setImgpath(List<String> imgpath) {
		this.imgpath = imgpath;
	}

	public Evalute() {
	}
	
	public Integer getLevel_type() {
		return level_type;
	}

	public void setLevel_type(Integer level_type) {
		this.level_type = level_type;
	}

	public Date getEva_time() {
		return eva_time;
	}

	public void setEva_time(Date eva_time) {
		this.eva_time = eva_time;
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
	
	public Integer getAss() {
		return ass;
	}

	public void setAss(Integer ass) {
		this.ass = ass;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Evalute [eva_id=" + eva_id + ", eva_content=" + eva_content
				+ ", eva_level=" + eva_level + ", cust=" + cust + ", order="
				+ order + ", eva_time=" + eva_time + ", level_type="
				+ level_type + ", img=" + img + ", ass=" + ass + ", imgpath="
				+ imgpath + "]";
	}

	
}
