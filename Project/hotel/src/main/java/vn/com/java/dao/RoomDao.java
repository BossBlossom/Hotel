package vn.com.java.dao;

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
	
	public List<Room> findAll()
	{
		Session session = sessionFactory.openSession();
		TypedQuery<Room> query = session.createQuery("FROM Room", Room.class);
		List<Room> rooms = query.getResultList();
		return rooms;
	}
	
	public Room findByRoom(int roomNo)
	{
		return sessionFactory.openSession().find(Room.class, roomNo);
	}
	
	public Room create(Room room)
	{
		Session session = sessionFactory.openSession();
		session.save(room);
		session.close();
		return room;
	}
	
	public Room update(Room room)
	{
		Session session = sessionFactory.openSession();
		session.update(room);
		session.close();
		return room;
	}
	
	public Room delete(Room room)
	{
		Session session = sessionFactory.openSession();
		session.delete(room);
		session.close();
		return room;
	}
}
