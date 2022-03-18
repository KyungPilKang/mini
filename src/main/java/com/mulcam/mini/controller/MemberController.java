package com.mulcam.mini.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mulcam.mini.dto.Mail;
import com.mulcam.mini.dto.Member;
import com.mulcam.mini.service.MailService;
import com.mulcam.mini.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	HttpSession session;
	
	@PostMapping("join")
	public ModelAndView join(@ModelAttribute Member mem) {
		ModelAndView mav=new ModelAndView();
		Mail mail=new Mail();
		try {
			memberService.makeMember(mem);
			if(mem.getType().equals("normal")) {
				mailService.joinMailSend(mail, mem);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("redirect:/");
		return mav;
	}
	
	@PostMapping("join2")
	public ModelAndView join2(@ModelAttribute Member mem) {
		ModelAndView mav=new ModelAndView();
		Mail mail=new Mail();
		try {
			memberService.makeMember(mem);
			mail.setAddress(mem.getEmail());
			if(mem.getType().equals("normal")) {
				mailService.joinMailSend(mail, mem);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("redirect:/apply");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ResponseEntity<?> login(@RequestBody Member mem) {
		Member temp=new Member();
		Map<String, String> map=new HashMap<String, String>();
		try {
			temp=memberService.accessMember(mem.getId(), mem.getPassword());
		} catch(Exception e) {
			return new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		if(temp.getType().equals("normal")) {
			session.setAttribute("id", temp.getId());
			session.setAttribute("type", temp.getType());
			map.put("type", temp.getType());
			map.put("id", temp.getId());
			return new ResponseEntity<Map<String,String>>(map, HttpStatus.OK);
		} else {
			session.setAttribute("id", temp.getId());
			session.setAttribute("type", temp.getType());
			map.put("type", temp.getType());
			map.put("id", temp.getId());
			return new ResponseEntity<Map<String,String>>(map, HttpStatus.OK);
		}
	}
	
	@ResponseBody
	@RequestMapping(value="login_apply", method=RequestMethod.POST)
	public ResponseEntity<?> login_apply(@RequestBody Member mem) {
		Member temp=new Member();
		Map<String, String> map=new HashMap<String, String>();
		try {
			temp=memberService.accessMember(mem.getId(), mem.getPassword());
		} catch(Exception e) {
			return new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		if(temp.getType().equals("normal")) {
			session.setAttribute("id", temp.getId());
			session.setAttribute("type", temp.getType());
			map.put("type", temp.getType());
			map.put("id", temp.getId());
			return new ResponseEntity<Map<String,String>>(map, HttpStatus.OK);
		} else {
			session.setAttribute("id", temp.getId());
			session.setAttribute("type", temp.getType());
			map.put("type", temp.getType());
			map.put("id", temp.getId());
			return new ResponseEntity<Map<String,String>>(map, HttpStatus.OK);
		}
	}
	
	@GetMapping("logout")
	public String logout() {
		session.removeAttribute("id");
		session.removeAttribute("type");
		return "redirect:/";
	}
	
	@GetMapping("logout_apply")
	public String logout_apply() {
		session.removeAttribute("id");
		session.removeAttribute("type");
		return "redirect:/apply";
	}
	
	@ResponseBody
	@RequestMapping(value="idoverlap", method=RequestMethod.POST)
	public String idOverlap(@RequestParam(value="id")String id) {
		String result=null;
		try {
			if(!memberService.memOverlap(id)) {
				result="false";
			} else {
				result="true";
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="emailoverlap", method=RequestMethod.POST)
	public String emailOverlap(@RequestParam(value="email")String email) {
		String result=null;
		try {
			if(!memberService.memOverlapByEmail(email)) {
				result="false";
			} else {
				result="true";
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
