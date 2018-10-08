package vn.com.java.entity;

import java.util.Date;

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
	private String endedAd;

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

	public String getEndedAd() {
		return endedAd;
	}

	public void setEndedAd(String endedAd) {
		this.endedAd = endedAd;
	}	
	
}
