package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.RoomStyleImage;

@Repository
public class RoomStyleImageDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	public List<RoomStyleImage> findAll()
	{
		TypedQuery<RoomStyleImage> query = getSession().createQuery("FROM RoomStyleImage", RoomStyleImage.class);
		List<RoomStyleImage> images = query.getResultList();
		return images;
	}
	
	public List<RoomStyleImage> findByStyleRoom(String roomStyle)
	{
		return new ArrayList<>();
	}
	
	public RoomStyleImage findStyleRoom(String roomStyle)
	{
		RoomStyleImage roomStyleImage = getSession().find(RoomStyleImage.class, roomStyle);
		return roomStyleImage;
	}
	
	public RoomStyleImage findId(int id)
	{
		RoomStyleImage roomStyleImage = getSession().find(RoomStyleImage.class, id);
		return roomStyleImage;
	}
	
	public RoomStyleImage create(RoomStyleImage roomStyleImage)
	{
		getSession().save(roomStyleImage);
		return roomStyleImage;
	}
	
	public RoomStyleImage delete(RoomStyleImage roomStyleImage)
	{
		getSession().delete(roomStyleImage);
		return roomStyleImage;
	}
}
