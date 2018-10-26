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
	
	public List<Product> search(int id)
	{
		if(id == 0)
		{
			return productDao.findAll();
		}
		return productDao.findById(id);
	}
	
	public Product find(int id)
	{
		return productDao.find(id);
	}
	
	public Product createProduct(ProductModel productModel)
	{
		Product product = new Product();
		productModel.toProduct(product);
		
		Product result = productDao.create(product);
		return result;
	}
	
	public Product updateProduct(ProductModel productModel) 
	{
		Product product = new Product();
		productModel.toProduct(product);
		
		Product result = productDao.update(product);
		return result;
	}
	
	public Product deleteProduct(ProductModel productModel) 
	{
		Product product = new Product();
		productModel.toProduct(product);
		
		Product result = productDao.update(product);
		return result;
	}
}
