package com.kh.worknow.offer.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository("cDao")
public class CashDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int selectCashNumber(String userid) {
		
		int num=0;
		num= sqlSession.selectOne("Cash.getCash",userid);
		
		return num;
	}
	
	
	
}
