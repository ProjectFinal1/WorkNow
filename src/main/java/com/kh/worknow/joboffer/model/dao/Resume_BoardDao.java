package com.kh.worknow.joboffer.model.dao;

import java.util.ArrayList;

import com.kh.worknow.joboffer.model.vo.Resume_Board;

public interface Resume_BoardDao {

	public int getListCount();

	public ArrayList<Resume_Board> selectList(int currentPage, int limit);

	public int deleteReceive(String id);

	public ArrayList<Resume_Board> receiveList(int currentPage, int limit);

	public int getSearchListCount();
	
	
	
}
