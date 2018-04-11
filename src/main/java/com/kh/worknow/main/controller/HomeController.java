package com.kh.worknow.main.controller;
 

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.worknow.main.model.service.Job_BoardService;
import com.kh.worknow.main.model.vo.Company_View;
import com.kh.worknow.main.model.vo.Job_Board;


@Controller
public class HomeController {
	
	@Autowired
	private Job_BoardService jbService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)

	public String home(Locale locale, Model model) {	

		System.out.println("메인 접속");

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
	
	//주소별로 알바 찾기
	@SuppressWarnings("unchecked")
	@RequestMapping("search_address.ma")
	public void jboard_addrserach(HttpServletRequest request, HttpServletResponse response) throws IOException{
    
		String address1 = request.getParameter("address1");	// 주소선택 첫번째 select 값을 가져옴
		String address2 = request.getParameter("address2"); // 주소선택 두번째 select 값을 가져옴
    
  
    System.out.println(address1 + "  " + address2);
		
		
		HashMap<String, String> addressMap = new HashMap<String, String>();
		addressMap.put("address1", address1);
		addressMap.put("address2", address2);
		
		
		//주소로 검색했을 때 그 주소에 해당하는 회사 정보 Arraylist로 가져오기
		ArrayList<Company_View> cvlist = jbService.getCompanyId(addressMap);
		
		JSONArray jarr = new JSONArray();
		String comId = ""; // view 데이터를 가져오기 위해 검색한 회사의 member_id 값을 담을 변수
		
		for(Company_View cv : cvlist) {
			JSONObject list = new JSONObject();		
			
			
			list.put("COM_ADDRESS", cv.getCOM_ADDRESS());
			list.put("COM_EMAIL", cv.getMEMBER_EMAIL());
			
			comId = cv.getMEMBER_ID();
			Job_Board db = jbService.jboard_addrserach(comId);			
			
			list.put("JOB_SUBJECT", db.getJOB_SUBJECT());
			list.put("JOB_CONTENT", db.getJOB_CONTENT());
			list.put("JOB_VALUE", db.getJOB_VALUE());
			
			String startday = new SimpleDateFormat("yyyy-MM-dd").format(db.getJOB_STARTDAY());
			String endday = new SimpleDateFormat("yyyy-MM-dd").format(db.getJOB_ENDDAY());
			
			list.put("JOB_STARTDAY", startday);	//알바 시작 날
			list.put("JOB_ENDDAY", endday);		//알바 끝나는 날
			
			jarr.add(list);			
		}
		
		System.out.println(jarr.toJSONString());
		

		response.setContentType("application/json; charset=UTF-8");
		
		//생성한 객체를 PrintWriter에 담아 결과 전송
		PrintWriter out = response.getWriter();
		out.print(jarr.toJSONString());
		
		out.flush();
		out.close();
	}
	
	//직종별로 알바 찾기
	@SuppressWarnings("unchecked")
	@RequestMapping("search_tob.ma")
	public void jboard_tobserach(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String tob = request.getParameter("tob");	// 주소선택 첫번째 select 값을 가져옴
		System.out.println("tob = " + tob);
		
		//업종별로 검색했을 때 그 주소에 해당하는 회사 정보 Arraylist로 가져오기
		ArrayList<Job_Board> tolist = jbService.jboard_tobserach(tob);
		
		JSONArray jarr = new JSONArray();
		String comId = ""; // job_board 데이터를 가져오기 위해 검색한 회사의 job_id 값을 담을 변수
		for(Job_Board to : tolist) {
			JSONObject list = new JSONObject();		
			
			list.put("JOB_SUBJECT", to.getJOB_SUBJECT());
			list.put("JOB_CONTENT", to.getJOB_CONTENT());
			list.put("JOB_VALUE", to.getJOB_VALUE());
			
			String startday = new SimpleDateFormat("yyyy-MM-dd").format(to.getJOB_STARTDAY());
			String endday = new SimpleDateFormat("yyyy-MM-dd").format(to.getJOB_ENDDAY());
			
			list.put("JOB_STARTDAY", startday);	//알바 시작 날
			list.put("JOB_ENDDAY", endday);		//알바 끝나는 날
			
			System.out.println(to.getJOB_SUBJECT());
			
			comId = to.getJOB_ID();
			System.out.println("comID = " + comId);
			Company_View db = jbService.getCompanyId(comId);	
			
			list.put("COM_ADDRESS", db.getCOM_ADDRESS());
			list.put("COM_EMAIL", db.getMEMBER_EMAIL());
			
			jarr.add(list);			
		}
		
		//보내는 값을 UTF-8로 지정
		response.setContentType("application/json; charset=UTF-8");
				
		//생성한 객체를 PrintWriter에 담아 결과 전송
		PrintWriter out = response.getWriter();
		out.print(jarr.toJSONString());
				
		out.flush();
		out.close();		
	}
	
		
}




















