package com.mulcam.mini.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mulcam.mini.dto.Mail;
import com.mulcam.mini.dto.Question;
import com.mulcam.mini.service.MailService;
import com.mulcam.mini.service.QuestionService;

@Controller
public class QuestionController {
	@Autowired
	MailService mailService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	QuestionService questionService;
	
	@PostMapping("/question")
	public String question(@ModelAttribute Question que) {
		try {
			questionService.insertQuestion(que);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/";
	}
	
	@PostMapping("/question/mypage")
	public String questionMypage(@ModelAttribute Question que) {
		try {
			questionService.insertQuestion(que);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/user_mypage#qna2";
	}
	
	@PostMapping("updateQuestion")
	public String updateQuestion(@ModelAttribute Question que) {
		Mail mail=new Mail(); 
		try {
			mailService.qnaMailSend(mail, que);
			questionService.updateQuestion(que);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin_mypage#service";
	}
}
