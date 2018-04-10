package com.kh.worknow.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.member.model.dao.SignUpDao;
import com.kh.worknow.member.model.vo.Member;

@Service("memberlogin")
public class MemberLoginImpl implements MemberLogin {

	@Autowired
	private SignUpDao signupDao;
	
	@Autowired
	private Member member;
	
	@Override
	public Member loginMember(String id, String passwd) {
		
		return signupDao.selectMember(id, passwd);
	}

	@Override
	public int insertMember(Member m) {
	
		return 0;
	}

	@Override
	public int updateMember(Member m) {
		
		return 0;
	}

	@Override
	public int deleteMember(String id) {
		
		return 0;
	}

	@Override
	public int checkIdDup(String id) {
		
		return 0;
	}

}
