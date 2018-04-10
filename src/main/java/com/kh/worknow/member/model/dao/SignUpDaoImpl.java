package com.kh.worknow.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

@Repository("signupDao")
public class SignUpDaoImpl implements SignUpDao {

	@Autowired
	private SqlSessionTemplate sqlSession;	
	
	@Override
	public Member selectMember(String id, String passwd) {
	
		return (Member)sqlSession.selectOne("Member.selectMember", new Member(id, passwd));
	}
	
	@Override
	public int insertMember(Member member) {
		
		return sqlSession.insert("Member.insertMember", member);
	}

	@Override
	public int insertPerInfo(Personal_Info pInfo) {
		
		return sqlSession.insert("Member.insertPerInfo", pInfo);
	}

	@Override
	public int insertComInfo(Com_Info cInfo) {
		
		return sqlSession.insert("Member.insertComInfo", cInfo);
	}

	

}
