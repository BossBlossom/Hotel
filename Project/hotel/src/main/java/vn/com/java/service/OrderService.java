package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.ProductDao;
import vn.com.java.entity.Product;
import vn.com.java.model.ProductModel;

@Service
@Transactional
public class OrderService {
	@Autowired
	private ProductDao productDao;
	
	public List<Product> search(int id)
	{
		if(id == 0)
		{
			return productDao.findAll();
		}
		return productDao.findById(id);
	}	
	
}
