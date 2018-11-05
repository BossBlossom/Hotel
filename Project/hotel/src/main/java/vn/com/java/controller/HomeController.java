package vn.com.java.controller;

import java.text.ParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.com.java.entity.Room;
import vn.com.java.model.BookingInformationModel;
import vn.com.java.service.BookingInformationService;
import vn.com.java.service.RoomService;

@Controller
@RequestMapping("/")
public class HomeController 
{
	
	@Autowired
    private AuthenticationTrustResolver authenticationTrustResolver;
	@Autowired
	private BookingInformationService bookingInformationService;
	
	@Autowired
	private RoomService roomService;
	
	@GetMapping
	public String index(Model model) {
		BookingInformationModel bookingInformationModel = new BookingInformationModel();
		model.addAttribute("booking", bookingInformationModel);
		
		List<Room> rooms = roomService.findAll();
		model.addAttribute("rooms", rooms);
		
		return "rooms";
	}
	
	@RequestMapping(value = "/booking", method = RequestMethod.POST)
	public String handleBookingCustomer(@ModelAttribute("booking") BookingInformationModel bookingInformationModel, BindingResult result, Model model) throws ParseException
	{
		bookingInformationService.createBookingInformationCustomer(bookingInformationModel);
		
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/about",method = RequestMethod.GET)
	public String About(Model model)
	{
		return "about";
	}
	
	@RequestMapping(value = "/home",method = RequestMethod.GET)
	public String Rooms(Model model)
	{
		return "redirect:/";
	}
	
	@RequestMapping(value = "/services",method = RequestMethod.GET)
	public String Test(Model model)
	{
		return "services";
	}
	
	@RequestMapping(value = "/gun",method = RequestMethod.GET)
	public String Gun(Model model)
	{
		return "gun";
	}
	
	@GetMapping(value = "/login")
	public String Login() 
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authenticationTrustResolver.isAnonymous(authentication))
		{
			return "login";
		}
			
		
		return "redirect:/manager-list";
	}
	
	@GetMapping(value = "/login-success")
	public String LoginSuccess() 
	{
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication != null)
			SecurityContextHolder.getContext().setAuthentication(null);
			
		return "redirect:/login?logout=true";
	}
	
	@RequestMapping(value = "/denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model)
	{
		return "denied";
	}
}
