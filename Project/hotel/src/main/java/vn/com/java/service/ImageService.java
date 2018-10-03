package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;
import javax.transaction.Transactional.TxType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.ImageDao;
import vn.com.java.entity.Image;

@Service
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
		return (List<Image>) imageDao.findById(id);
	}
	
	@Transactional(value=TxType.REQUIRED)
	public Image createImage(Image image)
	{
		Image result = imageDao.create(image);
		return result;
	}
	
	@Transactional(value=TxType.REQUIRED)
	public Image deleteImage(Image image)
	{
		Image result = imageDao.delete(image);
		return result;
	}
}
