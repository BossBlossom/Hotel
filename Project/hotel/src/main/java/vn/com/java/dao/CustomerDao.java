package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.Customer;

@Repository
public class CustomerDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<Customer> findAll()
	{
		TypedQuery<Customer> query = getSession().createQuery("FROM Customer" , Customer.class);
		List<Customer> customers = query.getResultList();
		return customers;
	}
	
	public List<Customer> findByCmnd(int cmndNo)
	{
		return new ArrayList<>();
	}
	
	public Customer findByName(String name)
	{
		Customer customer = getSession().find(Customer.class, name);
		return customer;
	}
	
	public Customer create(Customer customer)
	{
		getSession().save(customer);
		return customer;
	}
	
	public Customer update(Customer customer)
	{
		getSession().update(customer);
		return customer;
	}
	
	public Customer delete(Customer customer)
	{
		getSession().delete(customer);
		return customer;
	}
}
