package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.BillDao;
import vn.com.java.dao.BookingHistoryDao;
import vn.com.java.dao.RoomDao;
import vn.com.java.entity.Bill;
import vn.com.java.entity.BookingHistory;
import vn.com.java.entity.Room;
import vn.com.java.model.CheckOutModel;

@Service
@Transactional

public class BillService 
{
	@Autowired
	private BillDao billDao;
	
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	private BookingHistoryDao bookingHistoryDao;
	
	public List<Bill> search(int id)
	{
		if(id<=0)
		{
			return billDao.findAll();
		}
		return billDao.findAllById(id);
	}
	
	public Bill findRoomNo(int roomNo)
	{
		return billDao.findByRoom(roomNo);
	}
	
	public Bill find(int roomNo, String status)
	{
		return billDao.find(roomNo, status);
	}
	
	public void checkout(CheckOutModel model) {

		Room room = roomDao.find(model.getRoomNo());
		room.setStatus("none");
		roomDao.update(room);
		
		Bill bill = billDao.find(model.getRoomNo(), "none");
		bill.setStatus("history");
		bill.setRoomTotal(model.getRoomTotal());
		billDao.update(bill);
		
		BookingHistory bookingHistory = bookingHistoryDao.find(model.getRoomNo(), "none");
		bookingHistory.setStatus("history");
		bookingHistory.setCheckOut(model.getCheckOut());
		bookingHistoryDao.update(bookingHistory);
	}
}
