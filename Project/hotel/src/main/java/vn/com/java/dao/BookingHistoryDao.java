package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.BookingHistory;
import vn.com.java.entity.BookingInformation;

@Repository
public class BookingHistoryDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<BookingHistory> findAll()
	{
		TypedQuery<BookingHistory> query = getSession().createQuery("FROM BookingHistory", BookingHistory.class);
		List<BookingHistory> bookingHistories = query.getResultList();
		
		return bookingHistories;
	}
	
	public List<BookingHistory> findById(int id)
	{
		return new ArrayList<>();
	}
	
	
	public BookingHistory find(int roomNo, String status)
	{
		TypedQuery<BookingHistory> query = getSession().createQuery("FROM BookingHistory WHERE room.roomNo = :roomNo AND status = :status", BookingHistory.class);
		query.setParameter("roomNo", roomNo);
		query.setParameter("status", status);
		List<BookingHistory> list = query.getResultList();
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	public BookingHistory findByRoom(int roomNo)
	{
		TypedQuery<BookingHistory> query = getSession().createQuery("FROM BookingHistory WHERE room.roomNo = :roomNo", BookingHistory.class);
		query.setParameter("roomNo", roomNo);
		BookingHistory bookingHistory = query.getSingleResult();
		return bookingHistory;
	}
	
	public BookingHistory findByCustomer(int cmnd)
	{
		BookingHistory bookingHistory = getSession().find(BookingHistory.class, cmnd);
		return bookingHistory;
	}
	
	public BookingHistory create(BookingHistory bookingHistory)
	{
		getSession().save(bookingHistory);
		return bookingHistory;
	}
	
	public BookingHistory update(BookingHistory bookingHistory)
	{
		getSession().update(bookingHistory);
		return bookingHistory;
	}
}
