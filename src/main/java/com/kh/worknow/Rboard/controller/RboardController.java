package com.kh.worknow.Rboard.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.worknow.Rboard.model.service.Resume_BoardService;
import com.kh.worknow.Rboard.model.vo.Personal_View;
import com.kh.worknow.Rboard.model.vo.Resume_Board;



@Controller
public class RboardController {

	@Autowired
	private Resume_BoardService rbService;
	
	// 구인 검색하기
	@SuppressWarnings("unchecked")
	@RequestMapping("search_address.rb")
	public void rboard_addrserach(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String address1 = request.getParameter("result_address1");	// 주소선택 첫번째 select 값을 가져옴
		String address2 = request.getParameter("result_address2"); // 주소선택 두번째 select 값을 가져옴		
		
		String sex = request.getParameter("sex"); // 성별
		String sex2 = "";	//성별 무관을 선택했을 경우
		if(sex.equals("무관")) {
			sex = "남";
			sex2 = "여";
		}else {
			sex2 = sex;
		}
		
		String search_age = request.getParameter("search_age");
		String search_age2 = request.getParameter("search_age2");
		int age1;
		int age2;
		
		if(search_age.equals("무관")) {
			age1 = 15;
			age2 = 71;
		}else {
			//나이 int로 형변환			
			search_age = search_age.replace("세", "");
			search_age = search_age.trim();
			
			search_age2 = search_age2.replace("세", "");
			search_age2 = search_age2.trim();
			
			age1 = Integer.parseInt(search_age); // 나이 시작
			age2 = Integer.parseInt(search_age2); // 나이 끝
		}
		
		
		
		String search_tob2 = request.getParameter("tob"); // 업종
		if(search_tob2.equals("무관")) { //업종을 무관으로 선택했을 때 
			search_tob2 = "";
		}
		
		String job_start2 = request.getParameter("job_start2"); // 시작날짜
		String job_end2 = request.getParameter("job_end2"); // 끝날짜
		
		System.out.println("주소1 = " + address1 + ", " + "주소2 = " + address2);
		System.out.println("성별1 = " + sex + ", " + "성별2 = " + sex2);
		System.out.println("나이1 = " + age1 + ", " + "나이2 = " + age2);
		System.out.println("시작날 = " + job_start2 + ", 끝나는날 = " + job_end2);
		
		HashMap pvMap = new HashMap();
		pvMap.put("address1", address1);
		pvMap.put("address2", address2);
		pvMap.put("sex", sex);
		pvMap.put("sex2", sex2);
		pvMap.put("age1", age1);
		pvMap.put("age2", age2);
		
		HashMap pvMap2 = new HashMap();
		pvMap2.put("search_tob2", search_tob2);
		pvMap2.put("job_start2", job_start2);
		pvMap2.put("job_end2", job_end2);
		
		//주소를 통해 personal_view 정보를 얻어온다.
		ArrayList<Personal_View> pvlist = rbService.pv_search(pvMap);
		
		JSONArray jarr = new JSONArray();
		
		if(pvlist.isEmpty()) {
			System.out.println("결과값이 없음");
			
		}else {
			System.out.println("size = " + pvlist.size());
			System.out.println("pvlist == " + pvlist.get(0).getMEMBER_NAME());
			
			
			
			for(Personal_View pv : pvlist) {
				JSONObject list = new JSONObject();		
				
				//주소를 통해 가져온 personal_view 정보를 json에 삽입한다
				list.put("MEMBER_NAME", pv.getMEMBER_NAME());
				list.put("MEMBER_PHONE", pv.getMEMBER_PHONE());
				list.put("MEMBER_EMAIL", pv.getMEMBER_EMAIL());
				list.put("PER_TALK", pv.getPER_TALK());
				list.put("PER_AGE", pv.getPER_AGE());
				list.put("PER_ADDRESS", pv.getPER_ADDRESS());
				list.put("PER_SEX", pv.getPER_SEX());
				list.put("MEMBER_ID", pv.getMEMBER_ID());
				
				pvMap2.put("comId", pv.getMEMBER_ID());
				System.out.println("업종 = " + search_tob2);
				System.out.println("test = " + pv.getMEMBER_ID());
				//아이디와 나머지 조건을 통해 Resume_board를 가져온다
				Resume_Board rb = rbService.rb_search(pvMap2);
				
				
				if(rb == null) {
					System.out.println("직종에서 탈락");
				}else {
					System.out.println("content = " + rb.getRESUME_CONTENT());
					
					String startday = new SimpleDateFormat("yyyy-MM-dd").format(rb.getRESUME_STARTDAY());
					String endday = new SimpleDateFormat("yyyy-MM-dd").format(rb.getRESUME_ENDDAY());
					System.out.println("time = " + new SimpleDateFormat("HHmm").format(rb.getRESUME_STARTTIME()));
					System.out.println("time = " + new SimpleDateFormat("HHmm").format(rb.getRESUME_ENDTIME()));
					System.out.println(startday + "   " + endday);
					
					list.put("RESUME_STARTDAY", startday);	//시작 날
					list.put("RESUME_ENDDAY", endday);		//끝나는 날
					list.put("RESUME_CONTENT", rb.getRESUME_CONTENT());
					
					jarr.add(list);	
				}
			}//for(Personal_View pv : pvlist) 끝
			
			
			
		}//pvlist.isEmpty() 끝
		
		System.out.println("size = " + jarr.size());
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
