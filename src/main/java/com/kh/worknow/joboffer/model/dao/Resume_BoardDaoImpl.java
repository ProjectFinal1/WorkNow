package com.kh.worknow.joboffer.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("Resume_BoardDao")
public class Resume_BoardDaoImpl implements Resume_BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
