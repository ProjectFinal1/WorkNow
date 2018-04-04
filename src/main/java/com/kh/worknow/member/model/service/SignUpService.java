package com.kh.worknow.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.member.model.dao.SignUpDao;

@Service("signupservice")
public class SignUpService {
	
	@Autowired
	SignUpDao signupdao;	
	
	public int signUp() {		
		
		
		return signupdao.signUp();
	}
	
}
