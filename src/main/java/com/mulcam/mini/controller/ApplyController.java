package com.mulcam.mini.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mulcam.mini.dto.Application;
import com.mulcam.mini.dto.Mail;
import com.mulcam.mini.service.ApplicationService;
import com.mulcam.mini.service.MailService;

@Controller
public class ApplyController {
	@Autowired
	ApplicationService applicationService;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	HttpSession session;
	
	@PostMapping("application")
	public ModelAndView insertApplication(@ModelAttribute Application app) {
		ModelAndView mav=new ModelAndView();
		Mail mail=new Mail();
		try {
			applicationService.insertApplication(app);
			mailService.applyMailSend(mail, app);
			mav.setViewName("redirect:/apply");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
