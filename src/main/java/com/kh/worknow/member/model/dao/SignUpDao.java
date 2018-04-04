package com.kh.worknow.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("signupdao")
public class SignUpDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int signUp() {
				
		return sqlSession.selectOne("Member.signup");
	}
	
}
