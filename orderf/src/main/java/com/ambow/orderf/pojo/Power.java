package com.ambow.orderf.pojo;


import java.util.HashSet;
import java.util.Set;

/**
 * Power
 */
@SuppressWarnings("serial")
public class Power implements java.io.Serializable {

	private Integer power_id;
	private String power_name;
	private String power_url;
	private Set<Menu> menus = new HashSet<Menu>(0);

	public Power() {
	}

	public Integer getPower_id() {
		return power_id;
	}

	public void setPower_id(Integer power_id) {
		this.power_id = power_id;
	}

	public String getPower_name() {
		return power_name;
	}

	public void setPower_name(String power_name) {
		this.power_name = power_name;
	}

	public String getPower_url() {
		return power_url;
	}

	public void setPower_url(String power_url) {
		this.power_url = power_url;
	}

	public Set<Menu> getMenus() {
		return menus;
	}

	public void setMenus(Set<Menu> menus) {
		this.menus = menus;
	}

	@Override
	public String toString() {
		return "Power [power_id=" + power_id + ", power_name=" + power_name
				+ ", power_url=" + power_url + ", menus=" + menus + "]";
	}

}
