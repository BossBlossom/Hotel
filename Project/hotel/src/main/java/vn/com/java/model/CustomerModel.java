package vn.com.java.model;

import vn.com.java.entity.Customer;

public class CustomerModel {
	
	private int cmnd;
	
	private String fullName;
	
	public Customer toCustomer(Customer customer)
	{
		customer.setCmnd(this.cmnd);
		customer.setFullName(this.fullName);
		return customer;
	}
	
	public void fromCustomer(Customer customer)
	{
		customer.setCmnd(customer.getCmnd());
		customer.setFullName(customer.getFullName());
	}

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