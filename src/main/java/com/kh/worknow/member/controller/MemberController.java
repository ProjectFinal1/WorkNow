package com.kh.worknow.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.worknow.member.model.service.SignUpServiceImpl;
import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

@Controller
public class MemberController {
	
	@Autowired
	private SignUpServiceImpl signupService;	

	// 로그인 체크
	@RequestMapping(value="loginCheck.lo", method=RequestMethod.POST)
	public void loginCheck(Member member, @RequestParam("id") String id, @RequestParam("pass") String pass, HttpServletResponse response) throws IOException {	        
        PrintWriter out = response.getWriter();		
		System.out.println("id : " + id + ", pass :" + pass);      
        
        int checkmem = signupService.checkMember(id, pass);
        System.out.println("checkmem : " + checkmem);
        
        if(checkmem > 0) {        	
        	out.print("loginsuccess");
        } else {
        	System.out.println("로그인 실패 : 아이디 혹은 비번 불일치");
        	out.print("loginfail");
        }
        out.flush();
        out.close();
	}
  
	// 로그인 구현	
	@RequestMapping(value="memberLogin.me")
	public ModelAndView memberLogin(HttpSession session, ModelAndView mv, HttpServletRequest request) {
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		System.out.println("id = " + id + ", pass = " + pass);
		
		session.setAttribute("member", signupService.loginMember(id,pass));
        
		System.out.println("로그인 성공");        
		mv.setViewName("redirect:home.ma");
		return mv;        
	}
	
	@RequestMapping(value="logout.lo", method=RequestMethod.GET)
	public ModelAndView memberLogout(HttpSession session, ModelAndView mv) {
		
		if(session.getAttribute("member") != null){
			session.invalidate();
		}
		mv.setViewName("redirect:home.ma");
		
		return mv;
	}
	
	@RequestMapping(value="persignup.pe", method = RequestMethod.POST)
	public ModelAndView perSignUpMethod(HttpServletRequest request, 
			@RequestParam(value="perPhoto",required=false) MultipartFile file, 
			ModelAndView mv, Member member, Personal_Info pInfo) throws IOException {		
		// 해당 컨테이너의 구동중인 웹 애플리케이션의 루트 경로 알아냄
		String root = request.getSession().getServletContext().getRealPath("resources");		
		
		System.out.println("파일이 저장될 곳 (savePath = ) : " + root + "\\memberProfiles");
		
		String savePath = root + "\\memberProfiles";
				
		System.out.println("넘어온 파일 명 : " + file);
		
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
		System.out.println("파일이름 확인 : " + profileFileName);

		// 업로드 된 파일의 확장자와 동일한 새로운 파일명으로 지정
		// 가입하는 유저의 아이디를 따온 파일명이 가장 좋겠음
		// 일단 날짜로 저장
		profileFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ profileFileName.substring(profileFileName.lastIndexOf(".") + 1);		
		
		System.out.println("바뀐 파일이름 확인 : " + profileFileName);
		
		File savedFileName = new File(savePath + "\\" + profileFileName);
		file.transferTo(savedFileName);
		
		pInfo.setPerPhoto(profileFileName);
		}					 
		 if (signupService.insertMember(member) > 0) {
			 if(signupService.insertPerInfo(pInfo) > 0) {
			 // 처리 결과가 있으면 매핑된 login.lo를 통해 로그인창으로 이동		
				 System.out.println("개인회원가입 성공");
			 mv.setViewName("redirect:login.lo");
			 } 
		 } else {
			 mv.addObject("error","회원 가입 실패");
			 mv.setViewName("error/signupError");			 
		 }
		 
		return mv;
	}	
	
	@RequestMapping(value="comsignup.co", method = RequestMethod.POST)
	public ModelAndView signUpMethod(HttpServletRequest request,			 
			ModelAndView mv, Member member, Com_Info cInfo) throws IOException {		
	
		 if (signupService.insertMember(member) > 0) {
			 if (signupService.insertComInfo(cInfo)>0) {
				 System.out.println("기업회원가입 성공");
			 mv.setViewName("redirect:login.lo");
			 }
		 } else {
			 mv.addObject("error","회원 가입 실패");
			 mv.setViewName("error/signupError");			 
		 }
		 
		return mv;
	}	
	
	

}
