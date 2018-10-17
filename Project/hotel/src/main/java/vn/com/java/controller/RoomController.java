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
import vn.com.java.model.CustomerModel;
import vn.com.java.model.RoomModel;
import vn.com.java.service.CustomerService;
import vn.com.java.service.RoomService;

@Controller
@RequestMapping("/manager-list")
public class RoomController 
{
	@Autowired
	private RoomService roomService;
	@Autowired
	private CustomerService customerService;

	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model)
	{
		List<Room> rooms = roomService.search(0);
		model.addAttribute("rooms", rooms);
		
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
	
	@RequestMapping(value = "/close", method = RequestMethod.GET)
	public String close(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		RoomModel roomModel = new RoomModel();
		
		roomModel.closeRoom(room);
		roomService.updateRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/check-in", method = RequestMethod.GET)
	public String checkIn(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		RoomModel roomModel = new RoomModel();
		
		roomModel.checkInRoom(room);
		roomService.updateRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/check-out", method = RequestMethod.GET)
	public String checkOut(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		RoomModel roomModel = new RoomModel();
		
		roomModel.checkOutRoom(room);
		roomService.updateRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/bill", method = RequestMethod.GET)
	public String bill(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		RoomModel roomModel = new RoomModel();
		
		roomModel.billRoom(room);
		roomService.updateRoom(roomModel);
		
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
	
	@RequestMapping(value = "/manager-delete-room", method = RequestMethod.GET)
	public String delete(@RequestParam(name="roomNo")int roomNo, @ModelAttribute("room") RoomModel roomModel, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			return "manager-list";
		}
		
		roomService.deleteRoom(roomModel);
		
		return "redirect:/manager-list";
	}
}
