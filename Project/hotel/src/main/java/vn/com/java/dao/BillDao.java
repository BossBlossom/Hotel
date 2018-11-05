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
	
	public Bill find(int roomNo, String status)
	{
		TypedQuery<Bill> query = getSession().createQuery("FROM Bill WHERE room.roomNo = :roomNo AND status = :status", Bill.class);
		query.setParameter("roomNo", roomNo);
		query.setParameter("status", status);
		List<Bill> list = query.getResultList();
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	public Bill findByRoom(int roomNo)
	{
		TypedQuery<Bill> query = getSession().createQuery("FROM Bill WHERE room.roomNo = :roomNo", Bill.class);
		query.setParameter("roomNo", roomNo);
		Bill bill = query.getSingleResult();
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
