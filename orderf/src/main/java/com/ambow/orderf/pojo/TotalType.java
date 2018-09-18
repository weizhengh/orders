package com.ambow.orderf.pojo;

public class TotalType {
	
	private String paytype;
	private Integer scount;
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public Integer getScount() {
		return scount;
	}
	public void setScount(Integer scount) {
		this.scount = scount;
	}
	@Override
	public String toString() {
		return "TotalType [paytype=" + paytype + ", scount=" + scount + "]";
	}
	
	

}



