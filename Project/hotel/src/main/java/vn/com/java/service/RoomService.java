package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import vn.com.java.dao.RoomDao;
import vn.com.java.dao.RoomStyleDao;
import vn.com.java.entity.Room;
import vn.com.java.model.RoomModel;

@Service
@Transactional
public class RoomService 
{
	@Autowired
	private RoomDao roomDao;
	@Autowired
	private RoomStyleDao roomStyleDao;
	
	public List<Room> search(int roomNo)
	{
		if(roomNo <= 0)
		{
			return roomDao.findAll();
		}
		return roomDao.findByRoom(roomNo);
	}
	
	public Room find(int roomNo)
	{
		return roomDao.find(roomNo);
	}
	
	public Room createRoom(RoomModel roomModel)
	{
		Room room = new Room();
		roomModel.toRoom(room);
		
		int roomStyleId = roomModel.getRoomStyleId();
		room.setRoomStyleId(roomStyleDao.findId(roomStyleId));
		
		Room result = roomDao.create(room);
		return result;
	}
	
	public Room closedRoom(int roomNo)
	{
		Room room = roomDao.find(roomNo);
		room.setStatus("closed");
		
		Room result = roomDao.update(room);
		return result;
	}
	
	public Room openRoom(int roomNo)
	{
		Room room = roomDao.find(roomNo);
		room.setStatus("none");
		
		Room result = roomDao.update(room);
		return result;
	}
	
	public Room checkInRoom(int roomNo)
	{
		Room room = roomDao.find(roomNo);
		room.setStatus("check in");
		
		Room result = roomDao.update(room);
		return result;
	}
	
	public Room checkOutRoom(int roomNo)
	{
		Room room = roomDao.find(roomNo);
		room.setStatus("check out");
		
		Room result = roomDao.update(room);
		return result;
	}
	
	public Room billRoom(int roomNo)
	{
		Room room = roomDao.find(roomNo);
		room.setStatus("none");
		
		Room result = roomDao.update(room);
		return result;
	}
	
	public Room updateRoom(RoomModel roomModel)
	{
		Room room = new Room();
		roomModel.toRoom(room);
		
		int roomStyleId = roomModel.getRoomStyleId();
		room.setRoomStyleId(roomStyleDao.findId(roomStyleId));
		
		Room result = roomDao.update(room);
		return result;
	}
	
	public Room deleteRoom(int roomNo)
	{
		Room room = roomDao.find(roomNo);
		
		Room result = roomDao.delete(room);
		return result;
	}
}
