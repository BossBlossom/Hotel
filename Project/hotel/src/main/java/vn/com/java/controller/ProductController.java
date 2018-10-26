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

import vn.com.java.entity.Product;
import vn.com.java.model.ProductModel;
import vn.com.java.service.ProductService;

@Controller
@RequestMapping("/product-list")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String list(Model model)
	{
		List<Product> products = productService.search(0);
		model.addAttribute("products", products);
		
		return "product-list";
	}
	
	@RequestMapping(value ="/create-product", method = RequestMethod.GET)
	public String createProduct(Model model)
	{
		ProductModel productModel = new ProductModel();
		model.addAttribute("products", productModel);
		
		return "manager-create-product";
	}
	
	@RequestMapping(value ="/create-product", method = RequestMethod.POST)
	public String handleCreateProduct(@ModelAttribute("product") ProductModel productModel, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			return "manager-create-product";
		}
		
		productService.createProduct(productModel);
		
		return "redirect:/product-list";
	}
	
	@RequestMapping(value ="/update-product", method = RequestMethod.GET)
	public String updateProduct(@RequestParam(name="id") int id, Model model)
	{
		Product product = productService.find(id);
		if(id == 0)
		{
			return "redirect:/product-list";
		}
		
		ProductModel productModel = new ProductModel();
		productModel.fromProduct(product);
		
		model.addAttribute("product", productModel);
		
		return "manager-update-product";
	}
	
	@RequestMapping(value ="/update-product", method = RequestMethod.POST)
	public String handleUpdateProduct(@RequestParam(name="id") int id, @ModelAttribute("product") ProductModel productModel, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
			return "manager-update-product";
		}
		
		productService.updateProduct(productModel);
		
		return "redirect:/product-list";
	}
	
	@RequestMapping(value ="/delete", method = RequestMethod.GET)
	public String deleteProduct(@RequestParam(name= "id") int id, @ModelAttribute("product") ProductModel productModel, BindingResult result, Model model)
	{
		productService.deleteProduct(productModel);
		
		return "redirect:/product-list";
	}

}
