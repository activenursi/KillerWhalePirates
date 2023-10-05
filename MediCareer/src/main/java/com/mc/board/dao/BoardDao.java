package com.mc.board.dao;

import java.util.List;

import com.mc.board.dto.BoardDto;

public interface BoardDao {

	public List<BoardDto> boardSelectList(int start, int end);

	public int boardSelectTotalCount();

	public int boardInsertOne(BoardDto boardDto);

	public int boardUpdateOne(BoardDto boardDto);

	public int boardDeleteOne(int no);

	public BoardDto boardSelectOne(int no);

	public List<BoardDto> communityBestList(String category);

	public List<BoardDto> communityNewList(String category, int start, int end);

	public int newListTotalCount(String category);

	public List<BoardDto> communityMyNewList(String category, int start, int end, int writerNo);

}
