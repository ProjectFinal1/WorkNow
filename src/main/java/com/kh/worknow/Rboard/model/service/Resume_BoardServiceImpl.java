package com.kh.worknow.Rboard.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.Rboard.model.dao.Resume_BoardDao;
import com.kh.worknow.Rboard.model.vo.Personal_View;
import com.kh.worknow.Rboard.model.vo.Resume_Board;


@Service("Resume_BoardService")
public class Resume_BoardServiceImpl implements Resume_BoardService {
	
	@Autowired
	private Resume_BoardDao rbDao;
	
	//주소로 구직 검색했을 시 아이디 가져오기		
	public ArrayList<Personal_View> pv_serach(HashMap pvMap){
		return new ArrayList<Personal_View>(rbDao.pv_serach(pvMap));
	}

	@Override
	public Resume_Board Id_GetResume(String comId) {
		return rbDao.Id_GetResume(comId);
	}
	
	
}
