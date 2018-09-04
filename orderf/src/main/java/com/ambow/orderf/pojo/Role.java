package com.ambow.orderf.pojo;


import java.util.HashSet;
import java.util.Set;

/**
 * Role
 */
@SuppressWarnings("serial")
public class Role implements java.io.Serializable {

	private Integer role_id;
	private String role_name;
	private Set<Menu> menus = new HashSet<Menu>(0);
	private Set<Emp> emps = new HashSet<Emp>(0);

	public Role() {
	}

	public Integer getRole_id() {
		return role_id;
	}

	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}

	public String getRole_name() {
		return role_name;
	}

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

	public Set<Menu> getMenus() {
		return menus;
	}

	public void setMenus(Set<Menu> menus) {
		this.menus = menus;
	}

	public Set<Emp> getEmps() {
		return emps;
	}

	public void setEmps(Set<Emp> emps) {
		this.emps = emps;
	}

	@Override
	public String toString() {
		return "Role [role_id=" + role_id + ", role_name=" + role_name
				+ ", menus=" + menus + ", emps=" + emps + "]";
	}

}
