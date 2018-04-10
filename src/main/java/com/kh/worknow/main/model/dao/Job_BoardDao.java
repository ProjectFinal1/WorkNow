package com.kh.worknow.main.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.worknow.board.model.vo.Board;
import com.kh.worknow.main.model.vo.Company_View;
import com.kh.worknow.main.model.vo.Job_Board;

public interface Job_BoardDao {
	
		//최대 글수 가져오기
		public int getListCount();
		
		// 갯수별로 출력하기		
		public ArrayList<Job_Board> selectList(int currentPage, int limit);
		
		//신규매칭 (구직게시판 게시물의 키와 이력서의 id필요)
		public int insert_matching(String Job_BoardKey ,String resume_id);
		
		//주소로 구직 검색했을 시 아이디 가져오기		
		public ArrayList<Company_View> getCompanyId(HashMap address);
		
		//주소로 구직 검색
		public Job_Board jboard_addrserach(String comId);	
				
		//type of business = tob 업종별 검색시 사용될 메소드
		public ArrayList<Job_Board> jboard_tobserach(String tob);
		
		//업종별로 검색시 회사 아이디로 정보 가져오기
		public Company_View getCompanyId(String tob);
		
		//시간으로 검색시 사용될 메소드
		public Job_Board jboard_timeserach();
		
		
		
		
		
}
