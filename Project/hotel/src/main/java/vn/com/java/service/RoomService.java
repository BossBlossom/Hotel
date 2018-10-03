package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;
import javax.transaction.Transactional.TxType;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import vn.com.java.dao.RoomDao;
import vn.com.java.entity.Room;
@Service
public class RoomService 
{
	@Autowired
	private RoomDao roomDao;
	
	public List<Room> search(int roomNo)
	{
		if(roomNo <= 0)
		{
			return roomDao.findAll();
		}
		return (List<Room>) roomDao.findByRoom(roomNo);
	}
	
	@Transactional(value=TxType.REQUIRED)
	public Room createRoom(Room room)
	{
		Room result = roomDao.create(room);
		return result;
	}
	
	@Transactional(value=TxType.REQUIRED)
	public Room updateRoom(Room room)
	{
		Room result = roomDao.update(room);
		return result;
	}
	
	@Transactional(value=TxType.REQUIRED)
	public Room deleteRoom(Room room)
	{
		Room result = roomDao.delete(room);
		return result;
	}
}
