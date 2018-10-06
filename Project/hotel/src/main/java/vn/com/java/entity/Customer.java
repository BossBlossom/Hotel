package vn.com.java.entity;

import javax.persistence.Column;

public class Customer {
	@Column(name="cmnd")
	private int cmnd;
	
	@Column(name="full_name")
	private String fullName;

	public int getCmnd() {
		return cmnd;
	}

	public void setCmnd(int cmnd) {
		this.cmnd = cmnd;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
	
}
