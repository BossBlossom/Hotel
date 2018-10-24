package vn.com.java.model;

import vn.com.java.entity.Product;

public class ProductModel {
	private String product;
	
	private String style;
	
	private int price;
	
	private int quantum;
	
	public ProductModel() {
	}
	
	public ProductModel(String product, int price, int quantum, String style) {
		this.product = product;
		this.price = price;
		this.quantum = quantum;
		this.style = style;
	}



	public Product toProduct(Product product)
	{
		product.setProduct(this.product);
		product.setPrice(this.price);
		product.setQuantum(this.quantum);
		product.setStyle(this.style);
		return product;
	}
	
	public void fromProduct(Product product)
	{
		this.setProduct(product.getProduct());
		this.setPrice(product.getPrice());
		this.setQuantum(product.getQuantum());
		this.setStyle(product.getStyle());
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getStyle() {
		return style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantum() {
		return quantum;
	}

	public void setQuantum(int quantum) {
		this.quantum = quantum;
	}
	
}
	
	
	
