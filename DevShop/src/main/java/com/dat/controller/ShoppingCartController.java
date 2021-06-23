package com.dat.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dat.bean.Item;
import com.dat.dao.AccountDAO;
import com.dat.dao.OrderDAO;
import com.dat.dao.OrderDetailDAO;
import com.dat.dao.ProductDAO;
import com.dat.entity.Account;
import com.dat.entity.Order;
import com.dat.entity.OrderDetail;
import com.dat.entity.Product;
import com.dat.service.ParamService;
import com.dat.service.SessionService;
import com.dat.service.ShoppingCartService;

@Controller
public class ShoppingCartController {
	@Autowired
	ShoppingCartService cart; // 1. tiêm Spring Bean đã viết ở bài trước
	@Autowired
	SessionService session;
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	OrderDAO orderDao;
	@Autowired
	OrderDetailDAO orderDetailDao;
	@Autowired
	ParamService paramService;
	@Autowired
	HttpServletRequest req;

	// 2. xem giỏ hàng
	@RequestMapping("/cart-view")
	public String view(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count", cart.getProductID());
		model.addAttribute("total", cart.getAmount());
		return "cart"; // 3. view lên trang giỏ hảng
	}

	///////////////////////////////////

	@RequestMapping("/cart/add/{id}")
	public String add(@PathVariable("id") Integer id) {

		cart.add(id);
		return "redirect:/cart-view"; // hiển thị giỏ hàng
	}

	@RequestMapping("/cart/remove/{id}")
	public String remove(@PathVariable("id") Integer id) {
		cart.remove(id);
		return "redirect:/cart-view";
	}

	@RequestMapping("/cart/update/{id}")
	public String update(@PathVariable("id") Integer id, @RequestParam(value = "qty") Integer qty) {
		cart.update(id, qty);
		return "redirect:/cart-view";
	}

	@RequestMapping("/cart/clear")
	public String clear() {
		cart.clear();
		return "redirect:/cart-view";
	}

	@RequestMapping("/checkout")
	public String checkout() {

		if (cart.getCount() <= 0) {
			return "redirect:/product";
		}
		// lấy username đăng nhập

		Account account = null;
		String username = paramService.getString("username", null);
		String address = paramService.getString("address", "");
		// nếu username này khớp với tk trong dtb
		if (accountDAO.findById(username).isPresent()) {
			// lấy acc đầu
			account = accountDAO.findById(username).get();
			Order order = new Order();
			order.setAccount(account);
			order.setAddress(address);
			order.setCreateDate(new Date());
			// tạo ra list chứa OrderDetail
			List<OrderDetail> orderDetails = new ArrayList<>();
			// duyệt tất cả sp trong giỏ
			for (Item pd : cart.getItems()) {
				OrderDetail od = new OrderDetail();
				od.setOrder(order);
				productDAO.findById(pd.getId()).ifPresent(p -> {
					od.setProduct(p);
				});
				od.setPrice(pd.getPrice());
				od.setQuantity(pd.getQty());
				orderDetails.add(od);
			}

			order.setOrderDetails(orderDetails);
			orderDao.save(order);// lưu order vào dtb

			for (OrderDetail dt : orderDetails) {// cho vòng lặp add các orderdetail vo dtb
				orderDetailDao.save(dt);
			}
			cart.clear();// xóa hết sp
		} else {
			return "redirect:/login";
		}

		return "redirect:/cart-view";
	}

}
