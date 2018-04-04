package com.kh.worknow.member.model.dao;

import com.kh.worknow.member.model.vo.Member;
import com.kh.worknow.member.model.vo.Personal_Info;

public interface SignUpDao {
	
	public int insertMember(Member member);

	public int insertPerInfo(Personal_Info pInfo);
}
