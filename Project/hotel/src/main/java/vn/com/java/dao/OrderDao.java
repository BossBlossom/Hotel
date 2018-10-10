package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.Product;

@Repository
public class OrderDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<Product> findAll()
	{
		TypedQuery<Product> query = getSession().createQuery("FROM Order", Product.class);
		List<Product> orders = query.getResultList();
		return orders;
	}
	
	public List<Product> findByOrder(String product)
	{
		return new ArrayList<>();
	}
	
	public Product create(Product order)
	{
		getSession().save(order);
		return order;
	}
	
	public Product update(Product order)
	{
		getSession().update(order);
		return order;
	}
	
	public Product delete(Product order)
	{
		getSession().delete(order);
		return order;
	}
}
