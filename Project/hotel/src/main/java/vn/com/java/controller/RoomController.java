package vn.com.java.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vn.com.java.entity.BookingInformation;
import vn.com.java.entity.Product;
import vn.com.java.entity.Room;
import vn.com.java.model.BookingInformationModel;
import vn.com.java.model.RoomModel;
import vn.com.java.service.BookingInformationService;
import vn.com.java.service.ProductService;
import vn.com.java.service.RoomService;

@Controller
@RequestMapping("/manager-list")
public class RoomController 
{
	@Autowired
	private RoomService roomService;
	@Autowired
	private BookingInformationService bookingInformationService;
	@Autowired
	private ProductService productService;

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
	public String handleCreate(@ModelAttribute("room") RoomModel roomModel, 
			@RequestParam(name="roomNo")int roomNo, @RequestParam(name="bed")int bed, 
			@RequestParam(name="airConditioner")int airConditioner, @RequestParam(name="money")int money,
			BindingResult result, ModelMap modelMap)
	{
		Room rooms = roomService.find(roomNo);
		if(rooms != null)
		{
			modelMap.put("ketqua", "Sá»‘ phÃ²ng nÃ y Ä‘Ã£ tá»“n táº¡i!");
			return "manager-create-room";
		}
		
		if(roomNo == 0) {
			modelMap.put("ketqua", "Báº¡n chÆ°a nháº­p sá»‘ phÃ²ng!");
			return "manager-create-room";
		}
		else if(bed == 0) {
			modelMap.put("ketqua2", "Báº¡n chÆ°a nháº­p sá»‘ lÆ°á»£ng giÆ°á»�ng!");
			return "manager-create-room";
		}
		else if(airConditioner == 0) {
			modelMap.put("ketqua3", "Báº¡n chÆ°a nháº­p sá»‘ lÆ°á»£ng mÃ¡y láº¡nh!");
			return "manager-create-room";
		}
		else if(money == 0) {
			modelMap.put("ketqua4", "Báº¡n chÆ°a nháº­p giÃ¡ tiá»�n!");
			return "manager-create-room";
		}
		
		if(result.hasErrors())
		{
			return "manager-create-room";
		}
		
		roomService.createRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value="/booking", method = RequestMethod.GET)
	public String booking(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		if(room == null)
		{
			return"redirect:/manager-list";
		}
		
		RoomModel roomModel = new RoomModel();
		roomModel.fromRoom(room);
		BookingInformationModel bookingInformationModel = new BookingInformationModel();
		
		model.addAttribute("room", room);
		model.addAttribute("booking", bookingInformationModel);
		
		return "manager-booking-room";
	}

	@RequestMapping(value = "/booking", method = RequestMethod.POST)
	public String handleBookingManager(@RequestParam(name="roomNo")int roomNo, 
			@ModelAttribute("booking") BookingInformationModel bookingInformationModel, 
			BindingResult result, Model model)
	{
		bookingInformationService.createBookingInformationManager(bookingInformationModel);
		
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/view-room", method = RequestMethod.GET)
	public String view(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		List<BookingInformation> bookingInformations = bookingInformationService.search(0);
		model.addAttribute("room", room);
		model.addAttribute("bookingInformations", bookingInformations);
		
		return "view-room";
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
	public String checkIn(@RequestParam(name="roomNo")int roomNo, 
			@ModelAttribute("booking") BookingInformationModel bookingInformationModel,
			BindingResult result, Model model)
	{
		bookingInformationService.checkInBookingInformationCustomer(bookingInformationModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/check-out", method = RequestMethod.GET)
	public String checkOut(@RequestParam(name="roomNo")int roomNo, 
			@ModelAttribute("booking") BookingInformationModel bookingInformationModel,
			BindingResult result, Model model)
	{
		bookingInformationService.checkOutBookingInformationManager(bookingInformationModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/cancel", method = RequestMethod.GET)
	public String checkCancel(@RequestParam(name="roomNo")int roomNo, 
			@ModelAttribute("booking") BookingInformationModel bookingInformationModel,
			BindingResult result, Model model)
	{
		bookingInformationService.checkCancelBookingInformationCustomer(bookingInformationModel);
		
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
	public String handleUpdate(@ModelAttribute("room") RoomModel roomModel,
			@RequestParam(name="bed")int bed, @RequestParam(name="airConditioner")int airConditioner, 
			@RequestParam(name="money")int money, BindingResult result, ModelMap modelMap)
	{
		
		if(bed == 0) {
			modelMap.put("ketqua2", "Báº¡n chÆ°a cáº­p nháº­t sá»‘ lÆ°á»£ng giÆ°á»�ng!");
			return "manager-update-room";
		}
		else if(airConditioner == 0) {
			modelMap.put("ketqua3", "Báº¡n chÆ°a cáº­p nháº­t sá»‘ lÆ°á»£ng mÃ¡y láº¡nh!");
			return "manager-update-room";
		}
		else if(money == 0) {
			modelMap.put("ketqua4", "Báº¡n chÆ°a cáº­p nháº­t giÃ¡ tiá»�n!");
			return "manager-update-room";
		}
		
		if(result.hasErrors())
		{
			return "manager-update-room";
		}
		
		roomService.updateRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@RequestParam(name="roomNo")int roomNo, @ModelAttribute("room") RoomModel roomModel, BindingResult result, Model model)
	{
		
		roomService.deleteRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String order(@RequestParam(name="roomNo")int roomNo, BindingResult result, Model model)
	{
		Room room = roomService.find(roomNo);
		if(room == null)
		{
			return"redirect:/manager-list";
		}
		
		RoomModel roomModel = new RoomModel();
		roomModel.fromRoom(room);
		
		List<Product> product = productService.search(0);
		model.addAttribute("room", room);
		model.addAttribute("product", product);
		
		return "order";
	}
}
