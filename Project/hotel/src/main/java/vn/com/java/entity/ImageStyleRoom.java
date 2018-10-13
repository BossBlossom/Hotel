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
	
	@OneToMany(mappedBy="imageStyleRoom")
	private Set<Image> images;

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

	public Set<Image> getImages() {
		return images;
	}

	public void setImages(Set<Image> images) {
		this.images = images;
	}
	
}
