package com.kh.worknow.joboffer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.ServletException;
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

@Controller
public class JobofferController {

	@Autowired
	private Resume_BoardService Resume_BoardService;
	
	@RequestMapping(value = "receive.re", method = RequestMethod.GET)
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

		ArrayList<Resume_Board> list = Resume_BoardService.receiveList(currentPage, limit);
		
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

//		if (list != null && list.size() > 0) {
			System.out.println("담겨 오는 값들 : " + list);
			mv.addObject("list", list).addObject("currentPage", currentPage).addObject("maxPage", maxPage)
					.addObject("startPage", startPage).addObject("endPage", endPage).addObject("listCount", listCount)
					.setViewName("joboffer/joboffer_receive");
//		} else {
//			mv.addObject("error", "게시글 전체 조회 실패");
//			mv.setViewName("board/boardError");
//		}
		return mv;
	}
	
	
	@RequestMapping(value="deleteReceive.de", method = RequestMethod.POST)
	public void deleteReceived(HttpServletRequest request
			,HttpServletResponse response
			,@RequestParam("id") String id) throws ServletException, IOException {
		
		System.out.println("넘어온 수락/거절 용 아이디 : " +id);
		int result = Resume_BoardService.deleteReceive(id);
		System.out.println(result);
		
//		PrintWriter out = response.getWriter();
		
		
		
		
	}

	
	@RequestMapping(value = "announcement.an", method = RequestMethod.GET)
	public String announcement(Locale locale, Model model) {
		System.out.println("공고 등록 페이지");

		return "/joboffer/joboffer_announcement";
	}
	
	
	
	// 검색버튼 누르면 member와 personal과 resume_board를 조인한 뷰를 불러옴
	@RequestMapping(value = "jobseekersearch.jo", method = RequestMethod.GET)
	public ModelAndView jobSeekerList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		// 페이지 값 처리용
					int currentPage = 1;
					// 한 페이지당 출력할 목록 갯수
					int limit = 3;

					// 전달된 페이지값 추출
					if (page != null)
						currentPage = page;
					
					// 전체 목록 갯수와 해당 페이지별 목록을 리턴
					int listCount = Resume_BoardService.getSearchListCount();
					
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

//					if (list != null && list.size() > 0) {
						System.out.println("담겨 오는 값들 : "+list);
						mv.addObject("list", list)
						.addObject("currentPage", currentPage)
						.addObject("maxPage", maxPage)
						.addObject("startPage", startPage)
						.addObject("endPage", endPage)
						.addObject("listCount", listCount)
						.setViewName("joboffer/jobofferView");
//					} else {
//						mv.addObject("error", "게시글 전체 조회 실패");
//						mv.setViewName("board/boardError");
//					}
		return mv;
	}
	

	}