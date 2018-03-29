package com.kh.worknow.main.model.service;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.kh.worknow.main.model.dao.SearchDao;

@Service("sService")
public class SearchService {
	
	@Autowired
	SearchDao sDao;

	public int dbtest() {
		return sDao.testtest();
	}
}
