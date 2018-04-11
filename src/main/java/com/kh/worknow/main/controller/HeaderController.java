package com.kh.worknow.main.controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.worknow.main.model.service.SearchService;

@Controller
public class HeaderController {
	
	@Autowired
	private SearchService sService;
	
	@RequestMapping(value = "home.ma", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		System.out.println("로고를 통한 메인 접속");
				
		return "Main";
	}
	
	@RequestMapping(value = "login.lo", method = RequestMethod.GET)
	public String loginView(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {		
		
		HttpSession session = request.getSession(); 
		
		if(session.getAttribute("member") != null){
			PrintWriter out;
			try {
				response.setContentType("text/html; charset=UTF-8");			 
				out = response.getWriter();
				out.println("<script>alert('이미 로그인되어 있습니다.'); history.go(-1);</script>");
		        out.flush();
			} catch (IOException e) {					
				e.printStackTrace();
			}
          
		}		
		System.out.println("로그인 페이지");
		
		return "/member/loginView";
	}
	
	@RequestMapping(value = "jobofferView.jo", method = RequestMethod.GET)
	public String jobofferView(Locale locale, Model model) {
	
		System.out.println("구인 페이지");
		
		return "/joboffer/jobofferView";
	}
	
	@RequestMapping(value = "jobsearchView.jo", method = RequestMethod.GET)
	public String jobsearchView(Locale locale, Model model) {
	
		System.out.println("구직 페이지");
		
		return "/jobsearch/jobsearchView";
	}

	@RequestMapping(value = "blist.bl", method = RequestMethod.GET)
	public String communityView(Locale locale, Model model) {
	
		System.out.println("게시판 페이지");
		
		return "/community/communityView";
	}
	
	
	@RequestMapping(value = "servicecenter.se", method = RequestMethod.GET)
	public String servicecenterView(Locale locale, Model model) {
	
		System.out.println("고객센터 페이지");
		
		return "/servicecenter/servicecenterView";
	}
	
			
}
