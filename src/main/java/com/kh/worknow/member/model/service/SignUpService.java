package com.kh.worknow.member.model.service;

import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

public interface SignUpService {	

	public int insertMember(Member member);
	
	public int insertPerInfo(Personal_Info pInfo);
	
	
}
