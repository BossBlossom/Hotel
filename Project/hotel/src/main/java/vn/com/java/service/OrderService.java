package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.OrderDao;
import vn.com.java.entity.Product;
import vn.com.java.model.OrderModel;

@Service
@Transactional
public class OrderService {
	@Autowired
	private OrderDao orderDao;
	
	public List<Product> search(String product)
	{
		if(product == null)
		{
			return orderDao.findAll();
		}
		return orderDao.findByOrder(product);
	}
	
	public Product createOrder(OrderModel orderModel)
	{
		Product order = new Product();
		orderModel.toOrder(order);
		
		Product result = orderDao.create(order);
		return result;
	}
	
	public Product updateOrder(OrderModel orderModel) 
	{
		Product order = new Product();
		orderModel.toOrder(order);
		
		Product result = orderDao.update(order);
		return result;
	}
	
	public Product deleteOrder(OrderModel orderModel) 
	{
		Product order = new Product();
		orderModel.toOrder(order);
		
		Product result = orderDao.update(order);
		return result;
	}
}
