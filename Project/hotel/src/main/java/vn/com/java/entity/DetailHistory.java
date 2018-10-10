package vn.com.java.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "detail_histories")
public class DetailHistory
{
	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "history_id")
	private int historyId;
	
	@Column(name = "order_id")
	private int orderId;
	
	@Column(name = "total")
	private int total;
	
	@Column(name = "note")
	private String note;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getHistoryId() {
		return historyId;
	}

	public void setHistoryId(int historyId) {
		this.historyId = historyId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
}
