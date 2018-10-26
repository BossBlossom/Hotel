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
public class ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<Product> findAll()
	{
		TypedQuery<Product> query = getSession().createQuery("FROM Product", Product.class);
		List<Product> products = query.getResultList();
		return products;
	}
	
	public List<Product> findById(int id)
	{
		return new ArrayList<>();
	}
	
	public Product find(int id)
	{
		Product product = getSession().find(Product.class, id);
		return product;
	}
	
	public Product create(Product product)
	{
		getSession().save(product);
		return product;
	}
	
	public Product update(Product product)
	{
		getSession().update(product);
		return product;
	}
	
	public Product delete(Product product)
	{
		getSession().delete(product);
		return product;
	}
}
