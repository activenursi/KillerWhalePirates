package com.mc.board.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.board.dao.Cs_BoardDao;
import com.mc.board.dto.BoardDto;
import com.mc.board.dto.Cs_BoardDto;

@Service
public class Cs_BoardServiceImpl implements Cs_BoardService {
	
	private static final Logger log = LoggerFactory.getLogger(Cs_BoardServiceImpl.class);
	
	@Autowired
	public Cs_BoardDao cs_boardDao;

	@Override
	public int cs_boardSelectTotalCount() {
		// TODO Auto-generated method stub
		return cs_boardDao.cs_boardSelectTotalCount();
	}

	@Override
	public List<Cs_BoardDto> cs_boardSelectList(int start, int end) {
		// TODO Auto-generated method stub
		return cs_boardDao.cs_boardSelectList(start, end);
	}

	@Override
	public void cs_boardInsertOne(Cs_BoardDto cs_boardDto, MultipartHttpServletRequest mulRequest) {
		cs_boardDao.cs_boardInsertOne(cs_boardDto);
		
	}

	@Override
	public Map<String, Object> cs_boardSelectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int cs_boardUpdateOne(Cs_BoardDto cs_boardDto, MultipartHttpServletRequest mulRequest, int fileIdx) {
		int resultNum = 0;
		
		resultNum = cs_boardDao.cs_boardUpdateOne(cs_boardDto);
			
		return resultNum;
	}

	@Override
	public int cs_boardDeleteOne(int no) {
		
		return cs_boardDao.cs_boardDeleteOne(no);
	}
}
