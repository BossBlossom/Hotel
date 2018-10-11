package vn.com.java.model;

import vn.com.java.entity.Product;

public class ProductModel {
	private String product;
	
	private int money;
	
	private int quantum;
	
	public ProductModel() {
	}
	
	public ProductModel(String product, int money, int quantum) {
		this.product = product;
		this.money = money;
		this.quantum = quantum;
	}



	public Product toProduct(Product product)
	{
		product.setProduct(this.product);
		product.setMoney(this.money);
		product.setQuantum(this.quantum);
		return product;
	}
	
	public void fromProduct(Product product)
	{
		this.setProduct(product.getProduct());
		this.setMoney(product.getMoney());
		this.setQuantum(product.getQuantum());
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getQuantum() {
		return quantum;
	}

	public void setQuantum(int quantum) {
		this.quantum = quantum;
	}
	
}
	
	
	
