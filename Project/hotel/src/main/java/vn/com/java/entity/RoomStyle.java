package vn.com.java.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="room_style")
public class RoomStyle 
{
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@OneToMany(mappedBy = "roomStyle")
	private Set<RoomStyleImage> roomStyleImages;
	
	@OneToMany(mappedBy = "roomStyle")
	private Set<Room> rooms;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<RoomStyleImage> getRoomStyleImages() {
		return roomStyleImages;
	}

	public void setRoomStyleImages(Set<RoomStyleImage> roomStyleImages) {
		this.roomStyleImages = roomStyleImages;
	}

	public Set<Room> getRooms() {
		return rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}
	
}
