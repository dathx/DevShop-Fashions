package com.dat.controller;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dat.bean.MailInfo;
import com.dat.service.MailerService;

@Controller
public class MailerController {
	@Autowired
	MailerService mailer;



	@RequestMapping("/mail")
	public String demo3(Model model) {
		// 1. mail người nhận
		MailInfo mailinfo = new MailInfo();
		model.addAttribute("mailinfo", mailinfo);
		System.out.println(mailinfo);
		return "admin/mail";
	}
	
	//@ResponseBody
	@RequestMapping("/mail/send")
	public String send(Model model, MailInfo mailinfo) throws MessagingException {
		// 1. mail người nhận
		mailer.send(mailinfo.getTo(), mailinfo.getSubject(), mailinfo.getBody());
		model.addAttribute("mail", mailinfo);
		System.out.println(mailinfo);
		return "admin/sendmail";
		
	}
	

}
