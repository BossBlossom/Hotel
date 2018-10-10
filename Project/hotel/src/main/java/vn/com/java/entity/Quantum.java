package vn.com.java.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "quantums")

public class Quantum {
	
	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "quantum")
	private int quantum;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "product")
	private Product order;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantum() {
		return quantum;
	}

	public void setQuantum(int quantum) {
		this.quantum = quantum;
	}

	public Product getOrder() {
		return order;
	}

	public void setOrder(Product order) {
		this.order = order;
	}
	
}
