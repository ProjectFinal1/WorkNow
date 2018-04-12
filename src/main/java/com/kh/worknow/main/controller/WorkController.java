package com.kh.worknow.main.controller;
 
import java.io.IOException;
import java.io.PrintWriter;
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
import com.kh.worknow.offer.model.service.CashService;

@Controller
public class WorkController {
	
	@Autowired
	private SearchService sService;
	@Autowired
	private CashService cService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		System.out.println("메인 접속");
		
		
		return "Main";
	}
	
	@RequestMapping(value = "home.ma", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
	
		System.out.println("오리지널");
		
		
		return "home";
	}
	
	@RequestMapping(value = "joboffer.ma", method = RequestMethod.GET)
	public String job_offer(Locale locale, Model model) {
	
		System.out.println("구인 메인페이지");
		
		return "offer/jobofferView";
	}
	
	@RequestMapping(value = "storeoffer.ma", method = RequestMethod.GET)
	public String store_offer(Locale locale, Model model) {
	
		System.out.println("구직 메인페이지");
		
		return "offer/StoreOfferView";
	}
	
	@RequestMapping(value = "search_adress.ma2", method = RequestMethod.GET)
	public void search_adress(Locale locale, Model model) {
	
		System.out.println("주소 검색 실행");
		
		
	}
	
	
	@RequestMapping(value = "search_adress.ma")
	public void outputJsonList(HttpServletRequest request, HttpServletResponse response) {
	   
		
		String adress1 = request.getParameter("adress1");
		String adress2 = request.getParameter("adress2");
		
		int db = sService.dbtest();
		
		
	   System.out.println("adress1 = " + adress1 + ", adress2 = " + adress2);
	   System.out.println("db 테스트 : " + db );
	}
	
	@RequestMapping(value = "cash_refresh.ma")
	public void outputCash(HttpServletRequest request, HttpServletResponse response) {
	   response.setContentType("text/html; charset=utf-8");
		
		String id = request.getParameter("id");
		System.out.println("id = " + id );
		
		int db = cService.getCashService(id);
		
	   System.out.println("캐쉬수치 : " + db );
	   
	   
	   //ajax로 데이터전송을 위해  printwirter를 만들고 리스폰스의 writer를 넣어준다.
	   PrintWriter out = null;
	   try {
		out = response.getWriter();
		out.append(""+db); //데이터를 넣어준다.
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   out.flush(); //데이터를 보낸다
	   out.close(); //닫기
	}
}
