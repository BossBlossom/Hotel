package vn.com.java.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.BookingHistoryDao;
import vn.com.java.entity.BookingHistory;

@Service
@Transactional
public class BookingHistoryService {

	
	@Autowired
	private BookingHistoryDao bookingHistoryDao;
	
	public BookingHistory find(int roomNo, String status)
	{
		return bookingHistoryDao.find(roomNo, status);
	}
}
