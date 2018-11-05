package vn.com.java.model;

import java.util.Date;

public class CheckOutModel {

	private int roomNo;
	private Date checkIn;
	private Date checkOut;
	private int count;
	private int roomTotal;
	private int serviceTotal;
	private int total;
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public Date getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}
	public Date getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getRoomTotal() {
		return roomTotal;
	}
	public void setRoomTotal(int roomTotal) {
		this.roomTotal = roomTotal;
	}
	public int getServiceTotal() {
		return serviceTotal;
	}
	public void setServiceTotal(int serviceTotal) {
		this.serviceTotal = serviceTotal;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
}
