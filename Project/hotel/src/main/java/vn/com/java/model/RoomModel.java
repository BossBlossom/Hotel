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
	
	public Room toRoom(Room room)
	{
		room.setRoomNo(this.roomNo);
		if(this.status==null)
		{
			room.setStatus("none");
		}
		room.setBed(this.bed);
		room.setAirConditioner(this.airConditioner);
		room.setRoomStyle(this.roomStyle);
		room.setMoney(this.money);
		return room;
	}
	
	public Room closeRoom(Room room)
	{
		room.setRoomNo(this.roomNo);
		room.setStatus("close");
		room.setBed(this.bed);
		room.setAirConditioner(this.airConditioner);
		room.setRoomStyle(this.roomStyle);
		room.setMoney(this.money);
		return room;
	}
	
	public Room checkInRoom(Room room)
	{
		room.setRoomNo(this.roomNo);
		room.setStatus("check in");
		room.setBed(this.bed);
		room.setAirConditioner(this.airConditioner);
		room.setRoomStyle(this.roomStyle);
		room.setMoney(this.money);
		return room;
	}
	
	public Room checkOutRoom(Room room)
	{
		room.setRoomNo(this.roomNo);
		room.setStatus("check out");
		room.setBed(this.bed);
		room.setAirConditioner(this.airConditioner);
		room.setRoomStyle(this.roomStyle);
		room.setMoney(this.money);
		return room;
	}
	
	public Room billRoom(Room room)
	{
		room.setRoomNo(this.roomNo);
		room.setStatus("none");
		room.setBed(this.bed);
		room.setAirConditioner(this.airConditioner);
		room.setRoomStyle(this.roomStyle);
		room.setMoney(this.money);
		return room;
	}
	
	public void fromRoom(Room room)
	{
		this.setRoomNo(room.getRoomNo());
		this.setStatus(room.getStatus());
		this.setBed(room.getBed());
		this.setAirConditioner(room.getAirConditioner());
		this.setRoomStyle(room.getRoomStyle());
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
	
}
