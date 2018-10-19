package vn.com.java.model;

import vn.com.java.entity.Room;
import vn.com.java.entity.RoomStyle;

public class RoomModel 
{
	private int roomNo;
	
	private String status;
	
	private int bed;
	
	private int airConditioner;
	
	private int money;
	
	private RoomStyle roomStyle;
	
	private int roomStyleId;
	
	public Room toRoom(Room room)
	{
		room.setRoomNo(this.roomNo);
		if(this.status==null)
		{
			room.setStatus("none");
		}
		room.setBed(this.bed);
		room.setAirConditioner(this.airConditioner);
		room.setMoney(this.money);
		return room;
	}
	
	public void fromRoom(Room room)
	{
		this.setRoomNo(room.getRoomNo());
		this.setStatus(room.getStatus());
		this.setBed(room.getBed());
		this.setAirConditioner(room.getAirConditioner());
		this.setMoney(room.getMoney());
	}

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

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public RoomStyle getRoomStyle() {
		return roomStyle;
	}

	public void setRoomStyle(RoomStyle roomStyle) {
		this.roomStyle = roomStyle;
	}

	public int getRoomStyleId() {
		return roomStyleId;
	}

	public void setRoomStyleId(int roomStyleId) {
		this.roomStyleId = roomStyleId;
	}
	
}
