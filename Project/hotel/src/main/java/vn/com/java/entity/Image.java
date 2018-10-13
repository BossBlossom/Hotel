package vn.com.java.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="images")
public class Image 
{
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="image")
	private String image;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="style_image")
	private ImageStyleRoom imageStyleRoom;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public ImageStyleRoom getImageStyleRoom() {
		return imageStyleRoom;
	}

	public void setImageStyleRoom(ImageStyleRoom imageStyleRoom) {
		this.imageStyleRoom = imageStyleRoom;
	}
	
}
