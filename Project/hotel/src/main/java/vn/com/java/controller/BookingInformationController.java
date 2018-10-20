package vn.com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import vn.com.java.model.BookingInformationModel;
import vn.com.java.service.BookingInformationService;

@Controller
@RequestMapping("/rooms")
public class BookingInformationController 
{
	@Autowired
	private BookingInformationService bookingInformationService;
	
	@RequestMapping(value = "/booking", method = RequestMethod.POST)
	public String handleCreate(@ModelAttribute("booking") BookingInformationModel bookingInformationModel, BindingResult result, Model model)
	{
		bookingInformationService.createBookingInformation(bookingInformationModel);
		return "redirect:/rooms";
	}
}
