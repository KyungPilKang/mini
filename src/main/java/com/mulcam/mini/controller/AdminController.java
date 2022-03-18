package com.mulcam.mini.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mulcam.mini.dto.Application;
import com.mulcam.mini.dto.Mail;
import com.mulcam.mini.dto.Question;
import com.mulcam.mini.service.ApplicationService;
import com.mulcam.mini.service.MailService;
import com.mulcam.mini.service.QuestionService;

@Controller
public class AdminController {
	@Autowired
	ApplicationService applicationService;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	QuestionService questionService;
	
	@GetMapping("/admin_mypage")
	public ModelAndView adminMypage() {
		ModelAndView mav=new ModelAndView("admin_mypage");
		try {
			List<Application> applies=applicationService.allApplication();
			List<Question> question=questionService.allQuestion();
			mav.addObject("question", question);
			mav.addObject("applies", applies);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@PostMapping("docUpdate")
	public String docUpdate(@RequestParam("no")String no) {
		try {
			applicationService.docUpdate(no);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin_mypage#apply";
	}
	
	@PostMapping("confirmUpdate")
	public String confirmUpdate(@RequestParam("no")String no) {
		Mail mail=new Mail();
		try {
			applicationService.confirmUpdate(no);
			mailService.applyConfirmSendMail(mail, no);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin_mypage#apply";
	}
}
