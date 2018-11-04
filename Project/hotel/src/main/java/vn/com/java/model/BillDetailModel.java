package vn.com.java.model;

import vn.com.java.entity.BillDetail;
import vn.com.java.entity.Product;
import vn.com.java.entity.Room;

public class BillDetailModel 
{
	private Room room;
	
	private Product product;
	
	private int quantum;
	
	private int price;
	
	private String status;
	
	private int total;
	
	private int roomNo;
	
	private int productId;

	public BillDetail toBillDetail(BillDetail billDetail)
	{
		billDetail.setTotal(this.total);
		return billDetail;
	}
	
	public void fromBillDetail(BillDetail billDetail)
	{
		this.setTotal(billDetail.getTotal());
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

	public int getQuantum() {
		return quantum;
	}

	public void setQuantum(int quantum) {
		this.quantum = quantum;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}
	
}
