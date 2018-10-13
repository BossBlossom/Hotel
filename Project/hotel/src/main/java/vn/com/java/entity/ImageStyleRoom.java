package vn.com.java.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="images_style_rooms")
public class ImageStyleRoom 
{
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="style_room")
	private String styleRoom;
	
	@Column(name="image")
	private String image;

	@OneToMany(mappedBy = "imagestyleroom")
	private Set<Room> rooms;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStyleRoom() {
		return styleRoom;
	}

	public void setStyleRoom(String styleRoom) {
		this.styleRoom = styleRoom;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Set<Room> getRooms() {
		return rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}
	
}
