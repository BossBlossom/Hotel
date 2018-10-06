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

import vn.com.java.entity.Image;
import vn.com.java.service.ImageService;

@Controller
@RequestMapping("/image")
public class ImageController 
{
	@Autowired
	private ImageService imageService;
	@Autowired
	private static String UPLOADED_FOLDER = "C:/Users/Kitsune/git/Hotel/Project/hotel/src/main/webapp/resources/images_room//";
	
	@RequestMapping(value = "/image_add", method = RequestMethod.GET)
	public String list(@RequestParam(name="roomNo")int roomNo, Model model)
	{
		List<Image> images = imageService.findByRoom(roomNo);
		model.addAttribute("images", images);
		return "image-add";
	}
	
	@RequestMapping(value = "/image_update", method = RequestMethod.POST)
	public String handleImage(@RequestParam("file") MultipartFile file, @ModelAttribute("image") Image image,BindingResult result ,Model model, RedirectAttributes redirectAttributes)
	{
		if(result.hasErrors())
		{
			return "image-add";
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
		image.setImage(file.getOriginalFilename());
		imageService.createImage(image);
		return "redirect:/home";
	}
}
