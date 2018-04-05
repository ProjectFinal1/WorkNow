package com.kh.worknow.joboffer.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.worknow.joboffer.model.vo.Resume_Board;

@Repository("Resume_BoardDao")
public class Resume_BoardDaoImpl implements Resume_BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int getListCount() {

		return sqlSession.selectOne("Resume.getListCount");
	}

	@Override
	public ArrayList<Resume_Board> selectList(int currentPage, int limit) {
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList(sqlSession.selectList("Resume.selectList", null, rows));
	}
	
	
}
