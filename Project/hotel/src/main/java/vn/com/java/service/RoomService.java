package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import vn.com.java.dao.BillDao;
import vn.com.java.dao.BillDetailDao;
import vn.com.java.dao.BookingHistoryDao;
import vn.com.java.dao.RoomDao;
import vn.com.java.dao.RoomStyleDao;
import vn.com.java.entity.Bill;
import vn.com.java.entity.BillDetail;
import vn.com.java.entity.BookingHistory;
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
	
	@Autowired
	private BillDao billDao;
	
	@Autowired
	private BookingHistoryDao bookingHistoryDao;
	
	@Autowired
	private BillDetailDao billDetailDao;
	
	public List<Room> findAll() {
		return roomDao.findAll();
	}
	
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
		room.setRoomStyle(roomStyleDao.findId(roomStyleId));
		
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
		
		Bill bill = billDao.findByRoom(roomNo);
		bill.setStatus("histoty");
		billDao.update(bill);
		
		BookingHistory bookingHistory = bookingHistoryDao.findByRoom(roomNo);
		if(bookingHistory.getStatus() == "none")
		{
			bookingHistory.setStatus("history");
		}
		
		BillDetail billDetail = billDetailDao.findByRoom(roomNo);
		if(billDetail.getStatus() == "none")
		{
			billDetail.setStatus("history");
		}
		
		Room result = roomDao.update(room);
		return result;
	}
	
	public Room updateRoom(RoomModel roomModel)
	{
		Room room = new Room();
		roomModel.toRoom(room);
		
		int roomStyleId = roomModel.getRoomStyleId();
		room.setRoomStyle(roomStyleDao.findId(roomStyleId));
		
		Room result = roomDao.update(room);
		return result;
	}
	
	public Room deleteRoom(RoomModel roomModel)
	{
		Room room = new Room();
		roomModel.toRoom(room);
		
		Room result = roomDao.delete(room);
		return result;
	}
}
