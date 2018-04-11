package com.kh.worknow.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.worknow.board.model.dao.BoardDao;
import com.kh.worknow.board.model.vo.Board;
import com.kh.worknow.board.model.vo.Reply;

@Service("bService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDao bDao;

	@Override
	public void addPhoto(String fileName) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Board> selectList(int currentPage, int limit) {
		return bDao.selectList(currentPage, limit);
	}

	@Override
	public Board selectBoard(int boardNum) {
		return bDao.selectBoard(boardNum);
	}	

	@Override
	public int insertBoard(Board board) throws Exception {
		return bDao.insertBoard(board);
	}
	
	@Override
	public int updateBoard(Board board) throws Exception {
		return bDao.updateBoard(board);
	}
	
	@Override
	public int deleteBoard(int boardNum) throws Exception {
		return bDao.deleteBoard(boardNum);
	}

	@Override
	public int updateBoardNum(int boardNum) throws Exception {
		return bDao.updateBoardNum(boardNum);
	}

	@Override
	public int getReplyCount(int boardNum) throws Exception {
		return bDao.getReplyCount(boardNum);
	}
	
	@Override
	public void addReadCount(int boardNum) throws Exception {
		bDao.addReadCount(boardNum);
	}
	
	@Override
	public int getListCount() throws Exception {
		return bDao.getListCount();
	}

	@Override
	public ArrayList<Reply> selectReList(int recurrentPage, int relimit) throws Exception {
		return bDao.selectReList(recurrentPage, relimit);
	}	

	@Override
	public int insertReply(Reply reply) throws Exception {
		return bDao.insertReply(reply);
	}

	@Override
	public int updateBoardReply(Board board) throws Exception {
		return bDao.updateBoardReply(board);
	}

	@Override
	public int deleteReply(int boardNum) throws Exception {
		return bDao.deleteReply(boardNum);
	}

	@Override
	public void createReplyView(String createView) throws Exception {
		bDao.createReplyView(createView);		
	}	
}
