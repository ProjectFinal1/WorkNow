package com.kh.worknow.main.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

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

	public Job_Board jboard_addrserach(String comId) {
		return sqlSession.selectOne("jboard.addserach", comId);
	}
	
	public ArrayList<Company_View> getCompanyId(HashMap address) {
		return new ArrayList<Company_View>(sqlSession.selectList("jboard.addr_getCompanyId", address));
	}
	
	//업종별로 검색시 회사 아이디로 정보 가져오기
	public ArrayList<Job_Board> jboard_tobsearch(String tob){
		return new ArrayList<Job_Board>(sqlSession.selectList("jboard.tobsearch", tob));
	}
	
	//업종별로 검색시 회사 아이디로 정보 가져오기
	public Company_View getCompanyId(String comId){
		return sqlSession.selectOne("jboard.tob_getCompanyId", comId);
	}
	
	//시간으로 구직 검색하기
	public ArrayList<Job_Board> jboard_timesearch(HashMap time) {
		return new ArrayList<Job_Board>(sqlSession.selectList("jboard.timesearch", time));
	};
	
}
