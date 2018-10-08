package vn.com.java.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import vn.com.java.dao.CustomerDao;
import vn.com.java.entity.Customer;
import vn.com.java.model.CustomerModel;

@Service
@Transactional
public class CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	public List<Customer> search(int cmndNo)
	{
		if(cmndNo <= 0 )
		{
			return customerDao.findAll();
		}
		return customerDao.findByCmnd(cmndNo);
	}
	
	public Customer findByName(String name)
	{
		return customerDao.findByName(name);
	}
	
	public Customer createCustomer(CustomerModel customerModel)
	{
		Customer customer = new Customer();
		customerModel.toCustomer(customer);
		
		Customer result = customerDao.create(customer);
		return result;
	}
	
	public Customer updateCustomer(CustomerModel customerModel)
	{
		Customer customer = new Customer();
		customerModel.toCustomer(customer);
		
		Customer result = customerDao.update(customer);
		return result;
	}
	
	public Customer deleteCustomer(CustomerModel customerModel)
	{
		Customer customer = new Customer();
		customerModel.toCustomer(customer);
		
		Customer result = customerDao.delete(customer);
		return result;
	}
}
