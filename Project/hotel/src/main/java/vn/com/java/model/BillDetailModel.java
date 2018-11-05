package vn.com.java.model;

import vn.com.java.entity.BillDetail;
import vn.com.java.entity.Product;
import vn.com.java.entity.Room;

public class BillDetailModel 
{
	private Room room;
	
	private Product product;
	
	private int quantum;
	
	private String status;
	
	private String style;
	
	private int total;
	
	private int roomNo;
	
	private int productId;

	public BillDetail toBillDetail(BillDetail billDetail)
	{
		billDetail.setQuantum(this.quantum);
		return billDetail;
	}
	
	public void fromBillDetail(BillDetail billDetail)
	{
		this.setQuantum(billDetail.getQuantum());
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

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}
	
}
