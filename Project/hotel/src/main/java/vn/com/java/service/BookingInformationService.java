package vn.com.java.service;

import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.BillDao;
import vn.com.java.dao.BookingHistoryDao;
import vn.com.java.dao.BookingInformationDao;
import vn.com.java.dao.CustomerDao;
import vn.com.java.dao.RoomDao;
import vn.com.java.dao.RoomStyleDao;
import vn.com.java.entity.Bill;
import vn.com.java.entity.BookingHistory;
import vn.com.java.entity.BookingInformation;
import vn.com.java.entity.Customer;
import vn.com.java.entity.Room;
import vn.com.java.entity.RoomStyle;
import vn.com.java.model.BookingInformationModel;

@Service
@Transactional
public class BookingInformationService 
{
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	private CustomerDao customerDao;
	
	@Autowired
	private BookingInformationDao bookingInformationDao;
	
	@Autowired
	private RoomStyleDao roomStyleDao;
	
	@Autowired
	private BookingHistoryDao bookingHistoryDao;
	
	@Autowired
	private BillDao billDao;
	
	public List<BookingInformation> search(int id)
	{
		if(id<=0)
		{
			return bookingInformationDao.findAll();
		}

		return bookingInformationDao.findAllById(id);
	}
	
	public BookingInformation findRoomNo(int roomNo)
	{
		return bookingInformationDao.findByRoom(roomNo);
	}
	
	public BookingInformation createBookingInformationCustomer(BookingInformationModel bookingInformationModel)
	{	
		Customer customer = new Customer();
		bookingInformationModel.toCustomer(customer);
		customerDao.create(customer);
		
		Room room = roomDao.find(bookingInformationModel.getRoomNo());
		room.setStatus("customer");
		roomDao.update(room);
		
		BookingInformation bookingInformation = new BookingInformation();
		bookingInformation.setStartedAt(bookingInformationModel.getStartedAt());
		bookingInformation.setCustomer(customer);
		bookingInformation.setRoom(room);
		bookingInformation.setStatus("none");
		BookingInformation result = bookingInformationDao.create(bookingInformation);
		
		return result;
	}
	
	public BookingInformation createBookingInformationManager(BookingInformationModel bookingInformationModel)
	{	
		Customer customer = new Customer();
		bookingInformationModel.toCustomer(customer);
		customerDao.create(customer);
		
		Room room = roomDao.find(bookingInformationModel.getRoomNo());
		room.setStatus("check in");
		roomDao.update(room);
		
		BookingInformation bookingInformation = new BookingInformation();
		bookingInformation.setStartedAt(bookingInformationModel.getStartedAt());
		bookingInformation.setCustomer(customer);
		bookingInformation.setRoom(room);
		bookingInformation.setStatus("none");
		BookingInformation result = bookingInformationDao.create(bookingInformation);
		
		RoomStyle roomStyle = roomStyleDao.findId(room.getRoomStyle().getId());
		
		BookingHistory bookingHistory = new BookingHistory();
		bookingHistory.setCheckIn(new Date());
		bookingHistory.setPrice(roomStyle.getPrice());
		bookingHistory.setCustomer(customer);
		bookingHistory.setDayTotal(1);
		bookingHistory.setRoom(room);
		bookingHistoryDao.create(bookingHistory);
		
		return result;
	}
	
	public BookingInformation checkInBookingInformationCustomer(BookingInformationModel bookingInformationModel)
	{	
		BookingInformation bookingInformation = bookingInformationDao.findByRoom(bookingInformationModel.getRoomNo());
		
		Customer customer = customerDao.findById(bookingInformation.getCustomer().getId());
		
		Room room = roomDao.find(bookingInformationModel.getRoomNo());
		room.setStatus("check in");
		roomDao.update(room);
		
		
		bookingInformation.setStatus("none");
		BookingInformation result = bookingInformationDao.update(bookingInformation);
		
		RoomStyle roomStyle = roomStyleDao.findId(room.getRoomStyle().getId());
		
		BookingHistory bookingHistory = new BookingHistory();
		bookingHistory.setCheckIn(new Date());
		bookingHistory.setPrice(roomStyle.getPrice());
		bookingHistory.setCustomer(customer);
		bookingHistory.setDayTotal(1);
		bookingHistory.setRoom(room);
		bookingHistoryDao.create(bookingHistory);
		
		return result;
	}
	
	public BookingInformation checkOutBookingInformationManager(BookingInformationModel bookingInformationModel)
	{	
		BookingInformation bookingInformation = bookingInformationDao.findByRoom(bookingInformationModel.getRoomNo());
		
		Room room = roomDao.find(bookingInformationModel.getRoomNo());
		room.setStatus("check out");
		roomDao.update(room);
		
		
		bookingInformation.setStatus("history");
		BookingInformation result = bookingInformationDao.update(bookingInformation);
		
		BookingHistory bookingHistory = bookingHistoryDao.findByRoom(bookingInformationModel.getRoomNo());
		Date currentDate = new Date();
		bookingHistory.setCheckOut(currentDate);
		
		long days = TimeUnit.MILLISECONDS.toDays(Math.abs(currentDate.getTime() - bookingHistory.getCheckIn().getTime()));
		if (days < 1) {
			bookingHistory.setDayTotal(1);
		} else {
			bookingHistory.setDayTotal((int)days);
		}
		bookingHistoryDao.update(bookingHistory);
		
		Bill bill = new Bill();
		bill.setBookingInformation(bookingInformation);
		bill.setRoom(room);
		bill.setRoomTotal(bookingHistory.getDayTotal()*bookingHistory.getPrice());
		bill.setStatus("none");
		billDao.create(bill);
		
		return result;
	}
	
	public BookingInformation checkCancelBookingInformationCustomer(BookingInformationModel bookingInformationModel)
	{	
		BookingInformation bookingInformation = bookingInformationDao.findByRoom(bookingInformationModel.getRoomNo());
		
		Room room = roomDao.find(bookingInformationModel.getRoomNo());
		room.setStatus("none");
		roomDao.update(room);
		
		
		bookingInformation.setStatus("cancel");
		BookingInformation result = bookingInformationDao.update(bookingInformation);
		
		return result;
	}
}
