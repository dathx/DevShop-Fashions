package com.dat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dat.dao.CategoryDAO;
import com.dat.entity.Category;

//import antlr.collections.List;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO dao; // làm việc với bảng Categories
	
	// hàm 1
	@RequestMapping("/admin-category")
	public String index(Model model) {
		Category item = new Category();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/category";
		//return "category/index2"; // giao dien dep
	}
	
	// hàm 2
	@RequestMapping("/category-edit-{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Category item = dao.findById(id).get();
		model.addAttribute("item", item);
		List<Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "admin/category";
	}

	// hàm 3
	@RequestMapping("/category-create")
	public String create(Category item) {
		dao.save(item);
		return "redirect:/admin-category";
	}

	// hàm 4
	@RequestMapping("/category-update")
	public String update(Category item) {
		dao.save(item);
		return "redirect:/category-edit-" + item.getId();
	}

	// hàm 5
	@RequestMapping("/category-delete-{id}")
	public String delete(@PathVariable("id") String id) {
		dao.deleteById(id);
		return "redirect:/admin-category";
	}
	
	
}

