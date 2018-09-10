package com.ambow.orderf.pojo;

import java.util.List;


/**
 * Emp
 */
@SuppressWarnings("serial")
public class Emp implements java.io.Serializable {

	private Integer emp_id;
	private String emp_name;
	private String emp_password;
	private String emp_login;
	private Double emp_salary;
	private Double emp_push;
	private Integer emp_state;
	private List<EmpRoleMiddle> middleList;
	

	public Integer getEmp_state() {
		return emp_state;
	}
	public void setEmp_state(Integer emp_state) {
		this.emp_state = emp_state;
	}
	public List<EmpRoleMiddle> getMiddleList() {
		return middleList;
	}
	public void setMiddleList(List<EmpRoleMiddle> middleList) {
		this.middleList = middleList;
	}
	public Integer getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(Integer emp_id) {
		this.emp_id = emp_id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_password() {
		return emp_password;
	}
	public void setEmp_password(String emp_password) {
		this.emp_password = emp_password;
	}
	public String getEmp_login() {
		return emp_login;
	}
	public void setEmp_login(String emp_login) {
		this.emp_login = emp_login;
	}
	public Double getEmp_salary() {
		return emp_salary;
	}
	public void setEmp_salary(Double emp_salary) {
		this.emp_salary = emp_salary;
	}
	public Double getEmp_push() {
		return emp_push;
	}
	public void setEmp_push(Double emp_push) {
		this.emp_push = emp_push;
	}
	@Override
	public String toString() {
		return "Emp [emp_id=" + emp_id + ", emp_name=" + emp_name
				+ ", emp_password=" + emp_password + ", emp_login=" + emp_login
				+ ", emp_salary=" + emp_salary + ", emp_push=" + emp_push
				+ ", emp_state=" + emp_state + ", middleList=" + middleList
				+ "]";
	}
	
	
	
}
