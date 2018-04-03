package com.kh.worknow.member.controller;
 
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.worknow.main.model.service.SearchService;

@Controller
public class MemberController {
	
	@Autowired
	private SearchService sService;
	
	@RequestMapping(value = "signup.si", method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
	
		System.out.println("회원가입 접속");
		
		
		return "/member/signupView";
	}
	
	
}
