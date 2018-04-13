package com.kh.worknow.Rboard.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.worknow.Rboard.model.vo.Personal_View;
import com.kh.worknow.Rboard.model.vo.Resume_Board;

public interface Resume_BoardService {

	//주소로 구직 검색했을 시 아이디 가져오기		
	public ArrayList<Personal_View> pv_search(HashMap pvMap);
	
	//아이디로 Resume_board 정보 가져오기
	Resume_Board rb_search(HashMap pvMap2);
	
}
