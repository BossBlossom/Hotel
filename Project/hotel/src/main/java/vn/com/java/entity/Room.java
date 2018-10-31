package vn.com.java.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="rooms")
public class Room 
{
	@Id
	@Column(name="room_no")
	private int roomNo;
	
	@Column(name="status")
	private String status;
	
	@Column(name="bed")
	private int bed;
	
	@Column(name="air_conditioner")
	private int airConditioner;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="room_style_id")
	private RoomStyle roomStyle;

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getBed() {
		return bed;
	}

	public void setBed(int bed) {
		this.bed = bed;
	}

	public int getAirConditioner() {
		return airConditioner;
	}

	public void setAirConditioner(int airConditioner) {
		this.airConditioner = airConditioner;
	}

	public RoomStyle getRoomStyle() {
		return roomStyle;
	}

	public void setRoomStyle(RoomStyle roomStyle) {
		this.roomStyle = roomStyle;
	}

}
