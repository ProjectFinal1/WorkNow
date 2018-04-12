package com.kh.worknow.board.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.worknow.board.model.service.BoardService;
import com.kh.worknow.board.model.vo.Board;
import com.kh.worknow.board.model.vo.Reply;

@Controller
public class BoardController {

	@Autowired
	private BoardService bService;

	@RequestMapping("fboard.bo")
	public ModelAndView boardList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page)
			throws Exception {
		// 페이지 값 처리용
		int currentPage = 1;
		// 한 페이지당 출력할 목록 갯수
		int limit = 10;

		// 전달된 페이지값 추출
		if (page != null)
			currentPage = page;

		// 전체 목록 갯수와 해당 페이지별 목록을 리턴
		int listCount = bService.getListCount();

		ArrayList<Board> list = bService.selectList(currentPage, limit);
		// HashMap<String, Object> map = new HashMap<>();

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

			mv.addObject("list", list).addObject("currentPage", currentPage).addObject("maxPage", maxPage)
					.addObject("startPage", startPage).addObject("endPage", endPage).addObject("listCount", listCount)
					.setViewName("board/boardListView");
		} else {
			mv.addObject("error", "게시글 전체 조회 실패");
			mv.setViewName("board/boardError");
		}
		System.out.println("자유게시판 접속");
		return mv; // board/boardListView.jsp로 이동
	}

	@RequestMapping("bdetail.do")
	public ModelAndView boardDetail(ModelAndView mv, @RequestParam("bnum") int bnum,
			@RequestParam(value = "page", required = false) Integer page) throws Exception {
		// 페이지 값 처리용
		int currentPage = 1;
		

		if (page != null)
			currentPage = page;
		
		//해당 게시글의 댓글리스트 불러오기
		ArrayList<Reply> reply = bService.selectReList(bnum);
		
		bService.addReadCount(bnum); // 해당 게시글의 조회수 1 증가 처리
		Board board = bService.selectBoard(bnum);

		if (board != null) {
			mv.addObject("reply", reply).addObject("board", board).addObject("currentPage", currentPage).setViewName("board/boardDetailView");
		} else {
			mv.addObject("error", "게시글 상세조회 실패!");
			mv.setViewName("board/boardError");
		}
		return mv;
	}

	@RequestMapping("binsertView.do")
	public String boardInsertView(Model model) {
		return "board/boardInsertForm";
	}

	@RequestMapping("binsert.do")
	public ModelAndView boardInsertMethod(HttpServletRequest request, ModelAndView mv, Board board) throws Exception {

		if (bService.insertBoard(board) > 0) {
			mv.setViewName("redirect:fboard.bo");

		} else {
			mv.addObject("error", "게시글 등록 실패!");
			mv.setViewName("board/boardError");
		}
		return mv;
	}

	@RequestMapping("bupview.do")
	public String boardUpdateView(Model model, @RequestParam("bnum") int boardNum, @RequestParam("page") Integer page) {

		model.addAttribute("board", bService.selectBoard(boardNum)).addAttribute("currentPage", page);

		return "board/boardUpdateForm";

	}

	@RequestMapping("bupdate.do")
	public ModelAndView boardUpdateMethod(ModelAndView mv, HttpServletRequest request, Board board) throws Exception {

		if (bService.updateBoard(board) > 0) {

		} else {
			mv.addObject("error", "게시 원글 수정 서비스 실패!");
			mv.setViewName("board/boardError");
		}
		return mv;
	}

	@RequestMapping("bdelete.do")
	public ModelAndView boardDelete(ModelAndView mv, HttpServletRequest request, @RequestParam("bnum") Integer boardNum)
			throws Exception {

		// Board b = bService.selectBoard(boardNum);
		// String root =
		// request.getSession().getServletContext().getRealPath("resources");
		// String savePath = root + "\\buploadFiles\\" + b.getBoardRenameFileName();

		int redel = 1;
		int relistCount = bService.getReplyCount(boardNum);
		if (relistCount > 0) {
			if (bService.deleteReply(boardNum) > 0) {
				redel = 1;
			} else
				redel = 0;
		}

		if (bService.deleteBoard(boardNum) > 0 && redel > 0) {
			bService.updateBoardNum(boardNum);
			mv.setViewName("redirect:fboard.bo");
			/*
			 * if (b.getBoardOriginalFileName() != null && b.getBoardRenameFileName() !=
			 * null) { new File(savePath).delete(); }
			 */

		} else {
			mv.addObject("error", "게시글 삭제 처리 실패!");
			mv.setViewName("board/boardError");
		}
		return mv;
	}

	@RequestMapping("breply.do")
	public ModelAndView insertReply(ModelAndView mv, Reply reply) throws Exception {

		int result = bService.insertReply(reply);


		if (result > 0) {
			//mv.setViewName("redirect:bdetail.do?bnum=" + bnum + "&page=" + page);
		} else {
			mv.addObject("error", "댓글 달기 실패!");
			mv.setViewName("board/boardError");
		}

		return mv;
	}

	@RequestMapping("brdelete.do")
	public ModelAndView deleteOneReplyMethod(ModelAndView mv, Reply replydel) throws Exception {
		int replyLevel = replydel.getReplyLevel();
		if (bService.deleteOneReply(replydel) > 0) {
			bService.updateReplyLevel(replyLevel);
			mv.setViewName("redirect:fboard.bo");

		} else {
			mv.addObject("error", "게시 답글 수정 서비스 실패!");
			mv.setViewName("board/boardError");
		}

		return mv;
	}

	@RequestMapping("iamport.do")
	public String btest() {
		return "iamport/iamport";
	}

}
