package com.mc.board.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mc.board.dto.BoardDto;
import com.mc.board.dto.Cs_BoardDto;

@Repository
public class Cs_BoardDaoImpl implements Cs_BoardDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	String namespace="com.mc.board.";

	@Override
	public List<Cs_BoardDto> cs_boardSelectList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		
		return sqlSession.selectList(namespace+"cs_boardSelectList", map);
	}

	@Override
	public int cs_boardSelectTotalCount() {
		// TODO Auto-generated method stub
		return (int)sqlSession.selectOne(namespace+"cs_boardSelectTotalCount");
	}

	@Override
	public int cs_boardInsertOne(Cs_BoardDto cs_boardDto) {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+"cs_boardInsertOne", cs_boardDto);
	}	

	@Override
	public int cs_boardUpdateOne(Cs_BoardDto cs_boardDto) {
		// TODO Auto-generated method stub
		return sqlSession.update(namespace+"boardUpdateOne", cs_boardDto);
	}

	@Override
	public int cs_boardDeleteOne(int no) {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+"cs_boardDeleteOne", no);
	}
	
	@Override
	public Cs_BoardDto cs_boardSelectOne(int no) {
		Cs_BoardDto cs_boardDto = sqlSession.selectOne(namespace+"cs_boardSelectOne", no);
		
		return cs_boardDto;
	}
	
}
