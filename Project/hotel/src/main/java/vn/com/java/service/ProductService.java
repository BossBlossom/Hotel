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
public class ProductService {
	@Autowired
	private ProductDao productDao;
	
	public List<Product> search(String product)
	{
		if(product == null)
		{
			return productDao.findAll();
		}
		return productDao.findByProduct(product);
	}
	
	public Product createOrder(ProductModel productModel)
	{
		Product product = new Product();
		productModel.toProduct(product);
		
		Product result = productDao.create(product);
		return result;
	}
	
	public Product updateOrder(ProductModel productModel) 
	{
		Product product = new Product();
		productModel.toProduct(product);
		
		Product result = productDao.update(product);
		return result;
	}
	
	public Product deleteOrder(ProductModel productModel) 
	{
		Product product = new Product();
		productModel.toProduct(product);
		
		Product result = productDao.update(product);
		return result;
	}
}
