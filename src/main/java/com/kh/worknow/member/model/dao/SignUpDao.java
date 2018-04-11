package com.kh.worknow.member.model.dao;

import com.kh.worknow.member.model.vo.Com_Info;
import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

public interface SignUpDao {
	
	public int insertMember(Member member);

	public int insertPerInfo(Personal_Info pInfo);

	public int insertComInfo(Com_Info cInfo);

	public Member selectMember(String id, String passwd);


	public int checkMember(String id, String pass);
	
}
