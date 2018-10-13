package vn.com.java.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="room_style_images")
public class RoomStyleImage 
{
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="room_style")
	private String roomStyle;
	
	@Column(name="image_style")
	private String imageStyle;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRoomStyle() {
		return roomStyle;
	}

	public void setRoomStyle(String roomStyle) {
		this.roomStyle = roomStyle;
	}

	public String getImageStyle() {
		return imageStyle;
	}

	public void setImageStyle(String imageStyle) {
		this.imageStyle = imageStyle;
	}
	
}
