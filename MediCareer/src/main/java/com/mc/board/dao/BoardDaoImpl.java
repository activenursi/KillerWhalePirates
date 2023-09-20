package com.mc.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mc.board.dto.BoardDto;
import com.mc.member.dto.MemberDto;

@Repository
public class BoardDaoImpl implements BoardDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="com.mc.board.";

	@Override
	public List<BoardDto> boardSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		
		return sqlSession.selectList(namespace+"boardSelectList", map);
	}

	@Override
	public int boardSelectTotalCount() {
		// TODO Auto-generated method stub
		return (int)sqlSession.selectOne(namespace+"boardSelectTotalCount");
	}

	@Override
	public int boardInsertOne(BoardDto boardDto) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+"boardInsertOne", boardDto);
	}	

	@Override
	public int boardUpdateOne(BoardDto boardDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+"boardUpdateOne", boardDto);
	}

	@Override
	public int boardDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"boardDeleteOne", no);
	}

	@Override
	public BoardDto boardSelectOne(int no) {
		BoardDto boardDto = sqlSession.selectOne(namespace+"boardSelectOne", no);
		
		return boardDto;
	}

	@Override
	public List<BoardDto> communityBestList(String category) {
		
		if(category.equals("전체")) {
			return sqlSession.selectList(namespace+"communityBestAllList");
		}else {
			return sqlSession.selectList(namespace+"communityBestList", category);
		}
		
	}

	@Override
	public List<BoardDto> communityNewList(String category) {
		// TODO Auto-generated method stub
		if(category.equals("전체")) {
			return sqlSession.selectList(namespace+"communityNewAllList");	
		}else {
			return sqlSession.selectList(namespace+"communityNewList", category);
		}
		
	}
	
}
