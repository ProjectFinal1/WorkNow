package com.kh.worknow.joboffer.model.service;

import java.util.ArrayList;

import com.kh.worknow.joboffer.model.vo.Resume_Board;

public interface Resume_BoardService {

	public int getListCount();

	public ArrayList<Resume_Board> selectList(int currentPage, int limit);

	
}
