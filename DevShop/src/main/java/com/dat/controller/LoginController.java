package com.dat.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dat.dao.AccountDAO;
import com.dat.entity.Account;
import com.dat.entity.Product;
import com.dat.service.CookieService;
import com.dat.service.MailerService;
import com.dat.service.ParamService;
import com.dat.service.SessionService;
import com.dat.service.ShoppingCartService;

@Controller

public class LoginController {
	@Autowired
	ShoppingCartService cart;
	@Autowired
	CookieService cookieService;
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	@Autowired
	HttpServletRequest req;
	@Autowired
	AccountDAO dao;
	@Autowired
	MailerService mailer;

	// 2. khi người dùng gõ localhost:8080/account/login

	// Khởi tạo
	@GetMapping("/login")
	public String start(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count", cart.getProductID());
		model.addAttribute("total", cart.getAmount());
		return "login"; // 3. view trang login lên

	}

	// Đăng nhập
	@PostMapping("/login")
	public String login(Model model) {

		model.addAttribute("cart", cart);
		model.addAttribute("count", cart.getProductID());
		model.addAttribute("total", cart.getAmount());

		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		boolean remember = paramService.getBoolean("remember", false);

		Account account = dao.findById(username).orElse(null);

		if (account == null) {
			req.setAttribute("message", "Tài khoản này không tồn tại!");
			// return null;
		} else {
			if ((username.equalsIgnoreCase(account.getUsername()))
					&& (password.equalsIgnoreCase(account.getPassword()))) {

				sessionService.set("user", account);
				// 5. neu nguoi dung check vao remember
				if (remember) {
					// 6. tạo 2 cookie ten la user va pass ... sống 10 giờ
					cookieService.add("user", username, 10);
					cookieService.add("pass", password, 10);
				} else {
					// 7. ko check rememember thì xóa cookie user va pass
					cookieService.remove("user");
					cookieService.remove("pass");
				}

				if (account.isRole()) {
					return "redirect:/home";
				} else {
					return "redirect:/admin";
				}

			} else {
				req.setAttribute("message", "Sai tài khoản hoặc mật khẩu!");
			}
		}

		return "login"; // view len trang login
	}

	// Đăng xuất
	@GetMapping("/logout")
	public String logout(Model model) {
		sessionService.set("user", null);
		model.addAttribute("cart", cart);
		model.addAttribute("count", cart.getProductID());
		model.addAttribute("total", cart.getAmount());
		return "login"; // view len trang login
	}

	// doi mk
	@GetMapping("/changepassword")
	public String changepass(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count", cart.getProductID());
		model.addAttribute("total", cart.getAmount());
		////////////

		return "changepass"; // view len trang login
	}

	@PostMapping("/changepassword")
	public String changepassPost(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count", cart.getProductID());
		model.addAttribute("total", cart.getAmount());
		////////////
		String username = paramService.getString("username", "");
		String password = paramService.getString("password", "");
		String newPass = paramService.getString("newpw", "");
		String cfpw = paramService.getString("cfpw", "");

		Account account = dao.findById(username).orElse(null);

		// nếu mmk khớp
		if (account.getPassword().equals(password)) {
			// nếu mkmoi khop voi xac nhan mkmoi
			if (newPass.equals(cfpw)) {
				account.setPassword(newPass);
				dao.save(account);
				req.setAttribute("tb", "Change password succsess!");
			} else {
				req.setAttribute("tb", "Confirm password doesn't match!");
			}
		} else {
			req.setAttribute("tb", "Password invalid!");
		}
		return "changepass"; // view len trang login
	}

	// Quyeen mk
	@GetMapping("/forgotpassword")
	public String fogot(Model model) {
		model.addAttribute("cart", cart);
		model.addAttribute("count", cart.getProductID());
		model.addAttribute("total", cart.getAmount());
		return "forgotpass"; // view len trang login
	}

	// Quyeen mk
	@PostMapping("/forgotpassword")
	public String fogotPost(Model model) throws MessagingException {
		model.addAttribute("cart", cart);
		model.addAttribute("count", cart.getProductID());
		model.addAttribute("total", cart.getAmount());

		String username = paramService.getString("username", "");
		String email = paramService.getString("email", "");

		Account account = dao.findById(username).orElse(null);
		if (account == null) {
			req.setAttribute("fgpw", "Username invalid!");
		} else {
			if (account.getEmail().equals(email)) {
				mailer.send(email, "Dev shop re-issues the password", "Your password is: " + account.getPassword());
				req.setAttribute("fgpw", "Email has been sent. Please check your email again");

			} else {
				req.setAttribute("fgpw", "Email invalid!");
			}
		}

		return "forgotpass"; // view len trang login
	}

}
