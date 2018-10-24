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
@Table(name="bills")
public class Bill 
{
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="room_no")
	private Room room;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="product_id")
	private Product product;
	
	@Column(name="total")
	private int total;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
}
