package vn.com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vn.com.java.entity.Room;
import vn.com.java.entity.RoomStyle;
import vn.com.java.model.CustomerModel;
import vn.com.java.model.RoomModel;
import vn.com.java.service.CustomerService;
import vn.com.java.service.RoomService;
import vn.com.java.service.RoomStyleService;

@Controller
@RequestMapping("/manager-list")
public class RoomController 
{
	@Autowired
	private RoomService roomService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private RoomStyleService roomStyleService;

	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model)
	{
		List<Room> rooms = roomService.search(0);
		model.addAttribute("rooms", rooms);
		
		List<RoomStyle> styles = roomStyleService.search(null);
		model.addAttribute("styles", styles);
		
		return "manager-list";
	}
	
	@RequestMapping(value="/create", method = RequestMethod.GET)
	public String create(Model model)
	{
		RoomModel roomModel = new RoomModel();
		model.addAttribute("room", roomModel);
		
		return "manager-create-room";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String handleCreate(@ModelAttribute("room") RoomModel roomModel, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			return "manager-create-room";
		}
		
		roomService.createRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value="/customer-create", method = RequestMethod.GET)
	public String createCustomer(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		CustomerModel customerModel = new CustomerModel();
		model.addAttribute("customer", customerModel);
		
		return "customer-create";
	}
	
	@RequestMapping(value = "/customer-create", method = RequestMethod.POST)
	public String handleCreateCustomer(@RequestParam(name="roomNo")int roomNo, @ModelAttribute("customer") CustomerModel customerModel, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			return "customer-create";
		}
		
		customerService.createCustomer(customerModel);
		
		return "/booking-information";
	}
	
	@RequestMapping(value = "/view-room", method = RequestMethod.GET)
	public String view(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		if(room == null)
		{
			return"redirect:/manager-list";
		}
		
		RoomModel roomModel = new RoomModel();
		roomModel.fromRoom(room);
		
		model.addAttribute("room", roomModel);
		
		return "manager-view-room";
	}
	
	@RequestMapping(value = "/closed", method = RequestMethod.GET)
	public String close(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		
		roomService.closedRoom(roomNo);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/open", method = RequestMethod.GET)
	public String open(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		
		roomService.openRoom(roomNo);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/check-in", method = RequestMethod.GET)
	public String checkIn(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		roomService.checkInRoom(roomNo);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/check-out", method = RequestMethod.GET)
	public String checkOut(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		roomService.checkOutRoom(roomNo);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/bill", method = RequestMethod.GET)
	public String bill(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		roomService.billRoom(roomNo);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		if(room == null)
		{
			return"redirect:/manager-list";
		}
		
		RoomModel roomModel = new RoomModel();
		roomModel.fromRoom(room);
		
		model.addAttribute("room", roomModel);
		
		return "manager-update-room";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String handleUpdate(@RequestParam(name="roomNo")int roomNo, @ModelAttribute("room") RoomModel roomModel, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			return "manager-update-room";
		}
		
		roomService.updateRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		
		roomService.deleteRoom(roomNo);
		
		return "redirect:/manager-list";
	}
}
