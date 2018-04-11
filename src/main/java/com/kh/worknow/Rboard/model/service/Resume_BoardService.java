package com.kh.worknow.Rboard.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.worknow.Rboard.model.vo.Personal_View;

public interface Resume_BoardService {

	//주소로 구직 검색했을 시 아이디 가져오기		
	public ArrayList<Personal_View> rboard_addrserach(HashMap address);
}
