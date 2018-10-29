package vn.com.java.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.BookingInformationDao;
import vn.com.java.dao.CustomerDao;
import vn.com.java.dao.RoomDao;
import vn.com.java.entity.BookingInformation;
import vn.com.java.entity.Customer;
import vn.com.java.entity.Room;
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
	
	public List<BookingInformation> search(int roomNo)
	{
		if(roomNo<=0)
		{
			return bookingInformationDao.findAll();
		}
		return bookingInformationDao.findAllByRoom(roomNo);
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
		bookingInformationModel.toBookingInformation(bookingInformation);
		bookingInformation.setCustomer(customer);
		bookingInformation.setRoom(room);
		
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
		bookingInformationModel.toBookingInformation(bookingInformation);
		bookingInformation.setCustomer(customer);
		bookingInformation.setRoom(room);
		
		BookingInformation result = bookingInformationDao.create(bookingInformation);
		
		return result;
	}
}
