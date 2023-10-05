package com.mc.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mc.board.dto.BoardDto;

public interface BoardService {

	public int boardSelectTotalCount();

	public List<BoardDto> boardSelectList(int start, int end);

	public void boardInsertOne(BoardDto boardDto, MultipartHttpServletRequest mulRequest);

	public Map<String, Object> boardSelectOne(int no);

	public int boardUpdateOne(BoardDto boardDto, MultipartHttpServletRequest mulRequest, int fileIdx);

	public int boardDeleteOne(int no);

	public List<BoardDto> communityBestList(String category);

	public List<BoardDto> communityNewList(String category, int start, int end, int writerNo);

	public int newListTotalCount(String category);


}
