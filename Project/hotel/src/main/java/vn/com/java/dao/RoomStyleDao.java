package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.RoomStyle;

@Repository
public class RoomStyleDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	public List<RoomStyle> findAll()
	{
		TypedQuery<RoomStyle> query = getSession().createQuery("FROM RoomStyle", RoomStyle.class);
		List<RoomStyle> roomStyle = query.getResultList();
		return roomStyle;
	}
	
	public List<RoomStyle> findByRoomStyleName(String roomStyleName)
	{
		return new ArrayList<>();
	}
	
	public RoomStyle findRoomStyleName(String roomStyleName)
	{
		RoomStyle roomStyle = getSession().find(RoomStyle.class, roomStyleName);
		return roomStyle;
	}
	
	public RoomStyle findId(int id)
	{
		RoomStyle roomStyle = getSession().find(RoomStyle.class, id);
		return roomStyle;
	}
	
	public RoomStyle create(RoomStyle roomStyle)
	{
		getSession().save(roomStyle);
		return roomStyle;
	}
	
	public RoomStyle delete(RoomStyle roomStyle)
	{
		getSession().delete(roomStyle);
		return roomStyle;
	}
}
