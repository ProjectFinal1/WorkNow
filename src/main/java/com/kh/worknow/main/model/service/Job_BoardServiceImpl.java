package com.kh.worknow.main.model.service;

import java.util.ArrayList;


import org.json.simple.JSONObject;

import java.util.HashMap;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.main.model.dao.Job_BoardDao;

import com.kh.worknow.main.model.vo.Company_View;

import com.kh.worknow.main.model.vo.Job_Board;

@Service("Job_BoardService")
public class Job_BoardServiceImpl implements Job_BoardDao {

	@Autowired
	Job_BoardDao job_boardDao;
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert_matching(String Job_BoardKey, String resume_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update_matching(String Job_BoardKey, String resume_id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int boardNum) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<Job_Board> selectList(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Job_Board selectBoard(int boardNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(Job_Board b) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(Job_Board b) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	public Job_Board jboard_addrserach() {
		return job_boardDao.jboard_addrserach();
	}
	
	public Company_View getCompanyId(HashMap address) {
		return job_boardDao.getCompanyId(address);

	}

}
