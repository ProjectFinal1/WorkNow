package com.kh.worknow.member.controller;
 
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class MemberController {
	
;
	
	@RequestMapping(value = "signup.si", method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
	
		System.out.println("회원가입 접속");
		
		
		return "/member/signupView";
	}
	
	
}
