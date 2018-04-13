package com.kh.worknow.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kh.worknow.member.model.dao.SignUpDao;



@Service("idcheck")
public class idCheckServlet {
	
	@Autowired
	private SignUpDao signupDao;

	public int dupId(String id) {
		
		System.out.println("idcheck 서비스단에서 받아온 id : " + id);

		return signupDao.dupId(id);
	}
	
}
