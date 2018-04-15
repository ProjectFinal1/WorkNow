package com.kh.worknow.member.model.service;

import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

public interface SignUpService {	

	public int insertMember0(Member member);
	
	public int insertMember1(Member member);
	
	public int insertPerInfo(Personal_Info pInfo);

	public int insertComInfo(Com_Info cInfo);
	
	
}
