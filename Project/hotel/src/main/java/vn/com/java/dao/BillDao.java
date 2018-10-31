package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.Bill;

@Repository
public class BillDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<Bill> findAll()
	{
		TypedQuery<Bill> query = getSession().createQuery("FROM Bill", Bill.class);
		List<Bill> bookingInformations = query.getResultList();
		
		return bookingInformations;
	}
	
	public List<Bill> findAllById(int id)
	{
		return new ArrayList<>();
	}
	
	public Bill findById(int id)
	{
		Bill bill = getSession().find(Bill.class, id);
		return bill;
	}
	
	public Bill create(Bill bill)
	{
		getSession().save(bill);
		return bill;
	}
	
	public Bill update(Bill bill)
	{
		getSession().update(bill);
		return bill;
	}

}
