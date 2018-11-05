package vn.com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import vn.com.java.dao.BillDetailDao;
import vn.com.java.dao.ProductDao;
import vn.com.java.dao.RoomDao;
import vn.com.java.entity.BillDetail;
import vn.com.java.entity.Product;
import vn.com.java.entity.Room;
import vn.com.java.model.BillDetailModel;

public class BillDetailService 
{
	@Autowired
	private RoomDao roomDao;
	
	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private BillDetailDao billDetailDao;
	
	public List<BillDetail> search(int id)
	{
		if(id<=0)
		{
			return billDetailDao.findAll();
		}
		
		return billDetailDao.findAllById(id);
	}
	
	public BillDetail findRoomNo(int roomNo)
	{
		return billDetailDao.findByRoom(roomNo);
	}
	
	public BillDetail order(BillDetailModel billDetailModel)
	{
		Room room = roomDao.find(billDetailModel.getRoomNo());
		Product product = productDao.find(billDetailModel.getProductId());
		
		BillDetail billDetail = new BillDetail();
		billDetail.setRoom(room);
		billDetail.setProduct(product);
		billDetail.setQuantum(billDetailModel.getQuantum());
		billDetail.setPrice(product.getPrice());
		billDetail.setTotal(billDetailModel.getQuantum()*product.getPrice());
		billDetail.setStatus("none");
				
		BillDetail result = billDetailDao.create(billDetail);
		return result;
	}
}
