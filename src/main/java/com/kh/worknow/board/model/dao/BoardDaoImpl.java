package com.kh.worknow.board.model.dao;


import com.kh.worknow.board.model.dao.BoardDao;
import com.kh.worknow.board.model.vo.Board;
import com.kh.worknow.board.model.vo.Reply;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("bDao")
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void addPhoto(String fileName) {
		
	}
	
	@Override
	public ArrayList<Board> selectList(int currentPage, int limit) {
		int offset = (currentPage - 1) * limit;
		RowBounds rows = new RowBounds(offset, limit);
		return new ArrayList(sqlSession.selectList("Board.selectList", null, rows));
	}

	@Override
	public Board selectBoard(int boardNum) {
		return sqlSession.selectOne("Board.selectOne", boardNum);
	}	
	
	
	@Override
	public int insertBoard(Board board) {
		return sqlSession.insert("Board.insertBoard", board);
	}
	
	@Override
	public int updateBoard(Board b) {
		return sqlSession.update("Board.updateBoard", b);
	}
	
	@Override
	public int deleteBoard(int boardNum) {
		return sqlSession.delete("Board.deleteBoard", boardNum);
	}

	@Override
	public int updateBoardNum(int boardNum) throws Exception {
		return sqlSession.update("Board.updateBoardNum", boardNum);
	}

	@Override
	public int getReplyCount(int boardNum) throws Exception {
		return sqlSession.selectOne("Board.getReplyCount", boardNum);
	}

	@Override
	public int addReadCount(int boardNum) {
		return sqlSession.update("Board.addReadCount", boardNum);
	}
	
	@Override
	public int getListCount() {
		return sqlSession.selectOne("Board.getListCount");
	}

	@Override
	public ArrayList<Reply> selectReList(int recurrentPage, int relimit) throws Exception {
		int offset = (recurrentPage - 1) * relimit;
		RowBounds rerows = new RowBounds(offset, relimit);
		return new ArrayList<Reply>(sqlSession.selectList("Board.selectReList", null, rerows));
	}

	@Override
	public int insertReply(Reply reply) {
		return sqlSession.insert("Board.insertReply", reply);
	}

	@Override
	public int updateBoardReply(Board b) {
		return sqlSession.update("Board.updateBoardReply", b);
	}

	@Override
	public int deleteReply(int boardNum) throws Exception {
		return sqlSession.delete("Board.deleteReply", boardNum);
	}

	@Override
	public void createReplyView(String createView) throws Exception {
		//create view REPLY_VIEW as select REPLY_NUM, RELPY_LEVEL, RELPY_NAME, RELPY_CONTENT, REPLY_DATE FROM FREE_BOARD_REPLY where REPLY_NUM = ?
		sqlSession.selectOne("Board.createReplyView", createView);
	}	
}
