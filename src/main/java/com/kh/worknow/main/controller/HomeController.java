package com.kh.worknow.main.controller;
 
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	

		System.out.println("메인들어가기");

		return "Main";
	}
	
	@RequestMapping(value = "home.ma", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
	
		System.out.println("오리지널");
		
		
		return "home";
	}
	
	
	@RequestMapping(value = "search_adress.ma", method = RequestMethod.GET)
	public String search_adress(Locale locale, Model model) {
	
		System.out.println("주소 검색 실행");
		
		
		return "home";
	}
	
	@RequestMapping(value = "joboffer.of", method = RequestMethod.GET)
	public String joboffer(Locale locale, Model model) {
	
		System.out.println("오리지널");
		
		
		return "/joboffer/jobofferView";
	}
	
	
}
