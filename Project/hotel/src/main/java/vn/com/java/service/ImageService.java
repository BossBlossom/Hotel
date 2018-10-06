package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.ImageDao;
import vn.com.java.entity.Image;

@Service
@Transactional
public class ImageService 
{
	@Autowired
	private ImageDao imageDao;
	
	public List<Image> search(int id)
	{
		if(id <= 0)
		{
			return imageDao.findAll();
		}
		return imageDao.findById(id);
	}
	
	public Image find(int id)
	{
		return imageDao.findId(id);
	}
	
	public List<Image> findByRoom(int roomNo)
	{
		return imageDao.findByRoom(roomNo);
	}
	public Image createImage(Image image)
	{
		Image result = imageDao.create(image);
		return result;
	}
	
	public Image deleteImage(Image image)
	{
		Image result = imageDao.delete(image);
		return result;
	}
}
