package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.BookingInformation;

@Repository
public class BookingInformationDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<BookingInformation> findAll()
	{
		TypedQuery<BookingInformation> query = getSession().createQuery("FROM BookingInformation", BookingInformation.class);
		List<BookingInformation> bookingInformations = query.getResultList();
		
		return bookingInformations;
	}
	
	public List<BookingInformation> findAllById(int id)
	{
		return new ArrayList<>();
	}
	
	public BookingInformation findByRoom(int roomNo)
	{
		BookingInformation bookingInformation = getSession().find(BookingInformation.class, roomNo);
		return bookingInformation;
	}
	
	public BookingInformation findByCustomer(int cmnd)
	{
		BookingInformation bookingInformation = getSession().find(BookingInformation.class, cmnd);
		return bookingInformation;
	}
	
	public BookingInformation create(BookingInformation bookingInformation)
	{
		getSession().save(bookingInformation);
		return bookingInformation;
	}
	
	public BookingInformation update(BookingInformation bookingInformation)
	{
		getSession().update(bookingInformation);
		return bookingInformation;
	}
	
	public BookingInformation delete(BookingInformation bookingInformation)
	{
		getSession().delete(bookingInformation);
		return bookingInformation;
	}
}
