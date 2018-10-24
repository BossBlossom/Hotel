package vn.com.java.model;

import vn.com.java.entity.BookingInformation;
import vn.com.java.entity.Customer;
import vn.com.java.entity.Room;

public class BookingInformationModel 
{
	private String cmnd;
	
	private int roomNo;
	
	private String startedAt;
	
	private String endedAt;
	
	private int total;
	
	private String fullName;
	
	private Room room;
	
	private Customer customer;
	
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
	
	public BookingInformation toBookingInformation(BookingInformation bookingInformation)
	{
		bookingInformation.setStartedAt(this.startedAt+" 12:00");
		bookingInformation.setEndedAt(this.endedAt +" 12:00");
		bookingInformation.setTotal(this.total);
		return bookingInformation;
	}
	
	public void fromBookingInformation(BookingInformation bookingInformation)
	{
		this.setStartedAt(bookingInformation.getStartedAt());
		this.setEndedAt(bookingInformation.getEndedAt());
		this.setTotal(bookingInformation.getTotal());
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
	
}