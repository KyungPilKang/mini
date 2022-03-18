package com.mulcam.mini.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mulcam.mini.dto.Question;
import com.mulcam.mini.service.MailService;
import com.mulcam.mini.service.QuestionService;

@Controller
public class UserController {
	@Autowired
	MailService mailService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	QuestionService questionService;

	@GetMapping("user_mypage")
	public ModelAndView userMypage() {
		ModelAndView mav=new ModelAndView("user_mypage");
		try {
			List<Question> question=questionService.allQuestionByUser((String)session.getAttribute("id"));
			mav.addObject("question", question);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
