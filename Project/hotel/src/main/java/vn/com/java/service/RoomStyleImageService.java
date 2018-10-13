package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.RoomStyleImageDao;
import vn.com.java.entity.RoomStyleImage;

@Service
@Transactional
public class RoomStyleImageService 
{
	@Autowired
	private RoomStyleImageDao roomStyleImageDao;
	
	public List<RoomStyleImage> search(String roomStyle)
	{
		if(roomStyle == null)
		{
			return roomStyleImageDao.findAll();
		}
		return roomStyleImageDao.findByStyleRoom(roomStyle);
	}
	
	public RoomStyleImage find(String roomStyle)
	{
		return roomStyleImageDao.findStyleRoom(roomStyle);
	}
	
	public RoomStyleImage find(int id)
	{
		return roomStyleImageDao.findId(id);
	}
	
	public RoomStyleImage createImage(RoomStyleImage roomStyleImage)
	{
		RoomStyleImage result = roomStyleImageDao.create(roomStyleImage);
		return result;
	}
	
	public RoomStyleImage deleteImage(RoomStyleImage roomStyleImage)
	{
		RoomStyleImage result = roomStyleImageDao.delete(roomStyleImage);
		return result;
	}
}
