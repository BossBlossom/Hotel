package vn.com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CustomerController 
{
	
	@RequestMapping(value = "/about",method = RequestMethod.GET)
	public String About(Model model)
	{
		return "about";
	}
	
	@RequestMapping(value = "/rooms",method = RequestMethod.GET)
	public String Rooms(Model model)
	{
		return "rooms";
	}
	
	@RequestMapping(value = "/services",method = RequestMethod.GET)
	public String Test(Model model)
	{
		return "services";
	}
}
