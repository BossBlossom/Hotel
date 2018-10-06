package vn.com.java.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="images")
public class Image 
{
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="room_no")
	private int roomNo;
	
	@Column(name="image")
	private String image;

	public long getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
}
