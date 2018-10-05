package vn.com.java.model;

import vn.com.java.entity.Room;

public class RoomModel 
{
	private int roomNo;
	
	private String status;
	
	private int bed;
	
	private int airConditioner;
	
	private int money;
	
	private String information;
	
	public Room toRoom(Room room)
	{
		room.setRoomNo(this.roomNo);
		room.setStatus(this.status);
		room.setBed(this.bed);
		room.setAirConditioner(this.airConditioner);
		room.setMoney(this.money);
		room.setInformation(this.information);
		return room;
	}
	
	public void fromRoom(Room room)
	{
		this.setRoomNo(room.getRoomNo());
		this.setStatus(room.getStatus());
		this.setBed(room.getBed());
		this.setAirConditioner(room.getAirConditioner());
		this.setMoney(room.getMoney());
		this.setInformation(room.getInformation());
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

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}
	
}
