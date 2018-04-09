package com.kh.worknow.member.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

import org.mybatis.spring.SqlSessionTemplate;

@Repository("signupDao")
public class SignUpDaoImpl implements SignUpDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertMember(Member member) {
		
		return sqlSession.insert("Member.insertMember", member);
	}

	@Override
	public int insertPerInfo(Personal_Info pInfo) {
		
		return sqlSession.insert("Member.insertPerInfo", pInfo);
	}

}
