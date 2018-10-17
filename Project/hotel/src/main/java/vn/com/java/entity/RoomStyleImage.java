//package vn.com.java.entity;
//
//import javax.persistence.CascadeType;
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.Table;
//
//@Entity
//@Table(name="room_style_images")
//public class RoomStyleImage 
//{
//	@Id
//	@GeneratedValue
//	@Column(name="id")
//	private int id;
//
//	@Column(name="image_style")
//	private String imageStyle;
//	
//	@ManyToOne(cascade = CascadeType.ALL)
//	@JoinColumn(name="room_style_name")
//	private RoomStyle roomStyleName;
//
//	public int getId() {
//		return id;
//	}
//
//	public void setId(int id) {
//		this.id = id;
//	}
//
//	public String getImageStyle() {
//		return imageStyle;
//	}
//
//	public void setImageStyle(String imageStyle) {
//		this.imageStyle = imageStyle;
//	}
//
//	public RoomStyle getRoomStyle() {
//		return roomStyleName;
//	}
//
//	public void setRoomStyle(RoomStyle roomStyleName) {
//		this.roomStyleName = roomStyleName;
//	}
//	
//}
