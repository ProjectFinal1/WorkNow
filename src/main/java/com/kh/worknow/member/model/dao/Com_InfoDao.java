package com.kh.worknow.member.model.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.member.model.vo.Personal_Info;

import org.mybatis.spring.SqlSessionTemplate;

@Repository("CominfoDao")
public class Com_InfoDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	public int insertCominfo(Com_Info cominfo) {
		cominfo.setCOM_TYPE("none");
		return sqlSession.insert("ComInfo.insertCominfo", cominfo);
	}

	
	public int insertCominfo_Jboard(Com_Info cominfo,String jboardkey) {
		cominfo.setCOM_TYPE(jboardkey);
		return sqlSession.insert("ComInfo.insertCominfo", cominfo);
	}

}
