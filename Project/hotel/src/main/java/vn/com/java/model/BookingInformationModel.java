package vn.com.java.model;

import vn.com.java.entity.BookingInformation;
import vn.com.java.entity.Customer;

public class BookingInformationModel 
{
	private int cmnd;
	
	private int roomNo;
	
	private String startedAt;
	
	private String endedAt;
	
	private int total;
	
	private String status;
	
	private String fullName;
	
	public Customer toCustomer(Customer customer)
	{
		customer.setFullName(this.fullName);
		customer.setCmnd(this.cmnd);
		
		return customer;
	}
	
	public void fromCustomer(Customer customer)
	{
		this.setCmnd(customer.getCmnd());
		this.setFullName(customer.getFullName());
	}
	
	public BookingInformation toBookingInformation(BookingInformation bookingInformation)
	{
		bookingInformation.setCmnd(this.cmnd);
		bookingInformation.setRoomNo(this.roomNo);
		bookingInformation.setStartedAt(this.startedAt);
		bookingInformation.setEndedAt(this.endedAt);
		
		return bookingInformation;
	}
	
	public void fromBookingInformation(BookingInformation bookingInformation)
	{
		this.setCmnd(bookingInformation.getCmnd());
		this.setRoomNo(bookingInformation.getRoomNo());
		this.setStartedAt(bookingInformation.getStartedAt());
		this.setEndedAt(bookingInformation.getEndedAt());
		this.setTotal(bookingInformation.getTotal());
	}

	public int getCmnd() {
		return cmnd;
	}

	public void setCmnd(int cmnd) {
		this.cmnd = cmnd;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getStartedAt() {
		return startedAt;
	}

	public void setStartedAt(String startedAt) {
		this.startedAt = startedAt;
	}

	public String getEndedAt() {
		return endedAt;
	}

	public void setEndedAt(String endedAt) {
		this.endedAt = endedAt;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	
}
