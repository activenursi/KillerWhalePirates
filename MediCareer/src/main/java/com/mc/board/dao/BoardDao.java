package com.mc.board.dao;

import java.util.List;

import com.mc.board.dto.BoardDto;

public interface BoardDao {

	public List<BoardDto> boardSelectList(int start, int end);

	public int boardSelectTotalCount();

	public int boardInsertOne(BoardDto boardDto);

	public int boardUpdateOne(BoardDto boardDto);

	public int boardDeleteOne(int no);

}
