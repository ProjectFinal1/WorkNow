package com.kh.worknow.Rboard.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.worknow.Rboard.model.service.Resume_BoardService;
import com.kh.worknow.Rboard.model.vo.Personal_View;



@Controller
public class RboardController {

	@Autowired
	private Resume_BoardService rbService;
	
	//주소별로 알바 찾기
	@RequestMapping("search_address.rb")
	public void jboard_addrserach(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String address1 = request.getParameter("address1");	// 주소선택 첫번째 select 값을 가져옴
		String address2 = request.getParameter("address2"); // 주소선택 두번째 select 값을 가져옴
		System.out.println(address1 + "   " + address2);
		
		HashMap<String, String> addressMap = new HashMap<String, String>();
		addressMap.put("address1", address1);
		addressMap.put("address2", address2);
		
		ArrayList<Personal_View> pvlist = rbService.rboard_addrserach(addressMap);
		
		System.out.println("pvlist = " + pvlist.get(0).getMEMBER_ID());
		
		
					
	}
		
		
		
		
		
			
	
	
	
}
