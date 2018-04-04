package com.kh.worknow.member.controller;
 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.worknow.member.model.service.SignUpService;

@Controller
public class MemberController {
	
	@Autowired
	private SignUpService signupservice;
	
	@RequestMapping(value = "signup.si", method = RequestMethod.POST)
	public String signup(HttpServletRequest request, HttpServletResponse response) {
	
		 String id =request.getParameter("member_id");
		 
		 System.out.println("testDB = " + signupservice.signUp());
		 
		 
		 
//		 String pass = request.getParameter(arg0)
		 System.out.println(id);
		System.out.println("회원가입 접속");
		//테스트
		
		return "/member/signupView";
	}
	
	
}
