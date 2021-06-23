package com.dat.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dat.dao.AccountDAO;
import com.dat.entity.Account;
import com.dat.service.ParamService;
import com.dat.service.ShoppingCartService;

@Controller
public class RegisterController {
	@Autowired
	ShoppingCartService cart; 
	@Autowired
	AccountDAO dao; 
	@Autowired
	HttpServletRequest req;
	@Autowired
	ParamService paramService;

		@RequestMapping(value = "/register", method = RequestMethod.GET) 
		public String index(Model model) { 
			model.addAttribute("cart", cart);
			model.addAttribute("count",cart.getProductID() );
			model.addAttribute("total",cart.getAmount());
			//tạo 1 acc mới
		    model.addAttribute("acc", new Account()); 
		    return "register"; 
		}

	
	  @RequestMapping(value = "/register-create", method = RequestMethod.POST)
	    public String create(Model model, @Validated @ModelAttribute("acc") Account account, Errors errors) {
		  model.addAttribute("cart", cart);
			model.addAttribute("count",cart.getProductID() );
			model.addAttribute("total",cart.getAmount());
		  
		  //Lấy username bên form
			String username = paramService.getString("username", "");


			String pw = paramService.getString("password", "");
			String cfpw = paramService.getString("cfpw", "");
			if (!pw.equals(cfpw)) {
				req.setAttribute("msg", "Confirm password doesn't match!");
				  errors.addAllErrors(errors);
				  return "register";
			}
			
			
			//lấy tất cả các tài khoản
			List<Account> acco = dao.findAll();
			//vòng lặp nếu username đã tồn tại thì bắt đổi username khác
			for (int i = 0; i < acco.size(); i++) {
				if (acco.get(i).getUsername().equals(username)) {
					req.setAttribute("msg", "Please choose another username!");
					return "register";
			  }			  
			}
			//Nếu có lỗi form thì đăng kí thất bại
			if (errors.hasErrors()) {
		           req.setAttribute("msg", "Please enter the correct information on the form!");
		      }else {
		    	  //lưu tài khoản hợp lệ vào dtb, và thông báo
		        	dao.save(account);
					req.setAttribute("msg", "Register successfully!");
			  }
		  //trả về trang đăng kí
	        return "register";
	    }

}
