package com.kh.worknow.main.controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.worknow.main.model.service.Job_BoardServiceImpl;
import com.kh.worknow.main.model.vo.Company_View;
import com.kh.worknow.main.model.vo.Job_Board;


@Controller
public class HomeController {
	
	@Autowired
	private Job_BoardServiceImpl jbService;
	
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
	
	@RequestMapping(value = "search_address.ma2", method = RequestMethod.GET)
	public void search_address(Locale locale, Model model) {
	
		System.out.println("주소 검색 실행");
		
		
	}
	
	@RequestMapping(value = "joboffer.of", method = RequestMethod.GET)
	public String joboffer(Locale locale, Model model) {
	
		System.out.println("오리지널");
		
		
		return "/joboffer/jobofferView";
	}
	
	
	@RequestMapping(value = "search_address.ma")
	public void outputJsonList(HttpServletRequest request, HttpServletResponse response) throws IOException{
	   
		
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		
		
		//주소로 검색했을 때 결과 가져오기
		Job_Board db = jbService.jboard_addrserach();
		
		//주소로 검색했을 때 그 회사 정보 가져오기
		Company_View cv = jbService.getCompanyId();
		System.out.println("CV = " + cv.getCOM_ADDRESS());
		
		System.out.println("address1 = " + address1 + ", address2 = " + address2);
	    System.out.println(db.getJOB_CONTENT());
	    System.out.println(db.getJOB_CURRENT_NUM());
	    System.out.println(db.getJOB_SUBJECT());
	    System.out.println(db.getJOB_DATE());
	   
		//JSONObject를 통해 결과로 전달할 객체를 생성
	    JSONObject obj = new JSONObject();
		obj.put("JOB_SUBJECT", db.getJOB_SUBJECT());
		obj.put("JOB_VALUE", db.getJOB_VALUE());
		obj.put("JOB_CONTENT", db.getJOB_CONTENT());
		obj.put("CURRENT_NUM", db.getJOB_CURRENT_NUM());
		
		// contentType : text/html ; char = UTF-8
		// --> application/json; charset=UTF-8
		response.setContentType("application/json; charset=UTF-8");
		
		//생성한 객체를 PrintWriter에 담아 결과 전송
		PrintWriter out = response.getWriter();
		out.print(obj.toJSONString()); 	// obj.toString(); --> Board 정보 : ㅁㄴㅇ:ㅁㄴㅇ:ㅁㄴㅇ
		/*	obj.toJSONString()
		  {
		  	boardNo : "test",
		  	writer : "blahblah",
		  	content : "qwerty"
		  }		  
		 */
		
		out.flush();
		out.close();
				
	   
	   
	}
		
}
