package vn.com.java.model;

import vn.com.java.entity.Product;

public class OrderModel {
	private String product;
	
	private int money;
	
	private String status;
	
	public OrderModel() {
	}
	
	public OrderModel(String product, int money, String status) {
		this.product = product;
		this.money = money;
		this.status = status;
	}



	public Product toOrder(Product order)
	{
		order.setProduct(this.product);
		if(this.status==null)
		{
			order.setStatus("none");
		}
		order.setMoney(money);
		order.setStatus(status);
		return order;
	}
	
	public void fromOrder(Product order)
	{
		this.setProduct(order.getProduct());
		this.setMoney(order.getMoney());
		this.setStatus(order.getStatus());
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
	
	
	
