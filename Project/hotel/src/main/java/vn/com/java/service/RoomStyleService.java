package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.RoomStyleDao;
import vn.com.java.entity.RoomStyle;

@Service
@Transactional
public class RoomStyleService
{
	@Autowired
	private RoomStyleDao roomStyleDao;
	
	public List<RoomStyle> search(String roomStyleName)
	{
		if(roomStyleName == null)
		{
			return roomStyleDao.findAll();
		}
		return roomStyleDao.findByRoomStyleName(roomStyleName);
	}
	
	public RoomStyle findByName(String roomStyleName)
	{
		return roomStyleDao.findRoomStyleName(roomStyleName);
	}
	
	public RoomStyle findById(int id)
	{
		return roomStyleDao.findId(id);
	}
	
	public RoomStyle createStyle(RoomStyle roomStyle)
	{
		RoomStyle result = roomStyleDao.create(roomStyle);
		return result;
	}
	
	public RoomStyle deleteImage(RoomStyle roomStyle)
	{
		RoomStyle result = roomStyleDao.delete(roomStyle);
		return result;
	}
}
