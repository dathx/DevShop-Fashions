package com.dat.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dat.dao.CategoryDAO;
import com.dat.dao.ProductDAO;
import com.dat.entity.Product;
import com.dat.entity.Category;
import com.dat.entity.Product;
import com.dat.service.ParamService;
import com.dat.service.SessionService;
import com.dat.service.ShoppingCartService;

@Controller
public class ProductController {
	@Autowired
	ShoppingCartService cart; 
	@Autowired
	ProductDAO dao;
	@Autowired
	SessionService session;
	@Autowired
	ParamService param;
	@Autowired
	CategoryDAO categoryDAO;


	//sort
	@RequestMapping("/product")
	public String shop(Model model,
			@RequestParam("p") Optional<Integer> p) {
		//2. lấy ra tất cả các danh mục ...gọi hàm findAll()
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = dao.findAll(pageable);
		List<Category> categories = categoryDAO.findAll();
		model.addAttribute("cart", cart);
		model.addAttribute("count",cart.getProductID() );
		model.addAttribute("total",cart.getAmount());
		model.addAttribute("page", page);
		model.addAttribute("category", categories);
		return "product";
	}
	

	//page next-last-first
	@RequestMapping("/product-search")
	public String shopsearch(Model model, 
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		model.addAttribute("cart", cart);
		model.addAttribute("count",cart.getProductID() );
		model.addAttribute("total",cart.getAmount());
		
		String kwords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 6);
		Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable);
		model.addAttribute("page", page);
		return "product";
	}
	
	// product by category
	//page next-last-first
//	@RequestMapping("/product-{category}")
//	public String shopCategory(Model model, 
//			@RequestParam("categoryId") Optional<Category> ctgr,
//			@RequestParam("p") Optional<Integer> p) {
//		model.addAttribute("cart", cart);
//		model.addAttribute("count",cart.getProductID() );
//		model.addAttribute("total",cart.getAmount());
//		
//	
//		String ctgrID = param.getString("categoryId", "");
//		Category categorys = categoryDAO.findById(ctgrID).get();
//		Pageable pageable = PageRequest.of(p.orElse(0), 6);
//		Page<Product> page = (Page<Product>) dao.findByCategory(categorys, pageable);
//		model.addAttribute("page", page);
//		return "product";
//	}
	
	
	// hàm 2
	@RequestMapping("/product-view-{id}")
	public String view(Model model, @PathVariable("id") Integer id) {
		Product item = dao.findById(id).get();
		model.addAttribute("item", item);
		return "shop-details";
	}
	
	
	
	//sort
		@RequestMapping("/admin-list-product")
		public String index(Model model,
				@RequestParam("p") Optional<Integer> p) {
			Product item = new Product();
			model.addAttribute("item", item);
			//2. lấy ra tất cả các danh mục ...gọi hàm findAll()
			Pageable pageable = PageRequest.of(p.orElse(0), 6);
			Page<Product> page = dao.findAll(pageable);
			model.addAttribute("page", page);
			return "admin/listproduct";
		}
		

		//page next-last-first
		@RequestMapping("/product-search1")
		public String searchPD(Model model, 
				@RequestParam("keywords") Optional<String> kw,
				@RequestParam("p") Optional<Integer> p) {
			String kwords = kw.orElse(session.get("keywords", ""));
			session.set("keywords", kwords);
			Pageable pageable = PageRequest.of(p.orElse(0), 6);
			Page<Product> page = dao.findByKeywords("%"+kwords+"%", pageable);
			model.addAttribute("page", page);
			Product item = new Product();
			model.addAttribute("item", item);
			return "admin/listproduct";
		}
		
		
		
		// hàm 2
		@RequestMapping("/product-edit-{id}")
		public String edit(Model model, @PathVariable("id") Integer id) {
			Product item = dao.findById(id).get();
			model.addAttribute("item", item);
			List<Product> items = dao.findAll();
			model.addAttribute("items", items);
			return "admin/editproduct";
		}

		// hàm 3
		@RequestMapping("/product-create")
		public String create(Product item) {
//			item.setName(null);
//			String date = item.getCreateDate()+"";
//			param.getDate(date, "dd/MM/yyy");
			dao.save(item);
			return "redirect:/admin-list-product";
		}

		// hàm 4
		@RequestMapping("/product-update")
		public String update(Product item) {
			dao.save(item);
			return "redirect:/product-edit-" + item.getId();
		}

		// hàm 5
		@RequestMapping("/product-delete-{id}")
		public String delete(@PathVariable("id") Integer id) {
			dao.deleteById(id);
			return "redirect:/admin-list-product";
		}
		

		
	

	/*
	 * @RequestMapping("/product/sort") public String sort(Model model,
	 * 
	 * @RequestParam("field") Optional<String> field) { Sort sort =
	 * Sort.by(Direction.DESC, field.orElse("price")); model.addAttribute("field",
	 * field.orElse("price").toUpperCase()); List<Product> items =
	 * dao.findAll(sort); model.addAttribute("items", items); return
	 * "admin/product"; }
	 * 
	 * 
	 * 
	 * @RequestMapping("/product/page") public String paginate(Model model,
	 * 
	 * @RequestParam("p") Optional<Integer> p) { Pageable pageable =
	 * PageRequest.of(p.orElse(0), 5); Page<Product> page = dao.findAll(pageable);
	 * model.addAttribute("page", page); return "admin/product1"; //return
	 * "product/page2"; // giao dien dep }
	 * 
	 * 
	 * 
	 * //lab6.1
	 * 
	 * @RequestMapping("/product/search") public String search(Model model,
	 * 
	 * @RequestParam("min") Optional<Double> min,
	 * 
	 * @RequestParam("max") Optional<Double> max) { double minPrice =
	 * min.orElse(Double.MIN_VALUE); double maxPrice = max.orElse(Double.MAX_VALUE);
	 * List<Product> items = dao.findByPrice(minPrice, maxPrice);
	 * model.addAttribute("items", items); return "admin/product"; }
	 * 
	 * 
	 * 
	 * //lab6.2
	 * 
	 * 
	 * @RequestMapping("/product/search-and-page") public String searchAndPage(Model
	 * model,
	 * 
	 * @RequestParam("keywords") Optional<String> kw,
	 * 
	 * @RequestParam("p") Optional<Integer> p) { String kwords =
	 * kw.orElse(session.get("keywords", "")); session.set("keywords", kwords);
	 * Pageable pageable = PageRequest.of(p.orElse(0), 5); Page<Product> page =
	 * dao.findByKeywords("%"+kwords+"%", pageable); model.addAttribute("page",
	 * page); return "admin/product1"; }
	 */
}

