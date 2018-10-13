package vn.com.java.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.ImageStyleRoom;

@Repository
public class ImageStyleRoomDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	public List<ImageStyleRoom> findAll()
	{
		TypedQuery<ImageStyleRoom> query = getSession().createQuery("FROM ImageStyleRoom", ImageStyleRoom.class);
		List<ImageStyleRoom> images = query.getResultList();
		return images;
	}
	
	public List<ImageStyleRoom> findByStyleRoom(String styleRoom)
	{
		return new ArrayList<>();
	}
	
	public ImageStyleRoom findStyleRoom(String styleRoom)
	{
		ImageStyleRoom imageStyleRoom = getSession().find(ImageStyleRoom.class, styleRoom);
		return imageStyleRoom;
	}
	
	public ImageStyleRoom findId(int id)
	{
		ImageStyleRoom imageStyleRoom = getSession().find(ImageStyleRoom.class, id);
		return imageStyleRoom;
	}
	
	public ImageStyleRoom create(ImageStyleRoom imageStyleRoom)
	{
		getSession().save(imageStyleRoom);
		return imageStyleRoom;
	}
	
	public ImageStyleRoom delete(ImageStyleRoom imageStyleRoom)
	{
		getSession().delete(imageStyleRoom);
		return imageStyleRoom;
	}
}
