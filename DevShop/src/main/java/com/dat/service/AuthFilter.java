package com.dat.service;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dat.entity.Account;


@RequestMapping({"/changepassword","/logout"})
public class AuthFilter implements HttpFilter {
	@Autowired
	SessionService session;
	
	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		String uri = req.getRequestURI();
		Account user = session.get("user");
		System.out.println(user);
		String error="";
		if (user==null) {//Chuaw dang nhap
			error = resp.encodeURL("Vui long dang nhap");
		}else if (!user.isRole()&&uri.contains("admin")) {//ko phai admin
			error=resp.encodeURL("Vui long dang nhap voi vai tro admin");
		}
		if (!error.isEmpty()) {//truy cap ko hop le
			req.getSession().setAttribute("security", uri);
			resp.sendRedirect("/login?error="+resp.encodeURL(error));
		}else {//Truy cap hop le
			chain.doFilter(req, resp);
		}
	}
}
