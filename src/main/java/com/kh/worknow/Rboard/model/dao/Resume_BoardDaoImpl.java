package com.kh.worknow.Rboard.model.dao;

import java.util.ArrayList;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.worknow.Rboard.model.vo.Personal_View;

@Repository("Resume_BoardDao")
public class Resume_BoardDaoImpl implements Resume_BoardDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Personal_View> rboard_addrserach(HashMap addressMap) {
		System.out.println("해쉬 확인 = " + addressMap.get("address1"));
		return new ArrayList<Personal_View>(sqlSession.selectList("rboard.addserach", addressMap));
	}

}
