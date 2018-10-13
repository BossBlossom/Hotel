package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.ImageStyleRoomDao;
import vn.com.java.entity.ImageStyleRoom;

@Service
@Transactional
public class ImageStyleRoomService 
{
	@Autowired
	private ImageStyleRoomDao imageStyleRoomDao;
	
	public List<ImageStyleRoom> search(String styleRoom)
	{
		if(styleRoom == null)
		{
			return imageStyleRoomDao.findAll();
		}
		return imageStyleRoomDao.findByStyleRoom(styleRoom);
	}
	
	public ImageStyleRoom find(String styleRoom)
	{
		return imageStyleRoomDao.findStyleRoom(styleRoom);
	}
	
	public ImageStyleRoom find(int id)
	{
		return imageStyleRoomDao.findId(id);
	}
	
	public ImageStyleRoom createImage(ImageStyleRoom imageStyleRoom)
	{
		ImageStyleRoom result = imageStyleRoomDao.create(imageStyleRoom);
		return result;
	}
	
	public ImageStyleRoom deleteImage(ImageStyleRoom imageStyleRoom)
	{
		ImageStyleRoom result = imageStyleRoomDao.delete(imageStyleRoom);
		return result;
	}
}
