package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.Order;

@Repository
public class OrderDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<Order> findAll()
	{
		TypedQuery<Order> query = getSession().createQuery("FROM Order", Order.class);
		List<Order> orders = query.getResultList();
		return orders;
	}
	
	public List<Order> findByOrder(String product)
	{
		return new ArrayList<>();
	}
	
	public Order create(Order order)
	{
		getSession().save(order);
		return order;
	}
	
	public Order update(Order order)
	{
		getSession().update(order);
		return order;
	}
	
	public Order delete(Order order)
	{
		getSession().delete(order);
		return order;
	}
}
