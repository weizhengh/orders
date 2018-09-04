package com.ambow.orderf.pojo;

// Generated

/**
 * Menu
 */
@SuppressWarnings("serial")
public class Menu implements java.io.Serializable {

	private Integer menu_id;
	private Power power;
	private Role role;

	public Menu() {
	}

	public Integer getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(Integer menu_id) {
		this.menu_id = menu_id;
	}

	public Power getPower() {
		return power;
	}

	public void setPower(Power power) {
		this.power = power;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Menu [menu_id=" + menu_id + ", power=" + power + ", role="
				+ role + "]";
	}

	
}
