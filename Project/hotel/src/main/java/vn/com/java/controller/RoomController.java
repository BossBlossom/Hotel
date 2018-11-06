package vn.com.java.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import vn.com.java.entity.Bill;
import vn.com.java.entity.BookingHistory;
import vn.com.java.entity.BookingInformation;
import vn.com.java.entity.Room;
import vn.com.java.entity.RoomStyle;
import vn.com.java.model.BookingInformationModel;
import vn.com.java.model.CheckOutModel;
import vn.com.java.model.RoomModel;
import vn.com.java.service.BillService;
import vn.com.java.service.BookingHistoryService;
import vn.com.java.service.BookingInformationService;
import vn.com.java.service.RoomService;
import vn.com.java.service.RoomStyleService;

@Controller
@RequestMapping("/manager-list")
public class RoomController 
{
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private RoomStyleService roomStyleService;
	
	@Autowired
	private BookingInformationService bookingInformationService;
	
	@Autowired
	private BillService billService;
	
	@Autowired
	private BookingHistoryService historyService;
	
	private final int timePerDay = 24 * 60 * 60 * 1000;
	
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
		List<RoomStyle> roomStyles = roomStyleService.search(null);
		model.addAttribute("room", roomModel);
		model.addAttribute("roomStyles", roomStyles);
		
		return "manager-create-room";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String handleCreate(@ModelAttribute("room") RoomModel roomModel, 
			@RequestParam(name="roomNo")int roomNo, @RequestParam(name="bed")int bed, 
			@RequestParam(name="airConditioner")int airConditioner,
			BindingResult result, ModelMap modelMap)
	{
		Room rooms = roomService.find(roomNo);
		if(rooms != null)
		{
			modelMap.put("ketqua", "Số phòng này đã tồn tại!");
			return "manager-create-room";
		}
		
		if(roomNo == 0) {
			modelMap.put("ketqua", "Bạn chưa nhập số phòng!");
			return "manager-create-room";
		}
		else if(bed == 0) {
			modelMap.put("ketqua2", "Bạn chưa nhập số lượng giường!");
			return "manager-create-room";
		}
		else if(airConditioner == 0) {
			modelMap.put("ketqua3", "Bạn chưa nhập số lượng máy lạnh!");
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
	
	
	@RequestMapping(value = "/cancel", method = RequestMethod.GET)
	public String checkCancel(@RequestParam(name="roomNo")int roomNo, 
			@ModelAttribute("booking") BookingInformationModel bookingInformationModel,
			BindingResult result, Model model)
	{
		bookingInformationService.checkCancelBookingInformationCustomer(bookingInformationModel);
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/check-out", method = RequestMethod.GET)
	public String bill(@RequestParam(name="roomNo")int roomNo, Model model, HttpServletRequest request)
	{
		Bill bill = billService.find(roomNo, "none");
		BookingHistory history = historyService.find(roomNo, "none");
		
		CheckOutModel checkout = new CheckOutModel();
		checkout.setRoomNo(history.getRoom().getRoomNo());
		checkout.setCheckIn(history.getCheckIn());
		checkout.setCheckOut(new Date());
		
		long diff = checkout.getCheckOut().getTime() - checkout.getCheckIn().getTime();
		int diffDays = (int) diff / timePerDay;
		if (diff % timePerDay != 0) {
			diffDays++;
		}
		checkout.setCount(diffDays);
		int roomTotal = diffDays * history.getPrice();
		checkout.setRoomTotal(roomTotal);
		checkout.setServiceTotal(bill.getServiceTotal());
		checkout.setTotal(checkout.getServiceTotal() + checkout.getRoomTotal());
		
		model.addAttribute("checkout", checkout);
		request.getSession().setAttribute("checkout"+checkout.getRoomNo(), checkout);
		
		return "check-out";
	}
	
	@RequestMapping(value = "/check-out", method = RequestMethod.POST)
	public String handleBill(@RequestParam(name="roomNo")int roomNo, HttpServletRequest request)
	{
		CheckOutModel checkout = (CheckOutModel) request.getSession().getAttribute("checkout"+roomNo);
		
		billService.checkout(checkout);
		
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
		
		List<RoomStyle> roomStyles = roomStyleService.search(null);
		RoomModel roomModel = new RoomModel();
		roomModel.fromRoom(room);
		
		model.addAttribute("room", roomModel);
		model.addAttribute("roomStyles", roomStyles);
		
		return "manager-update-room";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String handleUpdate(@ModelAttribute("room") RoomModel roomModel,
			@RequestParam(name="bed")int bed, @RequestParam(name="airConditioner")int airConditioner, 
			BindingResult result, ModelMap modelMap, Model model)
	{
		
		if(bed == 0) {
			modelMap.put("ketqua2", "Bạn chưa cập nhật số lượng giường!");
			List<RoomStyle> roomStyles = roomStyleService.search(null);
			
			model.addAttribute("room", roomModel);
			model.addAttribute("roomStyles", roomStyles);
			return "manager-update-room";
		}
		else if(airConditioner == 0) {
			modelMap.put("ketqua3", "Bạn chưa cập nhật số lượng máy lạnh!");
			List<RoomStyle> roomStyles = roomStyleService.search(null);
			
			model.addAttribute("room", roomModel);
			model.addAttribute("roomStyles", roomStyles);
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
	
}
