package vn.com.java.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vn.com.java.entity.RoomStyleImage;
import vn.com.java.service.RoomStyleImageService;

@Controller
@RequestMapping("/image-style-room")
public class RoomStyleImageController 
{
	@Autowired
	private RoomStyleImageService roomStyleImageService;
	@Autowired
	private static String UPLOADED_FOLDER = "C:/java_images//";
	
	@RequestMapping(value = "/view", method = RequestMethod.GET )
	public String ListStyleRoom(@RequestParam("styleRoom") String styleRoom, Model model)
	{
		List<RoomStyleImage> roomStyleImages = roomStyleImageService.search(styleRoom);
		model.addAttribute("imageStyleRooms", roomStyleImages);
		return "image-style-room-view";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String ImageStyleRoom(Model model)
	{
		RoomStyleImage roomStyleImage = new RoomStyleImage();
		model.addAttribute("imageStyleRoom", roomStyleImage);
		model.addAttribute("mode", "imageStyleRooms");
		return "image-style-room-add";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String handleImage(@RequestParam("file") MultipartFile file, @ModelAttribute("imageStyle") RoomStyleImage imageStyle,BindingResult result ,Model model, RedirectAttributes redirectAttributes)
	{
		if(result.hasErrors())
		{
			return "image-style-room-add";
		}
		try
		{
			byte[] bytes = file.getBytes();
			Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);
			
			redirectAttributes.addFlashAttribute("message",
					"You successfully uploaded '" + file.getOriginalFilename() + "'");
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
		imageStyle.setImageStyle(file.getOriginalFilename());
		roomStyleImageService.createImage(imageStyle);
		return "redirect:/manager-list";
	}
}
