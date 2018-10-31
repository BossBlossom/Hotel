package vn.com.java.model;

import java.text.ParseException;

import vn.com.java.entity.BookingInformation;
import vn.com.java.entity.Customer;
import vn.com.java.entity.Room;

public class BookingInformationModel 
{
	private String cmnd;
	
	private int roomNo;
	
	private String startedAt;
	
	private String endedAt;
	
	private String status;
	
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
	
	public BookingInformation toBookingInformation(BookingInformation bookingInformation) throws ParseException
	{
		bookingInformation.setStartedAt(this.startedAt);
		bookingInformation.setEndedAt(this.endedAt);
		
		return bookingInformation;
	}
	
	public void fromBookingInformation(BookingInformation bookingInformation)
	{
		this.setStartedAt(bookingInformation.getStartedAt());
		this.setEndedAt(bookingInformation.getEndedAt());
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
}
