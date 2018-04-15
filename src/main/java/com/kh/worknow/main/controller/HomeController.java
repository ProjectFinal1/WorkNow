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

		System.out.println("메인들어가기");

		return "Main";
	}


	//구직 조건 검색
	@SuppressWarnings("unchecked")
	@RequestMapping("search_job.ma")
	public void jboard_serach(HttpServletRequest request, HttpServletResponse response) throws IOException{
	   						
		String result_address1 = request.getParameter("result_address1");	// 주소선택 첫번째 select 값을 가져옴
		String result_address2 = request.getParameter("result_address2"); // 주소선택 두번째 select 값을 가져옴		
		
		String tob = request.getParameter("tob"); //직종
		if(tob.equals("무관")) {
			tob = "";
		}
		
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		return "/joboffer/jobofferView";
	}
	
	
	//구직 조건 검색
	@SuppressWarnings("unchecked")
	@RequestMapping("search_job.ma")
	public void jboard_serach(HttpServletRequest request, HttpServletResponse response) throws IOException{
	   						
		String result_address1 = request.getParameter("result_address1");	// 주소선택 첫번째 select 값을 가져옴
		String result_address2 = request.getParameter("result_address2"); // 주소선택 두번째 select 값을 가져옴		
		
		String tob = request.getParameter("tob"); //직종
		if(tob.equals("무관")) {
			tob = "";
		}
		
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		
		System.out.println("result_address1 = " + result_address1);
		System.out.println("result_address2 = " + result_address2);
		System.out.println("tob = " + tob);
		System.out.println("startDate = " + startDate);
		System.out.println("endDate = " + endDate);
		
		HashMap<String, String> jobMap = new HashMap<String, String>();
		jobMap.put("tob", tob);
		jobMap.put("startDate", startDate);
		jobMap.put("endDate", endDate);
		
		HashMap<String, String> jobMap2 = new HashMap<String, String>();
		jobMap2.put("result_address1", result_address1);
		jobMap2.put("result_address2", result_address2);

    
		//직종, 시작시간, 끝시간으로 구직검색
		ArrayList<Job_Board> jblist = jbService.search_job(jobMap);
		JSONArray jarr = new JSONArray();
		
		if(jblist.isEmpty()) {
			System.out.println("--------------결과값 없음---------------");
		}else {
			System.out.println("jbtest = " + jblist.get(0).getJOB_CONTENT());
			
			for(Job_Board jb : jblist) {
				JSONObject list = new JSONObject();		
				
				list.put("JOB_SUBJECT", jb.getJOB_SUBJECT());
				list.put("JOB_CONTENT", jb.getJOB_CONTENT());
				list.put("JOB_VALUE", jb.getJOB_VALUE());
				
				String start = new SimpleDateFormat("yyyy-MM-dd").format(jb.getJOB_STARTDAY());
				String end = new SimpleDateFormat("yyyy-MM-dd").format(jb.getJOB_ENDDAY());
				
				list.put("JOB_STARTDAY", start);	//알바 시작 날
				list.put("JOB_ENDDAY", end);		//알바 끝나는 날
				
				jobMap2.put("comId", jb.getJOB_ID());
				Company_View cvlist = jbService.search_job2(jobMap2);
				
				if(cvlist == null) {
					System.out.println("----------------------- 해당지역 없음 --------------------------");
				}else {
					System.out.println("cvTest = " + cvlist.getCOM_NAME());

					list.put("MEMBER_NAME", cvlist.getMEMBER_NAME());
					list.put("COM_ADDRESS", cvlist.getCOM_ADDRESS());
					list.put("COM_EMAIL", cvlist.getMEMBER_EMAIL());
					
					
					jarr.add(list);			
				}// if(cvlist==null) 끝
			}// for(Job_Board jb : jblist) 끝			
			
		}//if(jblist.isEmpty()) 끝
		
		System.out.println(jarr.toJSONString());
		//보내는 값을 UTF-8로 지정
		response.setContentType("application/json; charset=UTF-8");
		
		//생성한 객체를 PrintWriter에 담아 결과 전송
		PrintWriter out = response.getWriter();
		out.print(jarr.toJSONString());
		
		out.flush();
		out.close(); 
	}	
}




















