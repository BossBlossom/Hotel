package vn.com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CustomerController 
{
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String Home(Model model)
	{
		return "home";
	}
	
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
	
	@RequestMapping(value = "/gallery",method = RequestMethod.GET)
	public String Gallery(Model model)
	{
		return "gallery";
	}
	
	@RequestMapping(value = "/dinning",method = RequestMethod.GET)
	public String Dinning(Model model)
	{
		return "dinning";
	}
	
	@RequestMapping(value = "/rooms-view",method = RequestMethod.GET)
	public String Rooms_view(Model model)
	{
		return "rooms-view";
	}
	
	@RequestMapping(value = "/booking",method = RequestMethod.GET)
	public String Booking(Model model)
	{
		return "booking";
	}
}
