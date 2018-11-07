package vn.com.java.model;

import vn.com.java.entity.BookingInformation;
import vn.com.java.entity.Customer;
import vn.com.java.entity.Room;

public class BookingInformationModel 
{
	private String cmnd;
	
	private int roomNo;
	
	private String startedAt;
	
	private String status;
	
	private String fullName;
	
	private String phone;
	
	private Room room;
	
	private Customer customer;
	
	public Customer toCustomer(Customer customer)
	{
		customer.setCmnd(this.cmnd);
		customer.setFullName(this.fullName);
		customer.setPhone(this.phone);
		return customer;
	}
	
	public void fromCustomer(Customer customer)
	{
		this.setCmnd(customer.getCmnd());
		this.setFullName(customer.getFullName());
		this.setPhone(customer.getPhone());
	}
	
	public BookingInformation toBookingInformation(BookingInformation bookingInformation)
	{
		bookingInformation.setStartedAt(this.startedAt);
		
		return bookingInformation;
	}
	
	public void fromBookingInformation(BookingInformation bookingInformation)
	{
		this.setStartedAt(bookingInformation.getStartedAt());
	}

	public String getCmnd() {
		return cmnd;
	}

	public void setCmnd(String cmnd) {
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

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
