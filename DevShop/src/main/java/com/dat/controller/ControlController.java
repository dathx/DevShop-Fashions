package com.dat.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dat.service.ShoppingCartService;

@Controller
public class ControlController {
	@Autowired
	ShoppingCartService cart; 
	@RequestMapping("/about")
	public String about(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count",cart.getProductID() );
		model.addAttribute("total",cart.getAmount());
		return "about";
	}	
	@RequestMapping("/blog")
	public String blog(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count",cart.getProductID() );
		model.addAttribute("total",cart.getAmount());
		return "blog";
	}	
	@RequestMapping("/contact")
	public String contact(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count",cart.getProductID() );
		model.addAttribute("total",cart.getAmount());
		return "contact";
	}	
	@RequestMapping("/faq")
	public String faq(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count",cart.getProductID() );
		model.addAttribute("total",cart.getAmount());
		return "faq";
	}
	@RequestMapping("/service")
	public String service(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count",cart.getProductID() );
		model.addAttribute("total",cart.getAmount());
		return "service";
	}

}
