package com.kh.worknow.main.model.dao;

import java.util.ArrayList;

import java.util.HashMap;

import org.json.simple.JSONObject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.worknow.main.model.vo.Company_View;

import com.kh.worknow.main.model.vo.Job_Board;
import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.offer.model.vo.Cash_Info;


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
	public int insertBoard(Job_Board b,Com_Info c) {
		//넣기전에 게시물의 키를 아이디 + 아이디+ 현재 구인게시물의 수로 바꿔준다.
		b.setJOB_KEY(b.getJOB_ID()+((Integer)sqlSession.selectOne("Job_Board.selectcountJB",b.getJOB_ID())+1));
		System.out.println("b.jobkey= "+b.getJOB_KEY());
		int result1=0;
		int result2=0;
		int cashvalue=1000;
		cashvalue=cashvalue+(b.getJOB_LEVEL()*1000);
		int currentcash=sqlSession.selectOne("Cash.getCash",b.getJOB_ID());
		cashvalue=currentcash-cashvalue;
		Cash_Info cash=new Cash_Info(b.getJOB_ID(),cashvalue);
		
		//제이보드 ㄱ
		result1=sqlSession.insert("Job_Board.insertJBoard",b);
		//회사정보 ㄱ
		c.setCOM_TYPE(b.getJOB_KEY());
		result2=sqlSession.insert("ComInfo.insertCominfo",c);
		//캐쉬 까묵기
		
		
		sqlSession.update("Cash.updateCash",cash);
		
		result1+=result2;
		
		return result1;
		
	}

	@Override
	public int updateBoard(Job_Board b) {
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
	}
	
}
