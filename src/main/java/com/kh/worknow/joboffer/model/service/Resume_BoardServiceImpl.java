package com.kh.worknow.joboffer.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.joboffer.model.dao.Resume_BoardDao;

@Service("Resume_BoardService")
public class Resume_BoardServiceImpl implements Resume_BoardService {
	
	@Autowired
	Resume_BoardDao resume_boardDao;
}
