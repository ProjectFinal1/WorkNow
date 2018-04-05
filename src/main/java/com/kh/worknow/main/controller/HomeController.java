package com.kh.worknow.main.controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

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
	   
						
		String address1 = request.getParameter("address1");	// 주소선택 첫번째 select 값을 가져옴
		String address2 = request.getParameter("address2"); // 주소선택 두번째 select 값을 가져옴
		
		
		HashMap addressMap = new HashMap();
		addressMap.put("address1", "address1");
		addressMap.put("address2", "address2");
		
		
		//주소로 검색했을 때 그 주소에 해당하는 회사 정보 가져오기
		Company_View cv = jbService.getCompanyId(addressMap);
		String comId = cv.getMEMBER_ID(); // view 데이터를 가져오기 위해 검색한 회사의 member_id를 가져옴
		
		//member_id로 구직정보 가져오기
		Job_Board db = jbService.jboard_addrserach();


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
		

		String startday = new SimpleDateFormat("yyyy-MM-dd").format(db.getJOB_STARTDAY());
		String endday = new SimpleDateFormat("yyyy-MM-dd").format(db.getJOB_ENDDAY());
		
		obj.put("COM_ADDRESS", cv.getCOM_ADDRESS());	//회사 주소
		obj.put("startday", startday);	//알바 시작 날
		obj.put("endday", endday);		//알바 끝나는 날
		
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
