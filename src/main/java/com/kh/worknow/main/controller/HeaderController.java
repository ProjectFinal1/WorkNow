package com.kh.worknow.main.controller;
 
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.worknow.joboffer.model.service.Resume_BoardService;
import com.kh.worknow.joboffer.model.vo.Resume_Board;
import com.kh.worknow.main.model.service.SearchService;

@Controller
public class HeaderController {
	
	@Autowired
	private SearchService sService;
	
	@RequestMapping(value = "home.ma", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		System.out.println("로고를 통한 메인 접속");
				
		return "Main";
	}
	
	@RequestMapping(value = "login.lo", method = RequestMethod.GET)
	public String loginView(Locale locale, Model model) {
	
		System.out.println("로그인 페이지");
		
		return "/member/loginView";
	}
	
	
	//구인페이지
	@Autowired
	private Resume_BoardService Resume_BoardService;
	
	@RequestMapping(value = "jobofferView.jo", method = RequestMethod.GET)
	public ModelAndView receiveList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		// 페이지 값 처리용
					int currentPage = 1;
					// 한 페이지당 출력할 목록 갯수
					int limit = 3;

					// 전달된 페이지값 추출
					if (page != null)
						currentPage = page;
					
					// 전체 목록 갯수와 해당 페이지별 목록을 리턴
					int listCount = Resume_BoardService.getListCount();
					
					ArrayList<Resume_Board> list = Resume_BoardService.selectList(currentPage, limit);
					
					// 총 페이지수 계산 : 목록이 최소 1개일 때 1page로 처리하기
					// 위해 0.9 더함
					int maxPage = (int) ((double) listCount / limit + 0.9);
					// 현재 페이지에 보여줄 시작 페이지수
					// (1, 11, 21, .......)
					// 현재 페이지가 13page 이면 시작페이지는 11page 가 되어야 함
					int startPage = (((int) ((double) currentPage / limit + 0.9)) - 1) * limit + 1;
					// 만약, 목록 아래에 보여질 페이지 갯수가 10개이면
					// 끝페이지수는 20페이지가 되어야 함
					int endPage = startPage + limit - 1;
					if (maxPage < endPage)
						endPage = maxPage;

					if (list != null && list.size() > 0) {
						System.out.println("담겨 오는 값들 : "+list);
						mv.addObject("list", list)
						.addObject("currentPage", currentPage)
						.addObject("maxPage", maxPage)
						.addObject("startPage", startPage)
						.addObject("endPage", endPage)
						.addObject("listCount", listCount)
						.setViewName("joboffer/jobofferView");
					} else {
						mv.addObject("error", "게시글 전체 조회 실패");
						mv.setViewName("board/boardError");
					}
		return mv;
	}
	
	@RequestMapping(value = "jobsearchView.jo", method = RequestMethod.GET)
	public String jobsearchView(Locale locale, Model model) {
	
		System.out.println("구직 페이지");
		
		return "/jobsearch/jobsearchView";
	}

	@RequestMapping(value = "blist.bl", method = RequestMethod.GET)
	public String communityView(Locale locale, Model model) {
	
		System.out.println("게시판 페이지");
		
		return "/community/communityView";
	}
	
	
	@RequestMapping(value = "servicecenter.se", method = RequestMethod.GET)
	public String servicecenterView(Locale locale, Model model) {
	
		System.out.println("고객센터 페이지");
		
		return "/servicecenter/servicecenterView";
	}
	
			
}
