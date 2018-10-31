package vn.com.java.controller;

import java.text.ParseException;
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
import vn.com.java.entity.Room;
import vn.com.java.model.BookingInformationModel;
import vn.com.java.model.RoomModel;
import vn.com.java.service.BookingInformationService;
import vn.com.java.service.RoomService;

@Controller
@RequestMapping("/manager-list")
public class RoomController 
{
	@Autowired
	private RoomService roomService;
	@Autowired
	private BookingInformationService bookingInformationService;

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
		else if(money == 0) {
			modelMap.put("ketqua4", "Bạn chưa nhập giá tiền!");
			return "manager-create-room";
		}
		
		if(result.hasErrors())
		{
			return "manager-create-room";
		}
		
		roomService.createRoom(roomModel);
		
		return "redirect:/manager-list";
	}
	
	/**
	 * admin book phong
	 * @param roomNo
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/booking", method = RequestMethod.GET)
	public String booking(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		Room room = roomService.find(roomNo);
		if(room == null)
		{
			return"redirect:/manager-list";
		}
		
		model.addAttribute("room", room);
		
		return "manager-booking-room";
	}
	
	
	/**
	 * submit booking
	 * @param bookingInformationModel
	 * @param result
	 * @param model
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value = "/booking", method = RequestMethod.POST)
	public String handleBookingManager(@RequestParam(name="roomNo")int roomNo, 
			@ModelAttribute("booking") BookingInformationModel bookingInformationModel, 
			BindingResult result, Model model) throws ParseException
	{
		bookingInformationService.createBookingInformationManager(bookingInformationModel);
		
		
		return "redirect:/manager-list";
	}
	
	@RequestMapping(value = "/view-room", method = RequestMethod.GET)
	public String view(@RequestParam(name="roomNo")int roomNo, Model model)
	{
//		BookingInformation bookingInformations = bookingInformationService.findRoomNo(roomNo);
//		model.addAttribute("room", bookingInformations);
		
		// lay thong tin phong
		
		
		// lay thong tin cua khach dat phong
		
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
	public String handleUpdate(@ModelAttribute("room") RoomModel roomModel,
			@RequestParam(name="bed")int bed, @RequestParam(name="airConditioner")int airConditioner, 
			@RequestParam(name="money")int money, BindingResult result, ModelMap modelMap)
	{
		
		if(bed == 0) {
			modelMap.put("ketqua2", "Bạn chưa cập nhật số lượng giường!");
			return "manager-update-room";
		}
		else if(airConditioner == 0) {
			modelMap.put("ketqua3", "Bạn chưa cập nhật số lượng máy lạnh!");
			return "manager-update-room";
		}
		else if(money == 0) {
			modelMap.put("ketqua4", "Bạn chưa cập nhật giá tiền!");
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
