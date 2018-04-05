package com.kh.worknow.main.model.service;

import java.util.ArrayList;

import java.util.HashMap;

import com.kh.worknow.main.model.vo.Company_View;
import com.kh.worknow.main.model.vo.Job_Board;

public interface Job_BoardService {
	
	//최대 글수 가져오기
	public int getListCount();
	
	// 갯수별로 출력하기
	public ArrayList<Job_Board> selectList(int currentPage, int limit);
	
	//회사 정보 출력
	public Job_Board selectBoard(int boardNum);
	
	//구직게시판 등록
	public int insertBoard(Job_Board b);
	
	//신규매칭 (구직게시판 게시물의 키와 이력서의 id필요)
	public int insert_matching(String Job_BoardKey ,String resume_id);
	
	//매칭 업데이트 (취소, 삭제, 완료) (구직게시판 게시물의 키와 이력서의 id필요)
	public int update_matching(String Job_BoardKey,String resume_id);
	
	//구직게시판 수정
	public int updateBoard(Job_Board b);
	
	//구직게시판 삭제
	public int deleteBoard(int boardNum);
	
	//주소로 구직 검색

	public String jboard_addrserach();
	
	//주소로 검색시 회사 아이디로 정보 가져오기
	public Company_View getCompanyId(HashMap address);

}
