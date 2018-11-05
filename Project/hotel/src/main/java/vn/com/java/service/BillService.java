package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.BillDao;
import vn.com.java.entity.Bill;
import vn.com.java.model.CheckOutModel;

@Service
@Transactional

public class BillService 
{
	@Autowired
	private BillDao billDao;
	
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

		// update room
		// update bill
		// update booking history
		
	}
}
