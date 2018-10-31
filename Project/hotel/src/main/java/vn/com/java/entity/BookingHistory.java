package vn.com.java.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "booking_histories")
public class BookingHistory {
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="room_no")
	private Room room;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="customer_id")
	private Customer customer;
	
	@Column(name = "check_in")
	@Temporal(TemporalType.TIMESTAMP)
	private Date checkIn;
	
	@Column(name = "check_out")
	@Temporal(TemporalType.TIMESTAMP)
	private Date checkOut;
	
	@Column(name = "price")
	private int price;
	
	@Column(name = "day_total")
	private int dayTotal;

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

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Date getCheckIn() {
		return checkIn;
	}

	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}

	public Date getCheckOut() {
		return checkOut;
	}

	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDayTotal() {
		return dayTotal;
	}

	public void setDayTotal(int dayTotal) {
		this.dayTotal = dayTotal;
	}
}
