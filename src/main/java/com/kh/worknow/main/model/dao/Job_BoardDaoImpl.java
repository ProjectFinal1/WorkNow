package com.kh.worknow.main.model.dao;

import java.util.ArrayList;

<<<<<<< HEAD
import java.util.HashMap;

import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.worknow.main.model.vo.Company_View;

import com.kh.worknow.main.model.vo.Job_Board;

@Repository("Job_BoardDao")
public class Job_BoardDaoImpl implements Job_BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public ArrayList<Job_Board> selectList(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
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
		return sqlSession.selectOne("jboard.addserach");
	}
	
	public Company_View getCompanyId(HashMap address) {
		return sqlSession.selectOne("jboard.getCompanyId", address);
	}

=======
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.worknow.main.model.vo.Job_Board;

@Repository("Job_BoardDao")
public class Job_BoardDaoImpl implements Job_BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public ArrayList<Job_Board> selectList(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
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

	public Job_Board jboard_addserach() {
		return sqlSession.selectOne("jboard.addserach");
	}
>>>>>>> refs/heads/yh_final
}
