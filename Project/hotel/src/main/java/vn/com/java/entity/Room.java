package vn.com.java.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="rooms")
public class Room 
{
	@Id
	@Column(name="room_no")
	private int roomNo;
	
	@Column(name="status")
	private String status;
	
	@Column(name="bed")
	private int bed;
	
	@Column(name="air_conditioner")
	private int airConditioner;
	
	@Column(name="money")
	private int money;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="room_style_id")
	private RoomStyle roomStyleId;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "booking_informations", joinColumns = { @JoinColumn(name = "room_no") }, inverseJoinColumns = { @JoinColumn(name = "cmnd") })
	private Set<Customer> customerRoomNumbers = new HashSet<Customer>(0);
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "booking_histories", joinColumns = { @JoinColumn(name = "room_no") }, inverseJoinColumns = { @JoinColumn(name = "cmnd") })
	private Set<Customer> customerRoomHistories = new HashSet<Customer>(0);
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "bills", joinColumns = { @JoinColumn(name = "room_no") }, inverseJoinColumns = { @JoinColumn(name = "product") })
	private Set<Product> productRoomBills = new HashSet<Product>(0);
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "bill_details", joinColumns = { @JoinColumn(name = "room_no") }, inverseJoinColumns = { @JoinColumn(name = "product") })
	private Set<Product> productRoomDetail = new HashSet<Product>(0);

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getBed() {
		return bed;
	}

	public void setBed(int bed) {
		this.bed = bed;
	}

	public int getAirConditioner() {
		return airConditioner;
	}

	public void setAirConditioner(int airConditioner) {
		this.airConditioner = airConditioner;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}
	
	public RoomStyle getRoomStyleId() {
		return roomStyleId;
	}

	public void setRoomStyleId(RoomStyle roomStyleId) {
		this.roomStyleId = roomStyleId;
	}

	public Set<Customer> getCustomerRoomNumbers() {
		return customerRoomNumbers;
	}

	public void setCustomerRoomNumbers(Set<Customer> customerRoomNumbers) {
		this.customerRoomNumbers = customerRoomNumbers;
	}

	public Set<Customer> getCustomerRoomHistories() {
		return customerRoomHistories;
	}

	public void setCustomerRoomHistories(Set<Customer> customerRoomHistories) {
		this.customerRoomHistories = customerRoomHistories;
	}

	public Set<Product> getProductRoomBills() {
		return productRoomBills;
	}

	public void setProductRoomBills(Set<Product> productRoomBills) {
		this.productRoomBills = productRoomBills;
	}

	public Set<Product> getProductRoomDetail() {
		return productRoomDetail;
	}

	public void setProductRoomDetail(Set<Product> productRoomDetail) {
		this.productRoomDetail = productRoomDetail;
	}
	
}
