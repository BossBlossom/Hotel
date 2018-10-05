package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.Room;

@Repository
public class RoomDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	public List<Room> findAll()
	{
		TypedQuery<Room> query = getSession().createQuery("FROM Room", Room.class);
		List<Room> rooms = query.getResultList();
		return rooms;
	}
	
	public List<Room> findByRoom(int roomNo)
	{
		return new ArrayList<>();
	}
	
	public Room create(Room room)
	{
		getSession().save(room);
		return room;
	}
	
	public Room update(Room room)
	{
		getSession().update(room);
		return room;
	}
	
	public Room delete(Room room)
	{
		getSession().delete(room);
		return room;
	}
}
