package com.dat.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dat.dao.AccountDAO;
import com.dat.entity.Account;
import com.dat.service.ParamService;


//import antlr.collections.List;

@Controller
public class AccountController {
	@Autowired
	ParamService paramService;
	@Autowired
	AccountDAO dao; 
	
	// hàm 1
	@RequestMapping("/admin-list-account")
	public String index(Model model) {
		Account item = new Account();
		model.addAttribute("item", item);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/listaccount";
	}
	
	// hàm 2
	@RequestMapping("/account-edit-{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Account item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/editaccount";
	}

	// hàm 3
	@RequestMapping("/account-create")
	public String create(@ModelAttribute("item") Account ac,BindingResult result ,Model model,@RequestParam("image") MultipartFile multipartFile) {		
		String filenameString= StringUtils.cleanPath(multipartFile.getOriginalFilename());
		 String uploadDrString="avatar";
		 ac.setImage(filenameString);
		 paramService.save(multipartFile, uploadDrString);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		dao.save(ac);
		return "redirect:/admin-list-account";
	}


	// hàm 4
	@RequestMapping("/account-update")
	public String update(@ModelAttribute("item") Account ac,BindingResult result ,Model model,@RequestParam("image") MultipartFile multipartFile) {	
		String filenameString= StringUtils.cleanPath(multipartFile.getOriginalFilename());
		 String uploadDrString="avatar";
		 ac.setImage(filenameString);
		 paramService.save(multipartFile, uploadDrString);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
	
		dao.save(ac);
		return "redirect:/account-edit-" + ac.getUsername();
	}

	// hàm 5
	@RequestMapping("/account-delete-{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/admin-list-account";
	}
	
	
}

