package com.kh.worknow.Rboard.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.Rboard.model.dao.Resume_BoardDao;
import com.kh.worknow.Rboard.model.vo.Personal_View;


@Service("Resume_BoardService")
public class Resume_BoardServiceImpl implements Resume_BoardService {
	
	@Autowired
	private Resume_BoardDao rbDao;
	
	//주소로 구직 검색했을 시 아이디 가져오기		
	public ArrayList<Personal_View> rboard_addrserach(HashMap addressMap){
		return rbDao.rboard_addrserach(addressMap);
	}
}
