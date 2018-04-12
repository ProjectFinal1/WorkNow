package com.kh.worknow.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.worknow.board.model.vo.Board;
import com.kh.worknow.board.model.vo.Reply;


public interface BoardDao {
	
	public void addPhoto(String fileName);	
	
	public ArrayList<Board> selectList(int currentPage, int limit);
	
	public Board selectBoard(int boardNum);	
	
	public int insertBoard(Board board) throws Exception;	
	
	public int updateBoard(Board board) throws Exception;

	public int deleteBoard(int boardNum) throws Exception;
	
	public int updateBoardNum(int boardNum) throws Exception;
	
	public int getReplyCount(int boardNum) throws Exception;
	
	public int addReadCount(int boardNum) throws Exception;
	
	public int getListCount() throws Exception;
	
	public ArrayList<Reply> selectReList(int boardNum) throws Exception;
	
	public int insertReply(Reply reply) throws Exception;

	public int deleteOneReply(Reply reply) throws Exception;
	
	public int deleteReply(int boardNum) throws Exception;

	public int updateReplyLevel(int replyLevel) throws Exception;
	
}
