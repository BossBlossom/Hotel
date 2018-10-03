package vn.com.java.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vn.com.java.entity.Image;

@Repository
public class ImageDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Image> findAll()
	{
		Session session = sessionFactory.openSession();
		TypedQuery<Image> query = session.createQuery("FROM Image", Image.class);
		List<Image> images = query.getResultList();
		return images;
	}
	
	public Image findById(int id)
	{
		return sessionFactory.openSession().find(Image.class, id);
	}
	
	public Image create(Image image)
	{
		Session session = sessionFactory.openSession();
		session.save(image);
		session.close();
		return image;
	}
	
	public Image delete(Image image)
	{
		Session session = sessionFactory.openSession();
		session.delete(image);
		session.close();
		return image;
	}
}
