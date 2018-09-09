package com.ambow.orderf.pojo;

public class UserRoleMiddle {
	
	private Integer middle_id;
	private Emp emp;
	private Role role;
	public Integer getMiddle_id() {
		return middle_id;
	}
	public void setMiddle_id(Integer middle_id) {
		this.middle_id = middle_id;
	}
	public Emp getEmp() {
		return emp;
	}
	public void setEmp(Emp emp) {
		this.emp = emp;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "UserRoleMiddle [middle_id=" + middle_id + ", emp=" + emp
				+ ", role=" + role + "]";
	}
	
	

}
