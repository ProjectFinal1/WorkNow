package com.kh.worknow.member.controller;
 
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.worknow.member.model.service.SignUpServiceImpl;
import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

@Controller
public class MemberController {
	
	@Autowired
	private SignUpServiceImpl signupService;	
	
	
	@RequestMapping(value = "signup.si", method = RequestMethod.POST)
	public ModelAndView signUpMethod(HttpServletRequest request, 
//			@RequestParam(value="file",required=false) MultipartFile file, 
			ModelAndView mv, Member member, Personal_Info pInfo) throws IOException {
		
		// 파일저장 해결 전 주석
		/*
		
		// 해당 컨테이너의 구동중인 웹 애플리케이션의 루트 경로 알아냄
		String root = request.getSession().getServletContext().getRealPath("resources");		
		
		System.out.println("파일이 저장될 곳 (savePath = ) : " + root + "\\memberProfiles");
		
		String savePath = root + "\\memberProfiles";
		
		// 파일 이름을 바꿔주는 작업 시작(저장되는 파일 중 겹치는 파일이 없도록 하기 위함)
		if (file != null && !file.isEmpty()) {
			if (!new File(savePath).exists()) {
				new File(savePath).mkdir();
				System.out.println("프로필 파일 저장을 위한 새로운 디렉토리가 생성, 경로 = " + savePath);
			}
		
		// 불러올 시간의 format 지정
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		// 업로드 된 파일의 이름을 저장		
		String profileFileName = file.getOriginalFilename();

		// 업로드 된 파일의 확장자와 동일한 새로운 파일명으로 지정
		// 가입하는 유저의 아이디를 따온 파일명이 가장 좋겠음
		// 일단 날짜로 저장
		String renameProFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ profileFileName.substring(profileFileName.lastIndexOf(".") + 1);		
		// 
		File savedFileName = new File(savePath + "\\" + renameProFileName);
		file.transferTo(savedFileName);
		
		// vo의 set 메서드를 통해 PER_PHOTO의 이름을 rename된 파일 이름으로 저장
		
		// ? 원본 파일의 이름을 저장해 둘 이유가 없는지 확인
		
		
		}
	*/

		
		// String id =request.getParameter("member_id");
		// System.out.println(id);
		// System.out.println("회원가입 접속");
		// 테스트
		 
		 if (signupService.insertMember(member) > 0) {
			 if(signupService.insertPerInfo(pInfo) > 0) {
			 // 처리 결과가 있으면 매핑된 login.lo를 통해 로그인창으로 이동
			 mv.setViewName("redirect:login.lo");
			 }
		 } else {
			 mv.addObject("error","회원 가입 실패");
			 mv.setViewName("error/signupError");			 
		 }
		 
		return mv;
	}
	
	
}
