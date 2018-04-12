package com.kh.worknow.Rboard.model.dao;

import java.util.ArrayList;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.worknow.Rboard.model.vo.Personal_View;
import com.kh.worknow.Rboard.model.vo.Resume_Board;

@Repository("Resume_BoardDao")
public class Resume_BoardDaoImpl implements Resume_BoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Personal_View> pv_serach(HashMap pvMap) {
		return new ArrayList<Personal_View>(sqlSession.selectList("rboard.pv_serach", pvMap));
		
	}

	@Override
	public Resume_Board Id_GetResume(String comId) {
		return sqlSession.selectOne("rboard.selID_rboard", comId);
	}
}
