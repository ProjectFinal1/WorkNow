package com.kh.worknow.joboffer.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.joboffer.model.dao.Resume_BoardDao;
import com.kh.worknow.joboffer.model.vo.Resume_Board;

@Service("Resume_BoardService")
public class Resume_BoardServiceImpl implements Resume_BoardService {
	
	@Autowired
	Resume_BoardDao Resume_BoardDao;

	@Override
	public int getListCount() {
		return Resume_BoardDao.getListCount();
	}

	@Override
	public ArrayList<Resume_Board> selectList(int currentPage, int limit) {

		return Resume_BoardDao.selectList(currentPage, limit);
	}
}
