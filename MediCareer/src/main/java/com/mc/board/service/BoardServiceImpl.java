package com.mc.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.board.controller.BoardController;
import com.mc.board.dao.BoardDao;
import com.mc.board.dto.BoardDto;
import com.mc.member.dto.MemberDto;

@Service
public class BoardServiceImpl implements BoardService {
	
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	public BoardDao boardDao;

	@Override
	public int boardSelectTotalCount() {
		// TODO Auto-generated method stub
		return boardDao.boardSelectTotalCount();
	}

	@Override
	public List<BoardDto> boardSelectList(int start, int end) {
		// TODO Auto-generated method stub
		return boardDao.boardSelectList(start, end);
	}

	@Override
	public void boardInsertOne(BoardDto boardDto, MultipartHttpServletRequest mulRequest) {
		boardDao.boardInsertOne(boardDto);
		
	}

	@Override
	public Map<String, Object> boardSelectOne(int no) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		
		BoardDto boardDto = boardDao.boardSelectOne(no);
		resultMap.put("boardDto", boardDto);
		return resultMap;
	}

	@Override
	public int boardUpdateOne(BoardDto boardDto, MultipartHttpServletRequest mulRequest, int fileIdx) {
		int resultNum = 0;
		
		resultNum = boardDao.boardUpdateOne(boardDto);
			
		return resultNum;
	}

	@Override
	public int boardDeleteOne(int no) {
		
		return boardDao.boardDeleteOne(no);
	}

	@Override
	public List<BoardDto> communityBestList(String category) {
		// TODO Auto-generated method stub
		return boardDao.communityBestList(category);
	}

	@Override
	public List<BoardDto> communityNewList(String category) {
		// TODO Auto-generated method stub
		return boardDao.communityNewList(category);
	}
}
