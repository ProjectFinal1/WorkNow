package com.kh.worknow.joboffer.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.worknow.joboffer.model.vo.Resume_Board;
import com.kh.worknow.joboffer.model.vo.Resume_Request;

@Repository("Resume_BoardDao2")
public class Resume_BoardDaoImpl implements Resume_BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	
	@Override
	public int getListCount() {

		return sqlSession.selectOne("Resume.getListCount");
	}
	
	@Override
	public int getSearchListCount() {

		return sqlSession.selectOne("Resume.getSearchListCount");
	}
	

	@Override
	public ArrayList<Resume_Board> selectList(int currentPage, int limit) {
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList(sqlSession.selectList("Resume.selectList", null, rows));
	}
		
	@Override
	public ArrayList<Resume_Board> receiveList(int currentPage, int limit) {
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList(sqlSession.selectList("Resume.receiveList", null, rows));
	}

	@Override
	public int deleteReceive(String id) {
		System.out.println("deleteReceiv쓰는 Dao에서 넘겨받은 id 값 : " + id);
		return sqlSession.delete("Resume.deleteReceive",new Resume_Request("'" + id + "'"));
	}
	
	
}
