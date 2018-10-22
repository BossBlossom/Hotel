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
@Table(name="bill_details")
public class BillDetail 
{
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="bill_id")
	private Bill bill;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="product")
	private Product product;
	
	@Column(name = "quantum")
	private int quantum;
	
	@Column(name="price")
	private int price;
	
	@Column(name="total")
	private int total;
}
