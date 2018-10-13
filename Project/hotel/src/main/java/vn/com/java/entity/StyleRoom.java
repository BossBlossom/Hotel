package vn.com.java.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="style_rooms")
public class StyleRoom 
{
	@Id
	@Column(name="style")
	private String style;
	
	@OneToMany(mappedBy = "StyleRoom")
	private Set<Room> rooms;
	
	@OneToMany(mappedBy = "StyleRoom")
	private Set<Image> images;

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public Set<Room> getRooms() {
		return rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}

	public Set<Image> getImages() {
		return images;
	}

	public void setImages(Set<Image> images) {
		this.images = images;
	}
	
	
}
