package vn.com.java.dao;

import java.util.ArrayList;
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
	
	private Session getSession()
	{
		return sessionFactory.getCurrentSession();
	}
	public List<Image> findAll()
	{
		TypedQuery<Image> query = getSession().createQuery("FROM Image", Image.class);
		List<Image> images = query.getResultList();
		return images;
	}
	
	public List<Image> findById(int id)
	{
		return new ArrayList<>();
	}
	
	public Image create(Image image)
	{
		getSession().save(image);
		return image;
	}
	
	public Image delete(Image image)
	{
		getSession().delete(image);
		return image;
	}
}
