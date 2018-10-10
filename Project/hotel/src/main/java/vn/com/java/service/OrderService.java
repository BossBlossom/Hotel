package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.OrderDao;
import vn.com.java.entity.Order;
import vn.com.java.model.OrderModel;

@Service
@Transactional
public class OrderService {
	@Autowired
	private OrderDao orderDao;
	
	public List<Order> search(String product)
	{
		if(product == null)
		{
			return orderDao.findAll();
		}
		return orderDao.findByOrder(product);
	}
	
	public Order createOrder(OrderModel orderModel)
	{
		Order order = new Order();
		orderModel.toOrder(order);
		
		Order result = orderDao.create(order);
		return result;
	}
	
	public Order updateOrder(OrderModel orderModel) 
	{
		Order order = new Order();
		orderModel.toOrder(order);
		
		Order result = orderDao.update(order);
		return result;
	}
	
	public Order deleteOrder(OrderModel orderModel) 
	{
		Order order = new Order();
		orderModel.toOrder(order);
		
		Order result = orderDao.update(order);
		return result;
	}
}
