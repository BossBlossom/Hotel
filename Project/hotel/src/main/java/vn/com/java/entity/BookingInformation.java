package vn.com.java.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="booking_informations")
public class BookingInformation {
	@Id
	@Column(name="id")
	@GeneratedValue
	private int id;
	
	@Column(name="cmnd")
	private int cmnd;
	
	@Column(name="room_no")
	private int roomNo;
	
	@Column(name="started_at")
	private String startedAt;
	
	@Column(name="ended_at")
	private String endedAt;
	
	@Column(name="total")
	private int total;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
	
}
