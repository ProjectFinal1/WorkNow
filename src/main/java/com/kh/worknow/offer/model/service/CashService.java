package com.kh.worknow.offer.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.offer.model.dao.CashDao;

@Service("cService")
public class CashService {
	
	@Autowired
	CashDao cDao;

	public int getCashService(String userid) {
		return cDao.selectCashNumber(userid);
	}
}
