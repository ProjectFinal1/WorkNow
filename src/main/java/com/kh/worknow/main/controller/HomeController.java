package com.kh.worknow.main.controller;
 
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
public class HomeController {
	
	@Autowired
	private SearchService sService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	

		System.out.println("메인들어가기");

		return "Main";
	}
	

	
	@RequestMapping(value = "jobofferView.jo", method = RequestMethod.GET)
	public String jobofferView(Locale locale, Model model) {
	
		System.out.println("구인 페이지");
		
		
		return "/joboffer/jobofferView";
	}
	
	@RequestMapping(value = "search_adress.ma2", method = RequestMethod.GET)
	public void search_adress(Locale locale, Model model) {
	
		System.out.println("주소 검색 실행");
		
		
	}
	
	@RequestMapping(value = "joboffer.of", method = RequestMethod.GET)
	public String joboffer(Locale locale, Model model) {
	
		System.out.println("오리지널");
		
		
		return "/joboffer/jobofferView";
	}
	
	
	@RequestMapping(value = "search_adress.ma")
	public void outputJsonList(HttpServletRequest request, HttpServletResponse response) {
	   
		
		String adress1 = request.getParameter("adress1");
		String adress2 = request.getParameter("adress2");
		
		int db = sService.dbtest();
		
		
	   System.out.println("adress1 = " + adress1 + ", adress2 = " + adress2);
	   System.out.println("db 테스트 : " + db );
	}
		
}
