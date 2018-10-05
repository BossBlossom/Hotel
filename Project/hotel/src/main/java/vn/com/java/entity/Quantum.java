package vn.com.java.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "quantums")

public class Quantum {
	
	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "product")
	private String product;
	
	@Column(name = "quantum")
	private String quantum;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getQuantum() {
		return quantum;
	}

	public void setQuantum(String quantum) {
		this.quantum = quantum;
	}
}
