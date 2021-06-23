package com.dat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dat.dao.ProductDAO;
import com.dat.entity.Product;
import com.dat.service.ShoppingCartService;


@Controller
public class HomeController {
	// tiêm CategoryDAO vào 
		@Autowired
		ProductDAO dao; //1. làm việc với bảng 
		@Autowired
		ShoppingCartService cart;
		
		@RequestMapping("/home")
		public String index(Model model) {
			
			Product item = new Product();
			//model.addAttribute("item", item);
			//2. lấy ra tất cả các danh mục ...gọi hàm findAll()
			List<Product> items = dao.findAll();
			model.addAttribute("items", items);
			//return "category/index"; //3. view trang index lên
			model.addAttribute("cart", cart);
			model.addAttribute("count",cart.getProductID() );
			model.addAttribute("total",cart.getAmount());
			return "index"; //3. view trang index lên
		}	
}
