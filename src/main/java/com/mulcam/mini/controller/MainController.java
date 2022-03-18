package com.mulcam.mini.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.mulcam.mini.dto.Member;
import com.mulcam.mini.service.MemberService;

@Controller
public class MainController {
	@Autowired
	HttpSession session;
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	
	@GetMapping("/user")
	public String user() {
		return "user";
	}
	
	@GetMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@GetMapping("/apply")
	public String apply() {
		Member mem=new Member();
		try {
			if(session.getAttribute("id")!=null) {
				mem=memberService.queryMember((String)session.getAttribute("id"));
				session.setAttribute("mem", mem);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return "apply";
	}

}
