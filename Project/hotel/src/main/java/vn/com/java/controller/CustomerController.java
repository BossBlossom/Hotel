package vn.com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.com.java.model.CustomerModel;
import vn.com.java.service.CustomerService;


@Controller
@RequestMapping("/customer")
public class CustomerController 
{
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(method = RequestMethod.GET )
	public String create(Model model)
	{
		CustomerModel customerModel = new CustomerModel();
		model.addAttribute("customer", customerModel);
		return "booking-information";
	}
	
	
	@RequestMapping(value = "booking-online", method = RequestMethod.POST )
	public String booking(Model model)
	{
		return "booking-information";
	}
}
